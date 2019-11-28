unit untRequest;

interface

uses
  System.Classes;

type
  TRequest = class
  public
    function PostSync(pJson: TStringStream; pUrl: string): string;
  end;

implementation

uses
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  System.SysUtils;

{ TRequest }

function TRequest.PostSync(pJson: TStringStream; pUrl: string): string;
var
  retorno: string;
  HTTP: TIdHTTP;
  IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
begin
  try
    HTTP := TIdHTTP.Create(nil);
    try
      HTTP.Request.ContentType := 'application/json';
      //Abre SSL
      IdSSLIOHandlerSocketOpenSSL1 := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      HTTP.IOHandler := IdSSLIOHandlerSocketOpenSSL1;
      //Avisa o uso de UTF-8
      HTTP.Request.ContentEncoding := 'UTF-8';
      //Faz o envio por POST do json para a url
      retorno := HTTP.Post(pUrl, pJson);
    finally
      HTTP.Free();
    end;
  except
    on E: EIdHTTPProtocolException do
      retorno := e.ErrorMessage;
    on E: Exception do
      retorno := E.message;
  end;

  //Devolve o json de retorno da API
  Result := retorno;
end;

end.


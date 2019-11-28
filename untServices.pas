unit untServices;

interface

type
  TServices = class
    function PostContato(pJson: string; pToken: string): string;
  end;

implementation

uses
  untRequest, System.Classes, System.SysUtils;

const
  URL_BASE = 'https://app.nectarcrm.com.br/crm/api/1/';

{ TServices }

function TServices.PostContato(pJson: string; pToken: string): string;
var
  Request: TRequest;
begin
  Request := TRequest.Create;
  try
    Result := Request.PostSync(TStringStream.Create(UTF8Encode(pJson)), URL_BASE + 'contatos/?api_token=' + pToken);
  finally
    FreeAndNil(Request);
  end;
end;

end.


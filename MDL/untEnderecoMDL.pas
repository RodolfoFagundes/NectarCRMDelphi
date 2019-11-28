unit untEnderecoMDL;

interface

uses
  System.Generics.Collections;

type
  TEnderecoMDL = class
  private
    FLogradouro: string;
    FBairro: string;
    FPrincipal: Boolean;
    FCep: string;
    FNumero: string;
    FMunicipio: string;
    FComplemento: string;
    FTipo: Integer;
    FPais: string;
    FEstado: string;
    procedure SetBairro(const Value: string);
    procedure SetCep(const Value: string);
    procedure SetComplemento(const Value: string);
    procedure SetEstado(const Value: string);
    procedure SetLogradouro(const Value: string);
    procedure SetMunicipio(const Value: string);
    procedure SetNumero(const Value: string);
    procedure SetPais(const Value: string);
    procedure SetPrincipal(const Value: Boolean);
    procedure SetTipo(const Value: Integer);
  public
    property Bairro: string read FBairro write SetBairro;
    property Cep: string read FCep write SetCep;
    property Complemento: string read FComplemento write SetComplemento;
    property Estado: string read FEstado write SetEstado;
    property Logradouro: string read FLogradouro write SetLogradouro;
    property Municipio: string read FMunicipio write SetMunicipio;
    property Numero: string read FNumero write SetNumero;
    property Pais: string read FPais write SetPais;
    property Principal: Boolean read FPrincipal write SetPrincipal;
    property Tipo: Integer read FTipo write SetTipo;
  end;

implementation

{ TEnderecoMDL }

procedure TEnderecoMDL.SetBairro(const Value: string);
begin
  FBairro := Value;
end;

procedure TEnderecoMDL.SetCep(const Value: string);
begin
  FCep := Value;
end;

procedure TEnderecoMDL.SetComplemento(const Value: string);
begin
  FComplemento := Value;
end;

procedure TEnderecoMDL.SetEstado(const Value: string);
begin
  FEstado := Value;
end;

procedure TEnderecoMDL.SetLogradouro(const Value: string);
begin
  FLogradouro := Value;
end;

procedure TEnderecoMDL.SetMunicipio(const Value: string);
begin
  FMunicipio := Value;
end;

procedure TEnderecoMDL.SetNumero(const Value: string);
begin
  FNumero := Value;
end;

procedure TEnderecoMDL.SetPais(const Value: string);
begin
  FPais := Value;
end;

procedure TEnderecoMDL.SetPrincipal(const Value: Boolean);
begin
  FPrincipal := Value;
end;

procedure TEnderecoMDL.SetTipo(const Value: Integer);
begin
  FTipo := Value;
end;

end.


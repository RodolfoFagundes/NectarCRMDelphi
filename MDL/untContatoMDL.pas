unit untContatoMDL;

interface

uses
  untAutorMDL, untCamposPersonalizadosMDL, untItemContatosMDL, System.Generics.Collections,
  untEnderecoMDL, untListaMDL, untResponsavelMDL;

type
  TContatoMDL = class
  private
    FAutor: TAutorMDL;
    FObservacao: string;
    FCnpj: string;
    FSite: string;
    FLista: string;
    FAtivo: Boolean;
    FSegmento: string;
    FLinkedin: string;
    FIsJuridico: Boolean;
    FIndicadoPor: string;
    FSigiloso: Boolean;
    FResponsavel: TResponsavelMDL;
    FCategoria: string;
    FSkype: string;
    FRazaoSocial: string;
    FTwitter: string;
    FFacebook: string;
    FNome: string;
    FConstante: string;
    FOrigem: string;
    FCamposPersonalizados: TCamposPersonalizadosMDL;
    FReceitaAnual: string;
    FEmails: array of string;
    FTelefones: array of string;
    FEnderecos: array of TEnderecoMDL;
    FContatos: array of TItemContatosMDL;
    FListas: array of TListaMDL;
    function GetEmails(index: Integer): string;
    function GetTelefones(index: Integer): string;
    function GetEnderecos(index: Integer): TEnderecoMDL;
    function GetContatos(index: Integer): TItemContatosMDL;
    function GetListas(index: Integer): TListaMDL;
    procedure SetAtivo(const Value: Boolean);
    procedure SetAutor(const Value: TAutorMDL);
    procedure SetCamposPersonalizados(const Value: TCamposPersonalizadosMDL);
    procedure SetCategoria(const Value: string);
    procedure SetCnpj(const Value: string);
    procedure SetConstante(const Value: string);
    procedure SetEmails(index: Integer; const Value: string);
    procedure SetFacebook(const Value: string);
    procedure SetIndicadoPor(const Value: string);
    procedure SetIsJuridico(const Value: Boolean);
    procedure SetLinkedin(const Value: string);
    procedure SetLista(const Value: string);
    procedure SetNome(const Value: string);
    procedure SetObservacao(const Value: string);
    procedure SetOrigem(const Value: string);
    procedure SetRazaoSocial(const Value: string);
    procedure SetReceitaAnual(const Value: string);
    procedure SetResponsavel(const Value: TResponsavelMDL);
    procedure SetSegmento(const Value: string);
    procedure SetSigiloso(const Value: Boolean);
    procedure SetSite(const Value: string);
    procedure SetSkype(const Value: string);
    procedure SetTelefones(index: Integer; const Value: string);
    procedure SetTwitter(const Value: string);
    procedure SetEnderecos(index: Integer; const Value: TEnderecoMDL);
    procedure SetContatos(index: Integer; const Value: TItemContatosMDL);
    procedure SetListas(index: Integer; const Value: TListaMDL);
  public
    constructor Create;
    property Ativo: Boolean read FAtivo write SetAtivo;
    property Autor: TAutorMDL read FAutor write SetAutor;
    property CamposPersonalizados: TCamposPersonalizadosMDL read FCamposPersonalizados write SetCamposPersonalizados;
    property Categoria: string read FCategoria write SetCategoria;
    property Cnpj: string read FCnpj write SetCnpj;
    property Constante: string read FConstante write SetConstante;
    property Facebook: string read FFacebook write SetFacebook;
    property IndicadoPor: string read FIndicadoPor write SetIndicadoPor;
    property IsJuridico: Boolean read FIsJuridico write SetIsJuridico;
    property Linkedin: string read FLinkedin write SetLinkedin;
    property Lista: string read FLista write SetLista;
    property Nome: string read FNome write SetNome;
    property Observacao: string read FObservacao write SetObservacao;
    property Origem: string read FOrigem write SetOrigem;
    property RazaoSocial: string read FRazaoSocial write SetRazaoSocial;
    property ReceitaAnual: string read FReceitaAnual write SetReceitaAnual;
    property Responsavel: TResponsavelMDL read FResponsavel write SetResponsavel;
    property Segmento: string read FSegmento write SetSegmento;
    property Sigiloso: Boolean read FSigiloso write SetSigiloso;
    property Site: string read FSite write SetSite;
    property Skype: string read FSkype write SetSkype;
    property Twitter: string read FTwitter write SetTwitter;
    property Emails[index: Integer]: string read GetEmails write SetEmails;
    property Telefones[index: Integer]: string read GetTelefones write SetTelefones;
    property Contatos[index: Integer]: TItemContatosMDL read GetContatos write SetContatos;
    property Enderecos[index: Integer]: TEnderecoMDL read GetEnderecos write SetEnderecos;
    property Listas[index: Integer]: TListaMDL read GetListas write SetListas;

    procedure AddEmail(pEmail: string);
    procedure AddTelefones(pTelefone: string);
    procedure AddContatos(pContato: TItemContatosMDL);
    procedure AddEndereco(pEndereco: TEnderecoMDL);
    procedure AddListas(pLista: TListaMDL);
  end;

implementation

{ TContatoMDL }

procedure TContatoMDL.AddContatos(pContato: TItemContatosMDL);
var
  index: Integer;
begin
  index := Length(FContatos);
  SetLength(FContatos, index + 1);
  Contatos[index] := pContato;
end;

procedure TContatoMDL.AddEmail(pEmail: string);
var
  index: Integer;
begin
  index := Length(FEmails);
  SetLength(FEmails, index + 1);
  Emails[index] := pEmail;
end;

procedure TContatoMDL.AddEndereco(pEndereco: TEnderecoMDL);
var
  index: Integer;
begin
  index := Length(FEnderecos);
  SetLength(FEnderecos, index + 1);
  Enderecos[index] := pEndereco;
end;

procedure TContatoMDL.AddListas(pLista: TListaMDL);
var
  index: Integer;
begin
  index := Length(FListas);
  SetLength(FListas, index + 1);
  Listas[index] := pLista;
end;

procedure TContatoMDL.AddTelefones(pTelefone: string);
var
  index: Integer;
begin
  index := Length(FTelefones);
  SetLength(FTelefones, index + 1);
  Telefones[index] := pTelefone;
end;

constructor TContatoMDL.Create;
begin
  Autor := TAutorMDL.Create;
  CamposPersonalizados := TCamposPersonalizadosMDL.Create;
  Responsavel := TResponsavelMDL.Create;
end;

function TContatoMDL.GetContatos(index: Integer): TItemContatosMDL;
begin
  Result := FContatos[index];
end;

function TContatoMDL.GetEmails(index: Integer): string;
begin
  Result := FEmails[index];
end;

function TContatoMDL.GetEnderecos(index: Integer): TEnderecoMDL;
begin
  Result := FEnderecos[index];
end;

function TContatoMDL.GetListas(index: Integer): TListaMDL;
begin
  Result := FListas[index];
end;

function TContatoMDL.GetTelefones(index: Integer): string;
begin
  Result := FTelefones[index];
end;

procedure TContatoMDL.SetAtivo(const Value: Boolean);
begin
  FAtivo := Value;
end;

procedure TContatoMDL.SetAutor(const Value: TAutorMDL);
begin
  FAutor := Value;
end;

procedure TContatoMDL.SetCamposPersonalizados(const Value: TCamposPersonalizadosMDL);
begin
  FCamposPersonalizados := Value;
end;

procedure TContatoMDL.SetCategoria(const Value: string);
begin
  FCategoria := Value;
end;

procedure TContatoMDL.SetCnpj(const Value: string);
begin
  FCnpj := Value;
end;

procedure TContatoMDL.SetConstante(const Value: string);
begin
  FConstante := Value;
end;

procedure TContatoMDL.SetContatos(index: Integer; const Value: TItemContatosMDL);
begin
  FContatos[index] := Value;
end;

procedure TContatoMDL.SetEmails(index: Integer; const Value: string);
begin
  FEmails[index] := Value;
end;

procedure TContatoMDL.SetEnderecos(index: Integer; const Value: TEnderecoMDL);
begin
  FEnderecos[index] := Value;
end;

procedure TContatoMDL.SetFacebook(const Value: string);
begin
  FFacebook := Value;
end;

procedure TContatoMDL.SetIndicadoPor(const Value: string);
begin
  FIndicadoPor := Value;
end;

procedure TContatoMDL.SetIsJuridico(const Value: Boolean);
begin
  FIsJuridico := Value;
end;

procedure TContatoMDL.SetLinkedin(const Value: string);
begin
  FLinkedin := Value;
end;

procedure TContatoMDL.SetLista(const Value: string);
begin
  FLista := Value;
end;

procedure TContatoMDL.SetListas(index: Integer; const Value: TListaMDL);
begin
  FListas[index] := Value;
end;

procedure TContatoMDL.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TContatoMDL.SetObservacao(const Value: string);
begin
  FObservacao := Value;
end;

procedure TContatoMDL.SetOrigem(const Value: string);
begin
  FOrigem := Value;
end;

procedure TContatoMDL.SetRazaoSocial(const Value: string);
begin
  FRazaoSocial := Value;
end;

procedure TContatoMDL.SetReceitaAnual(const Value: string);
begin
  FReceitaAnual := Value;
end;

procedure TContatoMDL.SetResponsavel(const Value: TResponsavelMDL);
begin
  FResponsavel := Value;
end;

procedure TContatoMDL.SetSegmento(const Value: string);
begin
  FSegmento := Value;
end;

procedure TContatoMDL.SetSigiloso(const Value: Boolean);
begin
  FSigiloso := Value;
end;

procedure TContatoMDL.SetSite(const Value: string);
begin
  FSite := Value;
end;

procedure TContatoMDL.SetSkype(const Value: string);
begin
  FSkype := Value;
end;

procedure TContatoMDL.SetTelefones(index: Integer; const Value: string);
begin
  FTelefones[index] := Value;
end;

procedure TContatoMDL.SetTwitter(const Value: string);
begin
  FTwitter := Value;
end;

end.


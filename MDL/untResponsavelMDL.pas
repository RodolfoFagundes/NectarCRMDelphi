unit untResponsavelMDL;

interface

type
  TResponsavelMDL = class
  private
    FId: Integer;
    FLogin: string;
    FNome: string;
    procedure SetId(const Value: Integer);
    procedure SetLogin(const Value: string);
    procedure SetNome(const Value: string);
  public
    property Id: Integer read FId write SetId;
    property Login: string read FLogin write SetLogin;
    property Nome: string read FNome write SetNome;
  end;

implementation

{ TResponsavelMDL }

procedure TResponsavelMDL.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TResponsavelMDL.SetLogin(const Value: string);
begin
  FLogin := Value;
end;

procedure TResponsavelMDL.SetNome(const Value: string);
begin
  FNome := Value;
end;

end.


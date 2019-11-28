unit untItemContatosMDL;

interface

uses
  System.Classes, System.Generics.Collections;

type
  TItemContatosMDL = class
  private
    FEmails: array of string;
    FCargo: string;
    FNome: string;
    function GetEmails(index: Integer): string;
    procedure SetCargo(const Value: string);
    procedure SetEmails(index: Integer; const Value: string);
    procedure SetNome(const Value: string);
  public
    property Nome: string read FNome write SetNome;
    property Cargo: string read FCargo write SetCargo;
    property Emails[index: Integer]: string read GetEmails write SetEmails;
    procedure AddEmail(pEmail: string);
  end;

implementation

{ TItemContato }

procedure TItemContatosMDL.AddEmail(pEmail: string);
var
  index: Integer;
begin
  index := Length(FEmails);
  SetLength(FEmails, index + 1);
  Emails[index] := pEmail;
end;

function TItemContatosMDL.GetEmails(index: Integer): string;
begin
  Result := FEmails[index];
end;

procedure TItemContatosMDL.SetCargo(const Value: string);
begin
  FCargo := Value;
end;

procedure TItemContatosMDL.SetEmails(index: Integer; const Value: string);
begin
  FEmails[index] := Value;
end;

procedure TItemContatosMDL.SetNome(const Value: string);
begin
  FNome := Value;
end;

end.


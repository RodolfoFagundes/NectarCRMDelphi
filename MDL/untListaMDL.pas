unit untListaMDL;

interface

uses
  System.Generics.Collections;

type
  TListaMDL = class
  private
    FId: Integer;
    FNome: string;
    procedure SetId(const Value: Integer);
    procedure SetNome(const Value: string);
  public
    property Id: Integer read FId write SetId;
    property Nome: string read FNome write SetNome;
  end;

implementation

{ TListaMDL }

procedure TListaMDL.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TListaMDL.SetNome(const Value: string);
begin
  FNome := Value;
end;

end.

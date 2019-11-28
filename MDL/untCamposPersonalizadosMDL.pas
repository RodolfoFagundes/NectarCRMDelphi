unit untCamposPersonalizadosMDL;

interface

type
  TCamposPersonalizadosMDL = class
  private
    FCampo2: string;
    FCampo1: string;
    procedure SetCampo1(const Value: string);
    procedure SetCampo2(const Value: string);
  public
    property Campo1: string read FCampo1 write SetCampo1;
    property Campo2: string read FCampo2 write SetCampo2;
  end;

implementation

{ TCamposPersonalizados }

procedure TCamposPersonalizadosMDL.SetCampo1(const Value: string);
begin
  FCampo1 := Value;
end;

procedure TCamposPersonalizadosMDL.SetCampo2(const Value: string);
begin
  FCampo2 := Value;
end;

end.

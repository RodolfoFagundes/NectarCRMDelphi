program ClientNectarCRM;

uses
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {frmMain},
  untRequest in 'Utils\untRequest.pas',
  untContatoMDL in 'MDL\untContatoMDL.pas',
  untAutorMDL in 'MDL\untAutorMDL.pas',
  untCamposPersonalizadosMDL in 'MDL\untCamposPersonalizadosMDL.pas',
  untItemContatosMDL in 'MDL\untItemContatosMDL.pas',
  untServices in 'untServices.pas',
  untEnderecoMDL in 'MDL\untEnderecoMDL.pas',
  untListaMDL in 'MDL\untListaMDL.pas',
  untResponsavelMDL in 'MDL\untResponsavelMDL.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

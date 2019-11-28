unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    mmRequest: TMemo;
    pnlTop: TPanel;
    btnEnviar: TButton;
    mmResult: TMemo;
    splResults: TSplitter;
    procedure btnEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  REST.JSON, System.JSON, System.Generics.Collections, untItemContatosMDL,
  untEnderecoMDL, untContatoMDL, untServices;

{$R *.dfm}

procedure TfrmMain.btnEnviarClick(Sender: TObject);
var
  ContatoMDL: TContatoMDL;
  EnderecoMDL: TEnderecoMDL;
  ItemContatosMDL: TItemContatosMDL;
  Services: TServices;
begin
  ContatoMDL := TContatoMDL.Create;

  ContatoMDL.Nome := 'Contato 1';
  ContatoMDL.RazaoSocial := 'Contato 1 LTDA';
  ContatoMDL.Cnpj := '43.634.983/0001-20';
  ContatoMDL.Origem := 'Telefone';
  ContatoMDL.Categoria := 'Cliente ativo';
  ContatoMDL.Segmento := 'Advocacia ';
  ContatoMDL.Skype := 'skype1';
  ContatoMDL.Constante := '2';
  ContatoMDL.IndicadoPor := 'Fulano';
  ContatoMDL.ReceitaAnual := '10000000';
  ContatoMDL.facebook := 'facebook1';
  ContatoMDL.Linkedin := 'linkedin1';
  ContatoMDL.Twitter := 'twitter1';
  ContatoMDL.Site := 'www.site.com.br';
  ContatoMDL.Observacao := 'Observacao';
  ContatoMDL.Sigiloso := False;
  ContatoMDL.Ativo := True;

  ContatoMDL.AddEmail('teste01@ces.com.br');
  ContatoMDL.AddEmail('teste02@ces.com.br');

  ContatoMDL.AddTelefones('62 99999999');
  ContatoMDL.AddTelefones('62 988888888');

  ContatoMDL.Responsavel.Id := 1;
  ContatoMDL.Responsavel.Login := 'responsavel@teste.com.br';
  ContatoMDL.Responsavel.Nome := 'Responsavel 1';

  ContatoMDL.Autor.Id := 1;
  ContatoMDL.Autor.Login := 'autor@teste.com.br';
  ContatoMDL.Autor.Nome := 'Autor 1';

  ContatoMDL.CamposPersonalizados.Campo1 := 'Campo 1';
  ContatoMDL.CamposPersonalizados.Campo2 := 'Campo 2';

  {$Region 'Contatos'}
   ItemContatosMDL := TItemContatosMDL.Create;
   ItemContatosMDL.Nome := 'Contato-relacionado 1';
   ItemContatosMDL.Cargo := 'Diretor';
   ItemContatosMDL.AddEmail('novo@trial.com.br');
   ContatoMDL.AddContatos(ItemContatosMDL);

   ItemContatosMDL := TItemContatosMDL.Create;
   ItemContatosMDL.Nome := 'Contato-relacionado 2';
   ItemContatosMDL.Cargo := 'Diretor';
   ItemContatosMDL.AddEmail('novo@trial.com.br');
   ContatoMDL.AddContatos(ItemContatosMDL);
  {$EndRegion}

  {$Region 'Endereço'}
  EnderecoMDL := TEnderecoMDL.Create;
  EnderecoMDL.Bairro := 'Jardim Sao Paulo';
  EnderecoMDL.Cep := '08465000';
  EnderecoMDL.Complemento := 'N 100';
  EnderecoMDL.Estado := 'Sao Paulo';
  EnderecoMDL.Logradouro := 'Rua 111';
  EnderecoMDL.Municipio := 'Sao Paulo';
  EnderecoMDL.Numero := '0';
  EnderecoMDL.Pais := 'Brasil';
  EnderecoMDL.Principal := True;
  EnderecoMDL.Tipo := 2;
  ContatoMDL.AddEndereco(EnderecoMDL);

  EnderecoMDL := TEnderecoMDL.Create;
  EnderecoMDL.Bairro := 'Jardim Sao Paulo';
  EnderecoMDL.Cep := '08465000';
  EnderecoMDL.Complemento := 'N 101';
  EnderecoMDL.Estado := 'Sao Paulo';
  EnderecoMDL.Logradouro := 'Rua 111';
  EnderecoMDL.Municipio := 'Sao Paulo';
  EnderecoMDL.Numero := '0';
  EnderecoMDL.Pais := 'Brasil';
  EnderecoMDL.Principal := True;
  EnderecoMDL.Tipo := 2;
  ContatoMDL.AddEndereco(EnderecoMDL);
  {$endregion}

  mmRequest.Lines.Add(REST.JSON.TJson.ObjectToJsonString(ContatoMDL));

  Services := TServices.Create;
  mmResult.Lines.Add(Services.PostContato(REST.JSON.TJson.ObjectToJsonString(ContatoMDL), 'INFORME SEU TOKEN'));
end;

end.


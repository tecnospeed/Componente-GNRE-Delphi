unit untPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, spdGnre, spdGnreType, ShellAPI;

type
  TfrmPrincipal = class(TForm)
    lblProtocolo: TLabel;
    lblCertificado: TLabel;
    lblUF: TLabel;
    cbCertificados: TComboBox;
    edtProtocolo: TEdit;
    pgXmlDestinatario: TPageControl;
    tsXMLDestinatario: TTabSheet;
    mmXML: TMemo;
    pgcTX2Complementar: TPageControl;
    tsTX2Complementar: TTabSheet;
    mmTX2Complementar: TMemo;
    pgRetorno: TPageControl;
    tsRetorno: TTabSheet;
    mmRetorno: TMemo;
    pgcGeral: TPageControl;
    tsMenuPrincipal: TTabSheet;
    btnConfigurarIni: TButton;
    btnLoadConfig: TButton;
    btnConsultaReciboGuia: TButton;
    btnEnviarGuia: TButton;
    btnVisualizarGnre: TButton;
    rgConfig: TRadioGroup;
    edtUF: TEdit;
    pgcImpressao: TPageControl;
    tsImpressao: TTabSheet;
    btnImprimirGuia: TButton;
    btnExportarGnre: TButton;
    btnEditarModeloGuia: TButton;
    OpenDialog: TOpenDialog;
    btCarregarXML: TButton;
    procedure FormCreate(Sender: TObject);
    procedure mmCtrlA(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnLoadConfigClick(Sender: TObject);
    procedure btnConfigurarIniClick(Sender: TObject);
    procedure btnEnviarGuiaClick(Sender: TObject);
    procedure btnConsultaReciboGuiaClick(Sender: TObject);
    procedure btnVisualizarGnreClick(Sender: TObject);
    procedure btnImprimirGuiaClick(Sender: TObject);
    procedure btnExportarGnreClick(Sender: TObject);
    procedure btnEditarModeloGuiaClick(Sender: TObject);
    procedure btCarregarXMLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    spdGnre: TspdGnre;
    tx2Complementar: TStringList;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  spdGnre := TspdGnre.Create(nil);
  spdGnre.ConfigurarSoftwareHouse('08187168000160', '');
  spdGnre.LoadConfig();
  cbCertificados.Text := spdGnre.NomeCertificado.Text;
  spdGNRe.ListarCertificados(cbCertificados.Items);

  tx2Complementar := TStringList.Create;
  tx2Complementar.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'TX2Complementar.tx2');
  mmTX2Complementar.Text := tx2Complementar.Text;
end;

procedure TfrmPrincipal.mmCtrlA(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Ord('A')) and (ssCtrl in Shift) then
  begin
    TMemo(Sender).SelectAll;
    Key := 0;
  end;
end;



procedure TfrmPrincipal.btnLoadConfigClick(Sender: TObject);
begin
  if rgConfig.ItemIndex = 0 then
  begin
     spdGnre.LoadConfig();
  end
  else
  begin
    spdGNRe.NomeCertificado.Text := cbCertificados.Text;
    spdGNRe.Ambiente := akHomologacao;
    spdGNRe.ArquivoServidoresHom := 'C:\Program Files\TecnoSpeed\Gnre\Arquivos\gnreServidoresHom.ini';
    spdGNRe.ArquivoServidoresProd := 'C:\Program Files\TecnoSpeed\Gnre\Arquivos\gnreServidoresProd.ini';
    spdGNRe.TipoCertificado := ckFile;
    spdGNRe.IgnoreInvalidCertificates := true;
    spdGNRe.DiretorioLog := ExtractFileDir(Application.ExeName) + '\Log';
    spdGNRe.DiretorioLogErro := ExtractFileDir(Application.ExeName) + '\LogErro';
    spdGNRe.DiretorioXmlGnre := ExtractFileDir(Application.ExeName) + '\DiretorioXmlGnre';
    spdGNRe.ConexaoSegura := true;
    spdGNRe.TimeOut := 60000;
    spdGNRe.DiretorioTemplates := 'C:\Program Files\TecnoSpeed\GNRe\Arquivos\Templates\';
    spdGNRe.DiretorioEsquemas := 'C:\Program Files\TecnoSpeed\GNRe\Arquivos\Esquemas\';

    spdGNRe.EmailSettings.ServidorSmtp:='smtp.gmail.com';
    spdGNRe.EmailSettings.EmailRemetente:='teste@gmail.com';
    spdGNRe.EmailSettings.EmailDestinatario:='teste@gmail.com';
    spdGNRe.EmailSettings.Assunto:='Exemplo de envio de GNRe por email';
    spdGNRe.EmailSettings.Mensagem:='O arquivo está anexo.';
    spdGNRe.EmailSettings.Usuario:='teste@gmail.com';
    spdGNRe.EmailSettings.Senha:='SenhaTeste';
    spdGNRe.EmailSettings.Autenticacao:=True;
    spdGNRe.EmailSettings.Porta:=587;
  end;
end;

procedure TfrmPrincipal.btnConfigurarIniClick(Sender: TObject);
begin
  ShellExecute(Handle,'open',pChar('gnreconfig.ini'),'',pChar(ExtractFilePath(ParamStr(0))),SW_SHOWMAXIMIZED);
end;

procedure TfrmPrincipal.btnEnviarGuiaClick(Sender: TObject);
begin
  mmRetorno.Text := spdGNRe.EnviarGuia(mmXml.Text, mmTx2Complementar.Text);
  edtUF.Text := spdGNRe.ExtrairUFDestinatario(mmXml.Text);
  edtProtocolo.Text := spdGNRe.ExtrairNumeroRecibo(mmretorno.Text);
end;

procedure TfrmPrincipal.btnConsultaReciboGuiaClick(Sender: TObject);
begin
  mmRetorno.Text := spdGNRe.ConsultaReciboGuia(edtProtocolo.Text, edtUF.Text, '08187168000160');
end;

procedure TfrmPrincipal.btnVisualizarGnreClick(Sender: TObject);
begin
  spdGNRe.VisualizarGnre(mmRetorno.Text);
end;

procedure TfrmPrincipal.btnImprimirGuiaClick(Sender: TObject);
begin
  spdGnre.ImprimirGnre(mmRetorno.Text, '');
end;

procedure TfrmPrincipal.btnExportarGnreClick(Sender: TObject);
begin
  spdGnre.ExportarGnre(mmRetorno.Text, '');
end;

procedure TfrmPrincipal.btnEditarModeloGuiaClick(Sender: TObject);
begin
  //Passar conteúdo ou caminho do arquivo de retorno da consulta de recibo (*-ret-consrecibo.xml)
  spdGnre.EditarModeloImpressao(mmRetorno.Text, '');
end;

procedure TfrmPrincipal.btCarregarXMLClick(Sender: TObject);
var
  vXML: string;
begin
  OpenDialog.InitialDir := ExtractFilePath(ParamStr(0));
  OpenDialog.Execute;

  if OpenDialog.FileName <> '' then
  begin
    vXML := OpenDialog.FileName;
    mmXml.Lines.LoadFromFile(vXML);
  end;
end;

end.

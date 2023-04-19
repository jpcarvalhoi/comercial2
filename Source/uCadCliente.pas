unit uCadCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons,
  ExtCtrls, Mask, DBCtrls, ShellApi;

type
  TformCadCliente = class(TfrmClone)
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label23: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label24: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit23: TDBEdit;
    GroupBox3: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Label17: TLabel;
    DBMemo1: TDBMemo;
    Label35: TLabel;
    DBEdit34: TDBEdit;
    Label36: TLabel;
    DBEdit35: TDBEdit;
    Label37: TLabel;
    DBEdit36: TDBEdit;
    Label38: TLabel;
    DBEdit37: TDBEdit;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    BitBtn3: TBitBtn;
    GroupBox4: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    BitBtn4: TBitBtn;
    Label39: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    Label40: TLabel;
    DBEdit41: TDBEdit;
    Label42: TLabel;
    DBEdit42: TDBEdit;
    Label43: TLabel;
    DBEdit43: TDBEdit;
    Label44: TLabel;
    DBEdit45: TDBEdit;
    Label46: TLabel;
    DBEdit40: TDBEdit;
    Label41: TLabel;
    GroupBox5: TGroupBox;
    DBEdit44: TDBEdit;
    Label45: TLabel;
    DBEdit46: TDBEdit;
    Label47: TLabel;
    DBEdit47: TDBEdit;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit48: TDBEdit;
    Label50: TLabel;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    Label51: TLabel;
    BitBtn5: TBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    BitBtn6: TBitBtn;
    DBEdit51: TDBEdit;
    Label52: TLabel;
    DBEdit52: TDBEdit;
    Label53: TLabel;
    DBEdit53: TDBEdit;
    Label54: TLabel;
    DBEdit54: TDBEdit;
    Label55: TLabel;
    DBEdit55: TDBEdit;
    Label56: TLabel;
    Label57: TLabel;
    DBEdit56: TDBEdit;
    dbckPrefeitura: TDBCheckBox;
    Label58: TLabel;
    dblkPrefeitura: TDBLookupComboBox;
    btnPrefeitura: TBitBtn;
    dsPrefeitura: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure dblkPrefeituraEnter(Sender: TObject);
    procedure dblkPrefeituraExit(Sender: TObject);
    procedure dbckPrefeituraClick(Sender: TObject);
    procedure dsNavegacaoDataChange(Sender: TObject; Field: TField);
    procedure btnPrefeituraClick(Sender: TObject);
  private
    function DocumentoCadastrado: boolean;
    function ValidaDocumento : Boolean;
    { Private declarations }
  public
    { Public declarations }
    CodCliente : Integer;
  end;

var
  formCadCliente: TformCadCliente;

implementation

uses uDM, FuncoesGlobais, FuncoesGerais, uControlaCheques;

{$R *.dfm}

procedure TformCadCliente.actIncluirExecute(Sender: TObject);
begin
  inherited;
  if DBEdit2.CanFocus then
    DBEdit2.SetFocus;
end;

procedure TformCadCliente.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if dm.cdsClienteemail.AsString <> '' then
    ShellExecute(Application.Handle, 'open',pChar('mailto:'+DM.cdsClienteemail.AsString),'','',0)
  else
    informa('E-mail não informado.');
end;

procedure TformCadCliente.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormControlaCheque,FormControlaCheque);
    FormControlaCheque.CodLoc := DM.cdsClientecodcliente.AsInteger;
    FormControlaCheque.edCliente.Text := DM.cdsClientenome.AsString;
    FormControlaCheque.Filtrar;
    FormControlaCheque.ShowModal;
  finally
    FreeAndNil(FormControlaCheque);
  end;

end;

procedure TformCadCliente.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if dm.cdsClienteemail_contato.AsString <> '' then
    ShellExecute(Application.Handle, 'open',pChar('mailto:'+DM.cdsClienteemail_contato.AsString),'','',0)
  else
    informa('E-mail não informado.');
end;

procedure TformCadCliente.BitBtn5Click(Sender: TObject);
begin
  inherited;
  if dm.cdsClienteemail.AsString <> '' then
    ShellExecute(Application.Handle, 'open',pChar('mailto:'+DM.cdsClienteemail.AsString),'','',0)
  else
    informa('E-mail não informado.');
end;

procedure TformCadCliente.BitBtn6Click(Sender: TObject);
begin
  inherited;
  DM.cdsCliente.Edit;
  DM.cdsClienteendereco_fat.Value := DM.cdsClienteendereco.Value;
  DM.cdsClientecep_fat.Value := DM.cdsClientecep.Value;
  DM.cdsClientebairro_fat.Value := DM.cdsClientebairro.Value;
  DM.cdsClientecidade_fat.Value := DM.cdsClientecidade.Value;
  DM.cdsClienteuf_fat.Value := DM.cdsClienteuf.Value;
  DM.cdsClientereferencia_fat.Value := DM.cdsClientereferencia.Value;
  DM.cdsClientecomplemento_fat.Value := DM.cdsClientecomplemento.Value;
  DM.cdsClientenumero_fat.Value := dm.cdsClientenumero.Value;
end;

procedure TformCadCliente.btnPrefeituraClick(Sender: TObject);
var
  nome : string;
  vcod : Integer;
begin
  inherited;
  vcod := SelCliente(nome, true);
  if vcod > 0 then begin
    if DataSetInEdicao(dm.cdsCliente,True) then
      DM.cdsClienteidprefeitura.Value := vcod;
  end;

end;

procedure TformCadCliente.dbckPrefeituraClick(Sender: TObject);
begin
  inherited;
  dblkPrefeitura.Enabled := not dbckPrefeitura.Checked;
  btnPrefeitura.Enabled := not dbckPrefeitura.Checked;
end;

procedure TformCadCliente.dblkPrefeituraEnter(Sender: TObject);
begin
  inherited;
  EditEnter(Sender);
  DM.qrlkCliente.Filter := 'prefeitura = '+QuotedStr('T');
  DM.qrlkCliente.Filtered := True;
end;

procedure TformCadCliente.dblkPrefeituraExit(Sender: TObject);
begin
  inherited;
  EditExit(Sender);
  DM.qrlkCliente.Filter := '';
  DM.qrlkCliente.Filtered := False;
end;

function TformCadCliente.DocumentoCadastrado(): boolean;
begin
  Result := False;
  if dm.cdsClientedocumento.AsString <> '' then
  begin
    with DM.qrComando do begin
      Close;
      SQL.Clear;
      SQL.Add('select codcliente, documento, nome from tbcliente where documento = '+QuotedStr(dm.cdsClientedocumento.AsString));
      Open;

      if (RecordCount > 0) and (FieldByName('codcliente').AsInteger <> dm.cdsClientecodcliente.AsInteger) then
      begin
        Informa('O CPF/CNPJ informado já está em uso por outro Cliente: '+FieldByName('NOME').AsString);
        Result := True;
      end;
    end;
  end;
end;

procedure TformCadCliente.dsNavegacaoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  dbckPrefeituraClick(nil);
end;

procedure TformCadCliente.actGravarExecute(Sender: TObject);
begin
  ActiveControl := nil;
  if trim(DM.cdsClientenome.AsString) = '' then
  begin
    Informa('Informe o Nome/Razão do cliente.');
    if DBEdit2.CanFocus then
      DBEdit2.SetFocus;
  end
  else if (DocumentoCadastrado) or (not ValidaDocumento) then
  begin
    if DBEdit3.CanFocus then
      DBEdit3.SetFocus;

  end
  else begin
    if DM.cdsClienteprefeitura.AsString = 'T' then
      DM.cdsClienteidprefeitura.AsVariant := null;
   inherited;
  end;

end;

procedure TformCadCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CodCliente := DM.cdsClientecodcliente.AsInteger;
  DM.qrlkCliente.Filter := '';
  DM.qrlkCliente.Filtered := False;
end;

procedure TformCadCliente.FormCreate(Sender: TObject);
begin
  inherited;
  FNomeCadastro := 'Cadastro de Clientes';
  CodCliente := 0;
end;

procedure TformCadCliente.FormShow(Sender: TObject);
begin
  inherited;
  DM.qrlkCliente.Open;
  PageControl1.ActivePageIndex := 0;
  dsNavegacao.DataSet := DM.cdsCliente;
  DM.cdsCliente.Close;
  DM.cdsCliente.Params.ParamByName('pcodigo').Value := CodCliente;
  DM.cdsCliente.Open;

  if self.Tag = 1 then
    DM.cdsCliente.Insert;
  if DBEdit2.CanFocus then
    DBEdit2.SetFocus;
end;

function TformCadCliente.ValidaDocumento: Boolean;
begin
  Result := True;
  if dm.cdsClientedocumento.AsString <> '' then
    if not gfCalculaCnpjCeiCpf(dm.cdsClientedocumento.AsString) then
      if Pergunta('O CPF/CNPJ informado não é valido.'+#13+
                  'Deseja salvar o registro assim mesmo?') = id_no then
        Result := False;

end;

end.

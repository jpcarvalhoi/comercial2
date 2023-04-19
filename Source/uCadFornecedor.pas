unit uCadFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons,
  ExtCtrls, Mask, DBCtrls;

type
  TFormCadFornecedor = class(TfrmClone)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
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
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label37: TLabel;
    DBEdit37: TDBEdit;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    Label41: TLabel;
    DBMemo1: TDBMemo;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit40: TDBEdit;
    GroupBox5: TGroupBox;
    Label45: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit44: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    Label8: TLabel;
    GroupBox6: TGroupBox;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBEdit51: TDBEdit;
    Label52: TLabel;
    DBEdit52: TDBEdit;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    Label55: TLabel;
    DBEdit55: TDBEdit;
    Label56: TLabel;
    Label57: TLabel;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    Label58: TLabel;
    DBEdit58: TDBEdit;
    Label59: TLabel;
    BitBtn1: TBitBtn;
    BitBtn6: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    function ValidaDocumento: Boolean;
    function DocumentoCadastrado: boolean;
    { Private declarations }
  public
    { Public declarations }
    CodFornecedor : Integer;
  end;

var
  FormCadFornecedor: TFormCadFornecedor;

implementation

uses uDM, FuncoesGlobais, FuncoesGerais;

{$R *.dfm}

procedure TFormCadFornecedor.actGravarExecute(Sender: TObject);
begin
  ActiveControl := nil;
  if dm.cdsFornecedorrazao.AsString = '' then
  begin
    Informa('Informe o None/Razão do fornecedor.');
    if DBEdit2.CanFocus then
      DBEdit2.SetFocus;
  end
  else if (DocumentoCadastrado) or (not ValidaDocumento) then
  begin
    if DBEdit3.CanFocus then
      DBEdit3.SetFocus;
  end
  else
    inherited;

end;

procedure TFormCadFornecedor.actIncluirExecute(Sender: TObject);
begin
  inherited;
  if DBEdit2.CanFocus then
    DBEdit2.SetFocus;
end;

procedure TFormCadFornecedor.actLocalizarExecute(Sender: TObject);
var
  vCod : Integer;
begin
  inherited;
  vCod :=  fLocalizar(6);
  if vCod > 0 then
  begin
    DM.cdsfornecedor.Close;
    dm.cdsFornecedor.Params.ParamByName('pid').Value := vCod;
    dm.cdsFornecedor.Open;
  end;
end;

procedure TFormCadFornecedor.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CallMail(DM.cdsFornecedoremail.AsString);
end;

procedure TFormCadFornecedor.BitBtn3Click(Sender: TObject);
begin
  inherited;
  CallMail(DM.cdsFornecedoremail_contato.AsString);
end;

procedure TFormCadFornecedor.BitBtn4Click(Sender: TObject);
begin
  inherited;
  CallMail(DM.cdsFornecedoremail_contato2.AsString);
end;

procedure TFormCadFornecedor.BitBtn6Click(Sender: TObject);
begin
  inherited;
  DM.cdsFornecedor.Edit;
  DM.cdsFornecedorendereco_fat.Value := DM.cdsFornecedorendereco.Value;
  dm.cdsFornecedorbairro_fat.Value := DM.cdsFornecedorbairro.Value;
  dm.cdsFornecedorcep_fat.Value := dm.cdsFornecedorcep.Value;
  dm.cdsFornecedorcidade_fat.Value := dm.cdsFornecedorcidade.Value;
  dm.cdsFornecedoruf_fat.Value := dm.cdsFornecedoruf.Value;
  dm.cdsFornecedorreferencia_fat.Value := dm.cdsFornecedorreferencia.Value;
end;

procedure TFormCadFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
  CodFornecedor := 0;
  FNomeCadastro := 'Fornecedor';
end;

procedure TFormCadFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  DM.cdsfornecedor.Close;
  dm.cdsFornecedor.Params.ParamByName('pid').Value := CodFornecedor;
  dm.cdsFornecedor.Open;
  dsNavegacao.DataSet := DM.cdsFornecedor;

  if self.Tag = 1 then
    btnNovo.Click;

end;

function TFormCadFornecedor.ValidaDocumento: Boolean;
begin
  Result := True;
  if dm.cdsFornecedorcnpj.AsString <> '' then
    if not gfCalculaCnpjCeiCpf(dm.cdsFornecedorcnpj.AsString) then
      if Pergunta('O CPF/CNPJ informado não é valido.'+#13+
                  'Deseja salvar o registro assim mesmo?') = id_no then
        Result := False;

end;

function TFormCadFornecedor.DocumentoCadastrado(): boolean;
begin
  Result := False;
  if dm.cdsFornecedorcnpj.AsString <> '' then
  begin
    with DM.qrComando do begin
      Close;
      SQL.Clear;
      SQL.Add('select idfornecedor, cnpj, razao from tbfornecedor where cnpj = '+QuotedStr(dm.cdsFornecedorcnpj.AsString));
      Open;

      if (RecordCount > 0) and (FieldByName('idfornecedor').AsInteger <> dm.cdsFornecedoridfornecedor.AsInteger) then
      begin
        Informa('O CPF/CNPJ informado já está em uso por outro Fornecedor: '+FieldByName('razao').AsString);
        Result := True;
      end;
    end;
  end;
end;



end.

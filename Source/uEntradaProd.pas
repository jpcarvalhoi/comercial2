unit uEntradaProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, DBGridEhGrouping, Buttons, StdCtrls, Mask,
  rxToolEdit, ExtCtrls, GridsEh, DBGridEh, FMTBcd, DB, DBClient, Provider,
  SqlExpr, ActnList, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFormEntrada = class(TFormClone_TelaPadrao)
    pnlPrincipal: TPanel;
    btnNovo: TBitBtn;
    btnSalvar: TBitBtn;
    btnLocalizar: TBitBtn;
    btnFechar: TBitBtn;
    Panel1: TPanel;
    DBGridEhEntProd: TDBGridEh;
    edNota: TLabeledEdit;
    edDtNota: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    edDtLancamento: TDateEdit;
    edFornecedor: TLabeledEdit;
    edProduto: TLabeledEdit;
    edUsuario: TLabeledEdit;
    BitBtn1: TBitBtn;
    sbtnLocalizar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dsEnt: TDataSource;
    cdsEnt: TZQuery;
    cdsEntrazao: TWideStringField;
    cdsEntvalor_unit: TFloatField;
    cdsEntValorTotal: TCurrencyField;
    cdsEntdatanota: TDateField;
    cdsEntdatalancamento: TDateTimeField;
    cdsEntiditem: TIntegerField;
    cdsEntidnota: TIntegerField;
    cdsEntidproduto: TIntegerField;
    cdsEntqtde: TIntegerField;
    cdsEntidfornecedor: TIntegerField;
    cdsEntnumnota: TIntegerField;
    cdsEntproduto: TWideStringField;
    cdsEntqtde_atual: TIntegerField;
    cdsEntcodbarras: TWideStringField;
    BitBtn2: TBitBtn;
    procedure DBGridEhEntProdGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure sbtnLocalizarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edNotaKeyPress(Sender: TObject; var Key: Char);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsEntCalcFields(DataSet: TDataSet);
    procedure DBGridEhEntProdDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    idFornecedor, idProduto, idUsuario :Integer;
    vSql : String;
    procedure Localizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEntrada: TFormEntrada;

implementation

uses uDM, FuncoesGlobais, uLocalizar, uSelFonecedor, uCadEntSai,
  uSelProduto;

{$R *.dfm}

procedure TFormEntrada.BitBtn1Click(Sender: TObject);
begin
  inherited;
  edNota.Clear;
  edDtNota.Clear;
  edDtLancamento.Clear;
  edFornecedor.Clear;
  edProduto.Clear;
  edUsuario.Clear;
end;

procedure TFormEntrada.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormSelPoduto,FormSelPoduto);
    FormSelPoduto.Permissao := RetornaPermissao(6);
    if FormSelPoduto.Permissao.Visualizar then
      FormSelPoduto.ShowModal
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelPoduto);
  end;
end;

procedure TFormEntrada.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFormEntrada.btnLocalizarClick(Sender: TObject);
begin
  inherited;
  Localizar;
end;

procedure TFormEntrada.btnNovoClick(Sender: TObject);
begin
  inherited;
  if not Permissao.Incluir then
    AcessoNegado(Negado_incluir)
  else begin
    try
      Application.CreateForm(TFormCadEntSai, FormCadEntSai);
      FormCadEntSai.Permissao := self.Permissao;
      if Sender = btnNovo then
        FormCadEntSai.Tag := 1;
        FormCadEntSai.CodNota := cdsEntIDNOTA.AsInteger;
        FormCadEntSai.Tipo := tipo_estoque;

      FormCadEntSai.ShowModal;
    finally
      FreeAndNil(FormCadEntSai);
    end;

  end;

end;

procedure TFormEntrada.cdsEntCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsEntValorTotal.AsCurrency := cdsEntvalor_unit.AsCurrency * cdsEntQTDE.AsInteger;
end;

procedure TFormEntrada.DBGridEhEntProdDblClick(Sender: TObject);
begin
  inherited;
  btnNovoClick(Sender);
end;

procedure TFormEntrada.DBGridEhEntProdGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if  odd(cdsEnt.RecNo) then
    Background := clWhite
  else
    Background := ColorGrid;
end;

procedure TFormEntrada.edFornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_BACK)or (key = VK_DELETE)  then
  begin
    (Sender as TLabeledEdit).Clear;
  end;
end;

procedure TFormEntrada.edNotaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    Localizar;
    key := #0;
  end;
end;

procedure TFormEntrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  SaveColumnsLayout(DBGridEhEntProd);
  cdsEnt.Close;
end;

procedure TFormEntrada.FormCreate(Sender: TObject);
begin
  inherited;
  RestoreColumnsLayout(DBGridEhEntProd);
  vSql := cdsEnt.SQL.Text;
end;

procedure TFormEntrada.FormShow(Sender: TObject);
begin
  inherited;
  if edNota.CanFocus then
    edNota.SetFocus;

end;

procedure TFormEntrada.Localizar();
var
   filtro :String;
begin
  filtro := '';

  if StrToIntDef(edNota.Text,0) > 0 then
    filtro := filtro + ' and n.numnota = '+edNota.Text;

  if edDtNota.Date > 0 then
    filtro := filtro + ' and n.datanota  = '+QuotedStr(FormatDateTime('yyyy-mm-dd',edDtNota.Date));

  if edDtLancamento.Date > 0 then
    filtro := filtro + ' and cast(n.datalancamento as date)  = '+QuotedStr(FormatDateTime('yyyy-mm-dd',edDtLancamento.Date));

  if (trim(edFornecedor.Text) <> '') and (idFornecedor > 0) then
    filtro := filtro + ' and n.idfornecedor = '+IntToStr(idFornecedor);

  if (trim(edProduto.Text) <> '') and (idProduto > 0) then
    filtro := filtro + ' and i.idproduto = '+IntToStr(idproduto);

  if (trim(edUsuario.Text) <> '') and (idUsuario > 0) then
    filtro := filtro + ' and n.usuario = '+IntToStr(idUsuario);

  filtro := filtro + ' and n.tipo_nota = '+QuotedStr(tipo_estoque);

  cdsEnt.Close;
  cdsEnt.SQL.Clear;
  cdsEnt.SQL.Add(vSql);
  cdsEnt.SQL.Add(filtro);
  cdsEnt.Open;
end;
procedure TFormEntrada.sbtnLocalizarClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormSelFornecedor,FormSelFornecedor);
    FormSelFornecedor.Permissao := RetornaPermissao(4);
    FormSelFornecedor.Localizando := True;
    if FormSelFornecedor.Permissao.Visualizar then begin
      if (FormSelFornecedor.ShowModal = mrOK) and (FormSelFornecedor.CodLocalizado > 0) then
      begin
        idFornecedor := FormSelFornecedor.CodLocalizado;
        edFornecedor.Text := FormSelFornecedor.cdsPesquisarazao.AsString;
      end;

    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelFornecedor);
  end;
end;

procedure TFormEntrada.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormLocalizar,FormLocalizar);
    FormLocalizar.Tag := 1;
    FormLocalizar.ShowModal;
    if FormLocalizar.CodigoLocalizado > 0 then
    begin
      edUsuario.Text := FormLocalizar.Descricao;
      idUsuario := FormLocalizar.CodigoLocalizado;
      Localizar;
    end;
  finally
    FreeAndNil(FormLocalizar);
  end;
end;

procedure TFormEntrada.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormSelPoduto,FormSelPoduto);
    FormSelPoduto.Permissao := RetornaPermissao(6);
    FormSelPoduto.Localizando := True;
    if FormSelPoduto.Permissao.Visualizar then begin
      if (FormSelPoduto.ShowModal = mrOK) and (FormSelPoduto.CodLocalizado > 0) then
      begin
        edProduto.Text := FormSelPoduto.cdsPesquisadescricao.AsString;
        idproduto := FormSelPoduto.CodLocalizado;
        Localizar;
      end;

    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelPoduto);
  end;
end;

end.

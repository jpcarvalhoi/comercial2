unit uControle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uClone_TelaPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, RxCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Vcl.CheckLst, RxPlacemnt, DBSumLst, StrUtils,
  Vcl.Mask, RxToolEdit, IniFiles;

type
  TfrmControle = class(TFormClone_TelaPadrao)
    pnlPrincipal: TPanel;
    btnPrimeiro: TBitBtn;
    btnAnterior: TBitBtn;
    btnProximo: TBitBtn;
    btnUltimo: TBitBtn;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    BitBtn1: TBitBtn;
    ActionList2: TActionList;
    Action1: TAction;
    actIncluir: TAction;
    actExcluir: TAction;
    actPrimeiro: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actAlterar: TAction;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    ZQuery1: TZQuery;
    Label1: TLabel;
    qrAux: TZQuery;
    ckTodosClientes: TCheckBox;
    ListBoxClientes: TListBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    FormStorage1: TFormStorage;
    DataSource1: TDataSource;
    btnBuscar: TBitBtn;
    SpeedButton3: TSpeedButton;
    ZQuery1id: TIntegerField;
    ZQuery1data: TDateField;
    ZQuery1idcliente: TIntegerField;
    ZQuery1idfornecedor: TIntegerField;
    ZQuery1npedido: TWideStringField;
    ZQuery1qtde_enviada: TIntegerField;
    ZQuery1idproduto: TIntegerField;
    ZQuery1preco_unit: TFloatField;
    ZQuery1prev_entrega: TDateField;
    ZQuery1data_entrega: TDateField;
    ZQuery1iddestino: TIntegerField;
    ZQuery1idstatus: TIntegerField;
    ZQuery1qtde_entregue: TIntegerField;
    ZQuery1valor_total: TFloatField;
    ZQuery1valor_pago: TFloatField;
    ZQuery1dia_pagamento: TDateField;
    ZQuery1obs: TWideStringField;
    ZQuery1vale: TFloatField;
    ZQuery1data_vale: TDateField;
    ZQuery1empresa: TWideStringField;
    ZQuery1destino: TWideStringField;
    ZQuery1status: TWideStringField;
    ZQuery1fornecedor: TWideStringField;
    ZQuery1produto: TWideStringField;
    ZQuery1falta_pagar: TFloatField;
    ZQuery1falta: TLargeintField;
    ZQuery1acompanhamento: TWideStringField;
    Label2: TLabel;
    ckTodosProduto: TCheckBox;
    ListBoxprodutos: TListBox;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label3: TLabel;
    ckTodosFornecedor: TCheckBox;
    ListBoxFornecedor: TListBox;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label4: TLabel;
    ckTodosDestino: TCheckBox;
    ListBoxDestino: TListBox;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Label5: TLabel;
    ckTodosAcompanhamento: TCheckBox;
    CheckListBoxAcompanhamento: TCheckListBox;
    ComboBox1: TComboBox;
    Label6: TLabel;
    DateEdit1: TDateEdit;
    Label7: TLabel;
    Label8: TLabel;
    DateEdit2: TDateEdit;
    edPedido: TLabeledEdit;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ckArquivados: TCheckBox;
    ZQuery1arquivado: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ckTodosClientesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actIncluirExecute(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1SortMarkingChanged(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure ckTodosProdutoClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure ckTodosFornecedorClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure ckTodosDestinoClick(Sender: TObject);
    procedure ckTodosAcompanhamentoClick(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure edPedidoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
  private
    FSql : string;
    procedure setList(o : TCheckListBox; campo : string);
    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControle: TfrmControle;

implementation

uses
  uDM, FuncoesGlobais, uCadControle, FuncoesGerais;

{$R *.dfm}

procedure TfrmControle.setList(o : TCheckListBox; campo : string);
begin
  qrAux.First;
  o.Items.Clear;
  while not qrAux.Eof do
  begin
    o.Items.Add(qrAux.FieldByName(campo).AsString);
    qrAux.Next;
  end;
end;

procedure TfrmControle.SpeedButton10Click(Sender: TObject);
var
  desc : string;
  id : Integer;
begin
  inherited;
  id := fLocalizar(17, desc);
  if id > 0  then
  begin
    if ListBoxDestino.Items.IndexOf(desc) < 0 then
      ListBoxDestino.Items.Add(desc);
  end;

end;

procedure TfrmControle.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  if ListBoxDestino.ItemIndex >= 0 then
    ListBoxDestino.Items.Delete(ListBoxDestino.ItemIndex);
end;

procedure TfrmControle.SpeedButton12Click(Sender: TObject);
begin
  inherited;
  ListBoxDestino.Items.Clear;
end;

procedure TfrmControle.SpeedButton1Click(Sender: TObject);
var
  desc : string;
  id : Integer;
begin
  inherited;
  id := fLocalizar(17, desc);
  if id > 0  then
  begin
    if ListBoxClientes.Items.IndexOf(desc) < 0 then
      ListBoxClientes.Items.Add(desc);
  end;
end;

procedure TfrmControle.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if ListBoxClientes.ItemIndex >= 0 then
    ListBoxClientes.Items.Delete(ListBoxClientes.ItemIndex);
end;

procedure TfrmControle.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  ListBoxClientes.Items.Clear;
end;

procedure TfrmControle.SpeedButton4Click(Sender: TObject);
var
  desc : string;
  id : Integer;
begin
  inherited;
  id := fLocalizar(18, desc);
  if id > 0  then
  begin
    if ListBoxprodutos.Items.IndexOf(desc) < 0 then
      ListBoxprodutos.Items.Add(desc);
  end;

end;

procedure TfrmControle.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if ListBoxprodutos.ItemIndex >= 0 then
    ListBoxprodutos.Items.Delete(ListBoxprodutos.ItemIndex);
end;

procedure TfrmControle.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  ListBoxprodutos.Items.Clear;
end;

procedure TfrmControle.SpeedButton7Click(Sender: TObject);
var
  desc : string;
  id : Integer;
begin
  inherited;
  id := fLocalizar(3, desc);
  if id > 0  then
  begin
    if ListBoxFornecedor.Items.IndexOf(desc) < 0 then
      ListBoxFornecedor.Items.Add(desc);
  end;

end;

procedure TfrmControle.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  if ListBoxFornecedor.ItemIndex >= 0 then
    ListBoxFornecedor.Items.Delete(ListBoxFornecedor.ItemIndex);
end;

procedure TfrmControle.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  ListBoxFornecedor.Items.Clear;
end;

procedure TfrmControle.actAlterarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadControle, frmCadControle);
  frmCadControle.Permissao :=  RetornaPermissao(24);
  if frmCadControle.Permissao.Alterar then
  begin
    if ZQuery1.Active then
      DM.setControle(ZQuery1id.AsInteger)
    else
      DM.setControle(0);
    frmCadControle.ShowModal;
  end
  else
    AcessoNegado(Negado_alterar);
  FreeAndNil(frmCadControle);
  if ZQuery1.Active then
    ZQuery1.Refresh;
end;

procedure TfrmControle.actExcluirExecute(Sender: TObject);
begin
  //inherited;
  if Pergunta('Deseja realmente excluir o pedido selecionado?') = idYes then
  begin

  end;

end;

procedure TfrmControle.actIncluirExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadControle, frmCadControle);
  frmCadControle.Permissao :=  RetornaPermissao(24);
  if frmCadControle.Permissao.Incluir then
  begin
    DM.setControle(0);
    dm.cdsControle.Insert;
    frmCadControle.ShowModal;

  end
  else
    AcessoNegado(Negado_incluir);
  FreeAndNil(frmCadControle);
  if ZQuery1.Active then
    ZQuery1.Refresh;
end;

procedure TfrmControle.BitBtn2Click(Sender: TObject);
begin
  inherited;
  ckTodosClientes.Checked := True;
  ckTodosProduto.Checked  := True;
  ckTodosFornecedor.Checked := True;
  ckTodosDestino.Checked := True;
  ckTodosAcompanhamento.Checked := True;
  ComboBox1.ItemIndex := 0;
  edPedido.Clear;
  ckArquivados.Checked := False;
  Filtrar();

end;

procedure TfrmControle.BitBtn3Click(Sender: TObject);
begin
  inherited;
  ExportaCSV_FromGrid(DBGridEh1, true);
end;

procedure TfrmControle.btnBuscarClick(Sender: TObject);
begin
  inherited;
  Filtrar();
end;

procedure TfrmControle.ckTodosAcompanhamentoClick(Sender: TObject);
begin
  inherited;
  CheckListBoxAcompanhamento.Enabled := not ckTodosAcompanhamento.Checked;

end;

procedure TfrmControle.ckTodosDestinoClick(Sender: TObject);
begin
  inherited;
  ListBoxDestino.Enabled := not ckTodosDestino.Checked;
  SpeedButton10.Enabled := not ckTodosDestino.Checked;
  SpeedButton11.Enabled := not ckTodosDestino.Checked;
  SpeedButton12.Enabled := not ckTodosDestino.Checked;
end;

procedure TfrmControle.ckTodosClientesClick(Sender: TObject);
begin
  inherited;
  ListBoxClientes.Enabled := not ckTodosClientes.Checked;
  SpeedButton1.Enabled := not ckTodosClientes.Checked;
  SpeedButton2.Enabled := not ckTodosClientes.Checked;
  SpeedButton3.Enabled := not ckTodosClientes.Checked;
end;

procedure TfrmControle.ckTodosFornecedorClick(Sender: TObject);
begin
  inherited;
  ListBoxFornecedor.Enabled := not ckTodosFornecedor.Checked;
  SpeedButton7.Enabled := not ckTodosFornecedor.Checked;
  SpeedButton8.Enabled := not ckTodosFornecedor.Checked;
  SpeedButton9.Enabled := not ckTodosFornecedor.Checked;
end;

procedure TfrmControle.ckTodosProdutoClick(Sender: TObject);
begin
  inherited;
  ListBoxprodutos.Enabled := not ckTodosProduto.Checked;
  SpeedButton4.Enabled := not ckTodosProduto.Checked;
  SpeedButton5.Enabled := not ckTodosProduto.Checked;
  SpeedButton6.Enabled := not ckTodosProduto.Checked;
end;

procedure TfrmControle.ComboBox1Change(Sender: TObject);
begin
  inherited;
  Label7.Enabled := ComboBox1.ItemIndex > 0 ;
  DateEdit1.Enabled := Label7.Enabled;
  Label8.Enabled := Label7.Enabled;
  DateEdit2.Enabled := Label7.Enabled;

end;

procedure TfrmControle.DBGridEh1DblClick(Sender: TObject);
begin
  inherited;
  actAlterar.Execute;
end;

procedure TfrmControle.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if ZQuery1arquivado.Value = 'T' then
    Background := $00BBBBFF;
end;

procedure TfrmControle.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
     actAlterar.Execute;
     key := #0;
  end;
end;

procedure TfrmControle.DBGridEh1SortMarkingChanged(Sender: TObject);
var
  s: String;
  i: Integer;
  SortType: TSortType;
begin
  inherited;
  s := '';
  for i := 0 to DBGridEh1.SortMarkedColumns.Count - 1 do
  begin
    if DBGridEh1.SortMarkedColumns[i].Title.SortMarker = TSortMarkerEh.smUpEh then
    begin
      s := DBGridEh1.SortMarkedColumns[i].FieldName;
      SortType := stDescending;
    end
    else
    begin
      s := DBGridEh1.SortMarkedColumns[i].FieldName;
      SortType := stAscending;
    end;

    Break;
  end;

  if s <> '' then
  begin
    ZQuery1.SortedFields := s;
    ZQuery1.SortType := SortType;
  end;

end;

procedure TfrmControle.edPedidoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    Filtrar;
    Key := #0;
  end;
end;

procedure TfrmControle.FormClose(Sender: TObject; var Action: TCloseAction);
var
  ini : TIniFile;
  aux : string;
  i : Integer;
begin
  inherited;
  FormStorage1.SaveFormPlacement;
  DBGridEh1.SaveColumnsLayoutIni('Config.ini', self.Name+'_'+DBGridEh1.Name, False);
  ini := TIniFile.Create(FormStorage1.IniFileName);
  aux := '';
  for i := 0 to CheckListBoxAcompanhamento.Items.Count - 1   do
  begin
    if CheckListBoxAcompanhamento.Checked[i] then
      aux := aux + IfThen(aux <> '', ',') + CheckListBoxAcompanhamento.Items.Strings[i];
  end;
  ini.WriteString('config', 'CheckListBoxAcompanhamento', aux);
end;

procedure TfrmControle.FormCreate(Sender: TObject);
begin
  inherited;
  FSql := ZQuery1.SQL.Text;
  DBGridEh1.RestoreColumnsLayoutIni('Config.ini', self.Name+'_'+DBGridEh1.Name, [TColumnEhRestoreParam.crpColIndexEh,
  TColumnEhRestoreParam.crpColWidthsEh]);
end;

procedure TfrmControle.FormShow(Sender: TObject);
var
  ini : TIniFile;
  i, j : Integer;
  aux : string;
  s : TStringArray;
begin
  inherited;
  WindowState:=wsMaximized;
  FormStorage1.IniFileName := ExtractFilePath(ParamStr(0))+'Config.ini';
  FormStorage1.RestoreFormPlacement;

  ini := TIniFile.Create(FormStorage1.IniFileName);
  aux := ini.ReadString('config', 'CheckListBoxAcompanhamento', '');
  if aux <> '' then
  begin
    s := Split(',', aux);
    for i := 0 to Length(s) - 1   do
    begin
      j := CheckListBoxAcompanhamento.Items.IndexOf(s[i]);
      if j >= 0 then
        CheckListBoxAcompanhamento.Checked[j] := True;
    end;
  end;
  ini.Free;

end;

procedure TfrmControle.Filtrar();
var
  f, filtro, having : string;
  i : Integer;
  campo : string;
  s : TStringArray;

begin


  ZQuery1.Close;
  filtro := '';
  having := '';
  if not ckTodosClientes.Checked then
  begin
    if ListBoxClientes.Items.Count > 0 then
    begin
      f := '';
      for i  := 0 to ListBoxClientes.Count - 1 do
        begin
          f :=  f + ifthen(f <> '', ' or ') + ' (c1.nome = '+QuotedStr(ListBoxClientes.Items.Strings[i])+') ';
        end;
      if f <> '' then
        filtro := filtro + ' and ('+f+')';
    end;
  end;

  if not ckTodosProduto.Checked then
  begin
    if ListBoxprodutos.Items.Count > 0 then
    begin
      f := '';
      for i  := 0 to ListBoxprodutos.Count - 1 do
        begin
          f :=  f + ifthen(f <> '', ' or ') + ' (p.descricao = '+QuotedStr(ListBoxprodutos.Items.Strings[i])+') ';
        end;
      if f <> '' then
        filtro := filtro + ' and ('+f+')';
    end;
  end;

  if not ckTodosFornecedor.Checked then
  begin
    if ListBoxFornecedor.Items.Count > 0 then
    begin
      f := '';
      for i  := 0 to ListBoxFornecedor.Count - 1 do
        begin
          f :=  f + ifthen(f <> '', ' or ') + ' (f.razao = '+QuotedStr(ListBoxFornecedor.Items.Strings[i])+') ';
        end;
      if f <> '' then
        filtro := filtro + ' and ('+f+')';
    end;
  end;

  if not ckTodosDestino.Checked then
  begin
    if ListBoxDestino.Items.Count > 0 then
    begin
      f := '';
      for i  := 0 to ListBoxDestino.Count - 1 do
        begin
          f :=  f + ifthen(f <> '', ' or ') + ' (c2.nome = '+QuotedStr(ListBoxDestino.Items.Strings[i])+') ';
        end;
      if f <> '' then
        filtro := filtro + ' and ('+f+')';
    end;
  end;


  if not ckTodosAcompanhamento.Checked then
  begin
    if CheckListBoxAcompanhamento.Items.Count > 0 then
    begin
      f := '';
      for i  := 0 to CheckListBoxAcompanhamento.Count - 1 do
        begin
          if CheckListBoxAcompanhamento.Checked[i] then
            f := f + ifthen(f <> '', ' or ') + ' (acompanhamento = '+QuotedStr(CheckListBoxAcompanhamento.Items.Strings[i])+') ';
        end;
      if f <> '' then
        having := having + IfThen(having <> '' , ' and ') + ' ('+f+')';
    end;
  end;

  if ComboBox1.ItemIndex > 0 then
  begin
    case ComboBox1.ItemIndex of
      1 : campo := 'data';
      2 : campo := 'prev_entrega';
      3 : campo := 'data_entrega';
    end;
    if DateEdit1.Date > 0 then
      filtro := filtro + ' and '+campo + ' >= '+FormataDataSql(DateEdit1.Date);

    if DateEdit2.Date > 0 then
      filtro := filtro + ' and '+campo + ' <= '+FormataDataSql(DateEdit2.Date);
  end;

  if not ckArquivados.Checked then
    filtro := filtro + ' and s.arquivado <> '+QuotedStr('T');

  if edPedido.Text <> '' then
  begin
    s := Split(',', edPedido.Text);
    if Length(s) > 0 then
    begin
      f := '';
      for i  := 0 to Length(s) - 1 do
        begin
            f := f + ifthen(f <> '', ' or ') + ' (s.npedido = '+QuotedStr(s[i])+') ';
        end;
      if f <> '' then
      begin
        filtro := ' and ('+f+')';
        having := '';
      end;
    end;
  end;



  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Text := FSql + filtro + ifthen (having <> '', ' having ' + having);
  ZQuery1.Open;

end;



end.

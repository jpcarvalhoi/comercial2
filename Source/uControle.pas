unit uControle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uClone_TelaPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, RxCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Vcl.CheckLst, RxPlacemnt, DBSumLst, StrUtils;

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
  uDM, FuncoesGlobais, uCadControle;

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
  ListBoxprodutos.Clear;
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

procedure TfrmControle.btnBuscarClick(Sender: TObject);
begin
  inherited;
  Filtrar();
end;

procedure TfrmControle.ckTodosClientesClick(Sender: TObject);
begin
  inherited;
  ListBoxClientes.Enabled := not ckTodosClientes.Checked;
  SpeedButton1.Enabled := not ckTodosClientes.Checked;
  SpeedButton2.Enabled := not ckTodosClientes.Checked;
  SpeedButton3.Enabled := not ckTodosClientes.Checked;
end;

procedure TfrmControle.ckTodosProdutoClick(Sender: TObject);
begin
  inherited;
  ListBoxprodutos.Enabled := not ckTodosProduto.Checked;
  SpeedButton4.Enabled := not ckTodosProduto.Checked;
  SpeedButton5.Enabled := not ckTodosProduto.Checked;
  SpeedButton6.Enabled := not ckTodosProduto.Checked;
end;

procedure TfrmControle.DBGridEh1DblClick(Sender: TObject);
begin
  inherited;
  actAlterar.Execute;
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

procedure TfrmControle.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FormStorage1.SaveFormPlacement;
  DBGridEh1.SaveColumnsLayoutIni('Config.ini', self.Name+'_'+DBGridEh1.Name, False);
end;

procedure TfrmControle.FormCreate(Sender: TObject);
begin
  inherited;
  FSql := ZQuery1.SQL.Text;
  DBGridEh1.RestoreColumnsLayoutIni('Config.ini', self.Name+'_'+DBGridEh1.Name, [TColumnEhRestoreParam.crpColIndexEh,
  TColumnEhRestoreParam.crpColWidthsEh]);
end;

procedure TfrmControle.FormShow(Sender: TObject);
begin
  inherited;
  WindowState:=wsMaximized;
  FormStorage1.IniFileName := ExtractFilePath(ParamStr(0))+'Config.ini';
  FormStorage1.RestoreFormPlacement;

  ckTodosClientesClick(nil);


end;

procedure TfrmControle.Filtrar();
var
  f, filtro : string;
  i : Integer;
begin


  ZQuery1.Close;
  filtro := '';
  if not ckTodosClientes.Checked then
  begin
    if ListBoxClientes.Items.Count > 0 then
    begin
      f := '';
      for i  := 0 to ListBoxClientes.Count - 1 do
        begin
          f := ifthen(f <> '', ' or ') + ' (c1.nome = '+QuotedStr(ListBoxClientes.Items.Strings[i])+') ';
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
          f := ifthen(f <> '', ' or ') + ' (p.descricao = '+QuotedStr(ListBoxprodutos.Items.Strings[i])+') ';
        end;
      if f <> '' then
        filtro := filtro + ' and ('+f+')';
    end;
  end;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Text := FSql + filtro;
  ZQuery1.Open;

end;



end.

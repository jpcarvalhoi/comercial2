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
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ZQuery1: TZQuery;
    Label1: TLabel;
    qrAux: TZQuery;
    ckTodosClientes: TCheckBox;
    ListBoxClientes: TListBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    FormStorage1: TFormStorage;
    ClientDataSet1id: TIntegerField;
    ClientDataSet1data: TDateField;
    ClientDataSet1idcliente: TIntegerField;
    ClientDataSet1idfornecedor: TIntegerField;
    ClientDataSet1npedido: TWideStringField;
    ClientDataSet1qtde_enviada: TIntegerField;
    ClientDataSet1idproduto: TIntegerField;
    ClientDataSet1preco_unit: TFloatField;
    ClientDataSet1prev_entrega: TDateField;
    ClientDataSet1data_entrega: TDateField;
    ClientDataSet1iddestino: TIntegerField;
    ClientDataSet1idstatus: TIntegerField;
    ClientDataSet1empresa: TWideStringField;
    ClientDataSet1destino: TWideStringField;
    ClientDataSet1status: TWideStringField;
    ClientDataSet1fornecedor: TWideStringField;
    ClientDataSet1produto: TWideStringField;
    DataSource1: TDataSource;
    btnBuscar: TBitBtn;
    SpeedButton3: TSpeedButton;
    ClientDataSet1ValorPagar: TCurrencyField;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ckTodosClientesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actIncluirExecute(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
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

procedure TfrmControle.actIncluirExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadControle, frmCadControle);
  frmCadControle.Permissao :=  RetornaPermissao(24);
  frmCadControle.ShowModal;
  FreeAndNil(frmCadControle);
  if ClientDataSet1.Active then
    ClientDataSet1.Refresh;
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

procedure TfrmControle.ClientDataSet1CalcFields(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1ValorPagar.Value := ClientDataSet1qtde_enviada.AsInteger * ClientDataSet1preco_unit.AsCurrency;
end;

procedure TfrmControle.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FormStorage1.SaveFormPlacement;
end;

procedure TfrmControle.FormCreate(Sender: TObject);
begin
  inherited;
  FSql := ZQuery1.SQL.Text;
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

  ClientDataSet1.Close;
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

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Text := FSql + filtro;
  ClientDataSet1.Open;

end;



end.

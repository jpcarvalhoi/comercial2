unit uCloneSel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, ActnList, DB, DBClient, Provider,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls,
  Buttons, ExtCtrls, DBActns, ComCtrls, System.Actions;

type
  TFormCloneSelecao = class(TFormClone_TelaPadrao)
    pnFiltros: TPanel;
    DBGridPesquisa: TDBGrid;
    qrPesquisa: TZQuery;
    dspPesquisa: TDataSetProvider;
    cdsPesquisa: TClientDataSet;
    dsPesquisa: TDataSource;
    pnlPrincipal: TPanel;
    btnPrimeiro: TBitBtn;
    btnAnterior: TBitBtn;
    btnProximo: TBitBtn;
    btnUltimo: TBitBtn;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    actIncluir: TAction;
    actExcluir: TAction;
    actPrimeiro: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    BitBtn1: TBitBtn;
    actAlterar: TAction;
    StatusBar1: TStatusBar;
    pnSelecionar: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure cdsPesquisaAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Localizando : Boolean;
    CodLocalizado : Integer;
  end;

var
  FormCloneSelecao: TFormCloneSelecao;

implementation

uses uDM;

{$R *.dfm}

procedure TFormCloneSelecao.actAnteriorExecute(Sender: TObject);
begin
  inherited;
  if cdsPesquisa.Active then
    cdsPesquisa.Prior;
end;

procedure TFormCloneSelecao.actPrimeiroExecute(Sender: TObject);
begin
  inherited;
  if cdsPesquisa.Active then
    cdsPesquisa.First;
end;

procedure TFormCloneSelecao.actProximoExecute(Sender: TObject);
begin
  inherited;
  if cdsPesquisa.Active then
    cdsPesquisa.Next;
end;

procedure TFormCloneSelecao.actUltimoExecute(Sender: TObject);
begin
  inherited;
  if cdsPesquisa.Active then
    cdsPesquisa.Last;
end;

procedure TFormCloneSelecao.cdsPesquisaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[0].Text := IntToStr(cdsPesquisa.RecordCount) + ' registro(s) encontrado(s).';
end;

procedure TFormCloneSelecao.FormCreate(Sender: TObject);
begin
  inherited;
  dspPesquisa.DataSet := qrPesquisa;
  cdsPesquisa.ProviderName := 'dspPesquisa';
  dsPesquisa.DataSet := cdsPesquisa;
  DBGridPesquisa.DataSource := dsPesquisa;
  CodLocalizado := 0;
  Localizando := False;
end;

procedure TFormCloneSelecao.FormShow(Sender: TObject);
begin
  inherited;
  pnSelecionar.Visible := Localizando;
end;

end.

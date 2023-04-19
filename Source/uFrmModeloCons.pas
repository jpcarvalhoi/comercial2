unit uFrmModeloCons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, DBCtrls, FMTBcd,
  DBClient, Provider, DB, SqlExpr;

type
  TfrmModeloCons = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    PanelPesquisa: TPanel;
    edtPesquisa: TEdit;
    Label2: TLabel;
    btPesquisa: TBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    lblNumReg: TLabel;
    PanelBotoes: TPanel;
    btCadastrar: TBitBtn;
    btAlterar: TBitBtn;
    btExcluir: TBitBtn;
    bRelatorio: TBitBtn;
    gbAdicionais: TGroupBox;
    DBNavigator: TDBNavigator;
    btTransferir: TBitBtn;
    btSair: TBitBtn;
    sqlConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPesquisaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btAlterarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btTransferirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModeloCons: TfrmModeloCons;

implementation

uses FuncoesGlobais, uDM;


{$R *.dfm}

procedure TfrmModeloCons.btAlterarClick(Sender: TObject);
begin
  //Verifica se a tabela não está vazia antes de executar a operação
  //Como a janela é modelo, utiliza o DataSource do DBGrid para
  //consultar se o DataSet está Vazio (IsEmpty)
  if DBGrid1.DataSource.DataSet.IsEmpty then
  begin
    Alerta('Nenhum registro selecionado para ALTERAR!');
    abort;
  end;
end;

procedure TfrmModeloCons.btExcluirClick(Sender: TObject);
begin
  if DBGrid1.DataSource.DataSet.IsEmpty then
  begin
    Alerta('Nenum registro selecionado para EXCLUIR!');
    abort;
  end;
end;

procedure TfrmModeloCons.btPesquisaClick(Sender: TObject);
begin
  //pega a qtd. de registros do DataSet
  lblNumReg.Caption := IntToStr(DBGrid1.DataSource.DataSet.RecordCount);
  if edtPesquisa.CanFocus then edtPesquisa.SetFocus;
end;

procedure TfrmModeloCons.btSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmModeloCons.btTransferirClick(Sender: TObject);
begin
  if DBGrid1.DataSource.DataSet.IsEmpty then
  begin
    Alerta('Nenhum registro selecionado para TRANSFERIR!');
    abort;
  end;
  Close;
end;

procedure TfrmModeloCons.DBGrid1DblClick(Sender: TObject);
begin
  //se o botão Transferir estiver ativo, utilize-o
  if btTransferir.Visible then
    btTransferir.Click
  else //caso contrario, abre para alteração
    btAlterar.Click;
end;

procedure TfrmModeloCons.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se pressionar ctrl+del, simula o click no btExcluir
  if (ssCtrl in Shift) and (key=vk_delete) then
    btExcluir.Click
  else
    if key=vk_return then
      if btTransferir.Visible then
        btTransferir.Click
      else
        btAlterar.Click;
end;

procedure TfrmModeloCons.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_down then DBGrid1.SetFocus;
end;

procedure TfrmModeloCons.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    key := #0;
    btPesquisa.Click;
  end;
end;

procedure TfrmModeloCons.FormKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
  #13: if ActiveControl.Name='edtPesquisa' then exit else
    if not (ActiveControl is TDBGrid) then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end
    else
      if (ActiveControl is TDBGrid) then
        with TDBGrid(ActiveControl) do
          if selectedindex < (fieldcount -1) then
            selectedindex := selectedindex +1
          else
            selectedindex := 0;
  #27: begin
         key := #0;
         btSair.Click;
       end;
  end;
end;

procedure TfrmModeloCons.FormShow(Sender: TObject);
begin
  if edtPesquisa.CanFocus then
    edtPesquisa.SetFocus;
  cdsConsulta.Open;  
end;

procedure TfrmModeloCons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsConsulta.close;
end;

end.

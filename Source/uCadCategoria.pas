unit uCadCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBGridEhGrouping, GridsEh, DBGridEh, DBActns, ActnList, DB,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TFormCadCategoria = class(TfrmClone)
    Panel1: TPanel;
    dbgridCategoria: TDBGridEh;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    edFiltro: TLabeledEdit;
    btnFiltrar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure dsNavegacaoStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edFiltroChange(Sender: TObject);
    procedure edFiltroKeyPress(Sender: TObject; var Key: Char);
    procedure btnFiltrarClick(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
  private
    { Private declarations }
    CatOpen : Boolean;
  public
    { Public declarations }
  end;

var
  FormCadCategoria: TFormCadCategoria;

implementation

uses uDM, FuncoesGlobais, FuncoesGerais;

{$R *.dfm}

procedure TFormCadCategoria.actGravarExecute(Sender: TObject);
begin

  ActiveControl := nil;
  if dm.cdsCategoriadescricao.AsString = '' then
  begin
    Informa('Informe a descrição da categoria.');
    if DBEdit2.CanFocus  then
      DBEdit2.SetFocus;
  end
  else
    inherited;
end;

procedure TFormCadCategoria.actIncluirExecute(Sender: TObject);
begin
  inherited;
  if DBEdit2.CanFocus then
    DBEdit2.SetFocus;
end;

procedure TFormCadCategoria.btnFiltrarClick(Sender: TObject);
begin
  inherited;
  dm.cdsCategoria.Filter := edFiltro.Text;
  if edFiltro.Text <> '' then
    dm.cdsCategoria.Filtered := True
  else
    dm.cdsCategoria.Filtered := False;
end;

procedure TFormCadCategoria.dsNavegacaoStateChange(Sender: TObject);
begin
  inherited;
  btnFiltrar.Enabled := dsNavegacao.State in [dsBrowse];
  edFiltro.Enabled := btnFiltrar.Enabled;
  dbgridCategoria.Enabled := btnFiltrar.Enabled;
end;

procedure TFormCadCategoria.edFiltroChange(Sender: TObject);
begin
  inherited;
  if trim(edFiltro.Text) = '' then
    dm.cdsCategoria.Filtered := False;
end;

procedure TFormCadCategoria.edFiltroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    btnFiltrar.Click;
    key := #0;
  end;
end;

procedure TFormCadCategoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM.cdsCategoria.Filter := '';
  DM.cdsCategoria.Filtered := false;
  DM.cdsCategoria.Active := CatOpen;
end;

procedure TFormCadCategoria.FormShow(Sender: TObject);
begin
  inherited;
  CatOpen := DM.cdsCategoria.Active;
  DM.cdsCategoria.Open;
  dsNavegacao.DataSet := DM.cdsCategoria;
  dm.cdsCategoria.Filter := '';
  DM.cdsCategoria.Filtered := false;
end;

end.

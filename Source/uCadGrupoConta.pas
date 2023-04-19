unit uCadGrupoConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBGridEhGrouping, GridsEh, DBGridEh, DBActns, ActnList,
  DB, ComCtrls, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask;

type
  TFormGrupoConta = class(TfrmClone)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure dsNavegacaoStateChange(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  tag_grupo    = 0;
  tag_subgrupo = 2;

var
  FormGrupoConta: TFormGrupoConta;

implementation

uses uDM, FuncoesGlobais, FuncoesGerais;

{$R *.dfm}

procedure TFormGrupoConta.actGravarExecute(Sender: TObject);
begin
  ActiveControl := nil;
  with DM do begin
    if dsNavegacao.DataSet.FieldByName('descricao').AsString = ''  then
    begin
      Informa('Informe a descrição.');
      if DBEdit2.CanFocus then
        DBEdit2.SetFocus;
    end
    else if dsNavegacao.DataSet.FieldByName('tipo').AsString = '' then
    begin
      Informa('Informe o tipo.');
    end
    else
      inherited;
  end;

end;

procedure TFormGrupoConta.actIncluirExecute(Sender: TObject);
begin
  inherited;
  if DBEdit2.CanFocus then
    DBEdit2.SetFocus;
end;

procedure TFormGrupoConta.actLocalizarExecute(Sender: TObject);
var
  vCod : Integer;
begin
  inherited;
  if Tag = tag_grupo then
  begin
    vCod := fLocalizar(10);
    if vCod > 0 then
      dm.cdsGrupoConta.Locate('idgrupoconta',vCod,[]);
  end
  else begin
    vCod := fLocalizar(10);
    if vCod > 0 then
      dm.cdsSubGrupo.Locate('idsubgrupo',vCod,[]);
  end;
end;

procedure TFormGrupoConta.dsNavegacaoStateChange(Sender: TObject);
begin
  inherited;
  DBGridEh1.Enabled := dsNavegacao.DataSet.State in [dsBrowse];
end;

procedure TFormGrupoConta.FormShow(Sender: TObject);
begin
  inherited;
  if self.Tag = tag_grupo then
  begin
    DM.cdsSubGrupo.Close;
    dsNavegacao.DataSet := DM.cdsGrupoConta;
    if not dm.cdsGrupoConta.Active then
      dm.cdsGrupoConta.Open
    else
      dm.cdsGrupoConta.Refresh;
  end
  else begin
    DM.cdsGrupoConta.Close;
    self.Caption := 'Cadastro de subgrupo de contas';
    DBEdit1.DataField := 'idsubgrupo';
    DBGridEh1.Columns[0].FieldName := DBEdit1.DataField;
    dsNavegacao.DataSet := DM.cdsSubGrupo;
    if not dm.cdsSubGrupo.Active then
      dm.cdsSubGrupo.Open
    else
      dm.cdsSubGrupo.Refresh;
  end;

  if self.Tag = 1 then
    actIncluirExecute(nil);
end;

end.

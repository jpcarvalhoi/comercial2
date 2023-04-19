unit uCadUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, sSkinProvider, DBActns, ActnList, DB, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, Mask, DBCtrls, Grids, DBGrids, ImgList;

type
  TformCadUsuario = class(TfrmClone)
    DBGridEhPermissoes: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBEditNome: TDBEdit;
    DBEditLogin: TDBEdit;
    DBEditSenha: TDBEdit;
    dsPermissaoUsuario: TDataSource;
    ImageList1: TImageList;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    procedure actIncluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dsNavegacaoDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
    procedure DBGridEhPermissoesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridEhPermissoesCellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure dsNavegacaoStateChange(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure AtualizaPermissao(Forcar: boolean = False);
    { Private declarations }
  public
    { Public declarations }
    FNomeCadastro : String;

  end;

var
  formCadUsuario: TformCadUsuario;

implementation

uses uDM, uLocalizar, FuncoesGlobais, FuncoesGerais;

{$R *.dfm}

procedure TformCadUsuario.actAnteriorExecute(Sender: TObject);
begin
  inherited;
  AtualizaPermissao;
end;

procedure TformCadUsuario.actCancelarExecute(Sender: TObject);
begin
  inherited;
  AtualizaPermissao();
end;

procedure TformCadUsuario.actExcluirExecute(Sender: TObject);
begin
  //inherited;
  if dm.cdsUsuarioidtbusuario.Value = 1 then
  begin
    Informa('O usuário administrador não pode ser excluído.');

  end
  else if Application.MessageBox('Deseja realmente excluir o usuário?','Atenção',MB_YESNO+MB_ICONWARNING+MB_TOPMOST) = id_yes then
  begin
    try
      DM.cdsUsuario.Delete;
      AtualizaPermissao();
    except
      Application.MessageBox('Não é possível excluir o usuário, '+#13#10+'pois ele está vinculado a outras informações do sistema','Atenção',MB_OK+MB_ICONERROR);
      DM.cdsUsuario.Close;
      DM.cdsUsuario.Open;
    end;
  end;
end;

procedure TformCadUsuario.actGravarExecute(Sender: TObject);
begin
  ActiveControl := nil;
  if trim(DBEditNome.Text) = '' then
  begin
   Application.MessageBox('O campo Nome é de preenchimento obrigatório.','Atenção',MB_OK+MB_ICONERROR);
   DBEditNome.SetFocus;
   Exit;
  end
  else if trim(DBEditLogin.Text) = '' then
  begin
   Application.MessageBox('O campo Login é de preenchimento obrigatório.','Atenção',MB_OK+MB_ICONERROR);
   DBEditLogin.SetFocus;
   Exit;
  end
  else if trim(DBEditSenha.Text) = '' then
  begin
   Application.MessageBox('O campo Senha é de preenchimento obrigatório.','Atenção',MB_OK+MB_ICONERROR);
   DBEditSenha.SetFocus;
   Exit;
  end
  else begin
    with dm.psUsuario do
    begin
      Close;
      Params.ParamByName('plogin').Value := DBEditLogin.Text;
      Params.ParamByName('psenha').Value := DBEditSenha.Text;
      Open;
      if (recordcount > 0) and (FieldByName('idtbusuario').AsInteger <> DM.cdsUsuarioidtbusuario.AsInteger) then
      begin
       Application.MessageBox('Já existe um usuário com este login e senha cadastrados.','Atenção',MB_OK+MB_ICONERROR);
       DBEditSenha.SetFocus;
       Exit;
      end;

    end;
  end;
  inherited;
  AtualizaPermissao();
end;

procedure TformCadUsuario.actIncluirExecute(Sender: TObject);
begin
  //inherited;
  with dm do
  begin
   if cdsUsuario.RecordCount = 0 then
   begin
      cdsUsuario.Insert;
   end
   else
   cdsUsuario.Insert;
  end;
  DBEditNome.SetFocus;
end;

procedure TformCadUsuario.actLocalizarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormLocalizar, FormLocalizar);
  FormLocalizar.Tag := 1;
  FormLocalizar.ShowModal;
  if  FormLocalizar.CodigoLocalizado > 0 then
  begin
    DM.cdsUsuario.Locate('idtbusuario',IntToStr(FormLocalizar.CodigoLocalizado),[]);
    AtualizaPermissao();
  end;
  FormLocalizar.Free;
  FormLocalizar := nil;
end;

procedure TformCadUsuario.actPrimeiroExecute(Sender: TObject);
begin
  inherited;
  AtualizaPermissao();
end;

procedure TformCadUsuario.actProximoExecute(Sender: TObject);
begin
  inherited;
  AtualizaPermissao();
end;

procedure TformCadUsuario.actUltimoExecute(Sender: TObject);
begin
  inherited;
  AtualizaPermissao();
end;

procedure TformCadUsuario.DBGridEhPermissoesCellClick(Column: TColumn);
var
  coluna :String;
  id :Integer;
begin
  inherited;
  if (Column.Index >=1)  then
  begin
    coluna := Column.Title.Caption;
    id := DM.cdsPermissaoUsuarioidtbpermissao.AsInteger;
    if id > 0 then
      try
        dm.cdsPermissaoUsuario.DisableControls;
        DM.cdsPermissaoUsuario.Edit;
        if DM.cdsPermissaoUsuario.FieldByName(coluna).AsString = sTrue then
           DM.cdsPermissaoUsuario.FieldByName(coluna).AsString := sFalse
        else
          DM.cdsPermissaoUsuario.FieldByName(coluna).AsString := sTrue;
        DM.cdsPermissaoUsuario.Post;
      finally
        DM.cdsPermissaoUsuario.Locate('idtbpermissao',id,[]);
        dm.cdsPermissaoUsuario.EnableControls;
      end;

    DBGridEhPermissoes.SelectedIndex := Column.Index;
  end;
end;

procedure TformCadUsuario.DBGridEhPermissoesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Coluna :String;
begin
  inherited;
  if Column.Index >= 1 then
  begin
    Coluna := Column.Title.Caption;

    if DM.cdsPermissaoUsuario.FieldByName(Coluna).AsString  = sTrue then
      ImageList1.Draw(DBGridEhPermissoes.Canvas,Rect.Left+15,Rect.Top + 2,1)
    else
      ImageList1.Draw(DBGridEhPermissoes.Canvas,Rect.Left+15,Rect.Top + 2,0);
  end;

end;

procedure TformCadUsuario.dsNavegacaoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  DBGridEhPermissoes.ReadOnly := (DM.cdsUsuarioidtbusuario.Value = 1);
end;

procedure TformCadUsuario.dsNavegacaoStateChange(Sender: TObject);
begin
  inherited;
  DBGridEhPermissoes.Enabled := (DM.cdsUsuario.State in [dsBrowse]);
end;

procedure TformCadUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM.cdsUsuario.IndexFieldNames := '';
  //DM.cdsUsuario.Close;
end;

procedure TformCadUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  FNomeCadastro := 'Cadastro de Usuários';
end;

procedure TformCadUsuario.FormShow(Sender: TObject);
begin
  inherited;
  dsNavegacao.DataSet := DM.cdsUsuario;
  dsPermissaoUsuario.DataSet := dm.cdsPermissaoUsuario;
  DM.cdsPermissaoUsuario.Open;
  if not (DM.cdsUsuario.State in [dsEdit,dsInsert]) then
  begin
    DM.cdsUsuario.Open;
    DM.cdsUsuario.IndexFieldNames := 'NOME';
  end;
  AtualizaPermissao(True);
end;

procedure TformCadUsuario.SpeedButton1Click(Sender: TObject);
var
 s :String;
begin
  inherited;
   if DM.cdsPermissaoUsuario.State in [dsEdit,dsInsert] then
    DM.cdsPermissaoUsuario.Post;

  if (DM.cdsUsuarioidtbusuario.Value = 1) and ((Sender as TSpeedButton).Tag = 1) then
  begin
    Application.MessageBox('Esta opção não é válida para o usuário administrador.','Atenção',MB_OK+MB_ICONINFORMATION);
    Exit;
  end;

  if (Sender as TSpeedButton).Tag = 0 then
   s := sTrue
  else
   s := sFalse;

  try
     DM.cdsPermissaoUsuario.DisableControls;
     DM.cdsPermissaoUsuario.CachedUpdates := True;
     with DM.cdsPermissaoUsuario do
     begin
       First;
       while not Eof do
       begin
         Edit;
         FieldByName('VISUALIZAR').Value := S;
         FieldByName('INCLUIR').Value := S;
         FieldByName('ALTERAR').Value := S;
         FieldByName('EXCLUIR').Value := S;
         Post;
         Next;
       end;

     end;
  finally
    DM.cdsPermissaoUsuario.EnableControls;
     DM.cdsPermissaoUsuario.ApplyUpdates;
     DM.cdsPermissaoUsuario.CachedUpdates := False;
  end;

end;

procedure TformCadUsuario.AtualizaPermissao(Forcar : boolean = False);
begin
   if (dm.cdsPermissaoUsuarioidtbusuario.Value <> dm.cdsUsuarioidtbusuario.Value) or (Forcar) then
   begin
     dm.cdsPermissaoUsuario.Close;
     dm.cdsPermissaoUsuario.Params.ParamByName('pusuario').Value := dm.cdsUsuarioidtbusuario.Value;
     dm.cdsPermissaoUsuario.Open;
   end;
end;

end.

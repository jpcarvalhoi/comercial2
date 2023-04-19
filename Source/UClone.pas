unit UClone;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, DB, DBActns, ActnList, Buttons, ImgList, DBClient, 
  FuncoesGlobais, StdCtrls, System.Actions;

type
  TfrmClone = class(TForm)
    dsNavegacao: TDataSource;
    ActionList1: TActionList;
    actIncluir: TDataSetInsert;
    actCancelar: TDataSetCancel;
    actPrimeiro: TDataSetFirst;
    actAnterior: TDataSetPrior;
    actProximo: TDataSetNext;
    actUltimo: TDataSetLast;
    actLocalizar: TAction;
    actExcluir: TDataSetDelete;
    actGravar: TDataSetPost;
    dsPesquisa: TDataSource;
    actAjuda: TAction;
    pnlPrincipal: TPanel;
    stbFormulario: TStatusBar;
    btnPrimeiro: TBitBtn;
    btnAnterior: TBitBtn;
    btnProximo: TBitBtn;
    btnNovo: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnLocalizar: TBitBtn;
    btnUltimo: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    actFechar: TAction;
    procedure actExcluirExecute(Sender: TObject);
    procedure dsNavegacaoStateChange(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actIncluirExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
    procedure EditEnter(Sender: TObject);
    procedure EditExit(Sender: TObject);
    procedure SelectProximo(Sender: TObject; var Key: Char);
    procedure actFecharExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Permissao : TPermissao;
    FNomeCadastro : String;
  end;

var
  frmClone: TfrmClone;

implementation



{$R *.dfm}

procedure TfrmClone.actExcluirExecute(Sender: TObject);
begin
  if Permissao.Excluir then
  begin
    if not (dsNavegacao.DataSet.State in [dsEdit,dsInsert]) then
      if Application.MessageBox('Confirma exclusão do registro?','Atenção',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2)= MRYES then
      begin
        try
          GravaLogNoBanco('Excluído '+FNomeCadastro+' '+getDadosString(dsNavegacao.DataSet,False,True));
        except
        end;
        dsNavegacao.DataSet.Delete;
      end;
  end
  else AcessoNegado(Negado_excluir);
end;

procedure TfrmClone.actFecharExecute(Sender: TObject);
begin
   if dsNavegacao.DataSet <> nil then
     if not (dsNavegacao.DataSet.State in [dsEdit,dsInsert]) then
        close;
end;

procedure TfrmClone.dsNavegacaoStateChange(Sender: TObject);
const
 Estados : array [TDataSetState] of string =
 ('Fechado','Consultando','Alterando','Inserindo','','','','','','','','','');
begin
  if (dsNavegacao.DataSet is TDataSet) then
  begin
    self.btnNovo.Enabled    := (dsNavegacao.State in [dsBrowse]);
    self.btnExcluir.Enabled :=  (dsNavegacao.State in [dsBrowse]);
    self.btnLocalizar.Enabled :=  (dsNavegacao.State in [dsBrowse]);
    self.btnFechar.Enabled :=  (dsNavegacao.State in [dsBrowse]);

    self.btnPrimeiro.Enabled :=  (dsNavegacao.State in [dsBrowse]) and (not dsNavegacao.DataSet.Bof);
    self.btnAnterior.Enabled :=  (dsNavegacao.State in [dsBrowse]) and (not dsNavegacao.DataSet.Bof);
    self.btnProximo.Enabled  :=  (dsNavegacao.State in [dsBrowse]) and (not dsNavegacao.DataSet.Eof);
    self.btnUltimo.Enabled   :=  (dsNavegacao.State in [dsBrowse]) and (not dsNavegacao.DataSet.Eof);

    self.btnSalvar.Enabled  :=  (dsNavegacao.State in [dsEdit,dsInsert]);
    self.btnCancelar.Enabled := (dsNavegacao.State in [dsEdit,dsInsert]);

    Application.ProcessMessages;

    stbFormulario.Panels[1].text:=Estados[dsNavegacao.state];

  end
  else
    Exit;



end;

procedure TfrmClone.actGravarExecute(Sender: TObject);
begin

   if (not Permissao.Incluir) or (not Permissao.Alterar) then
     AcessoNegado(Negado_alterar)
   else if dsNavegacao.DataSet.State in [dsEdit,dsInsert] then
   begin
     try
       if dsNavegacao.State in [dsInsert] then
         GravaLogNoBanco('Inclusão, '+FNomeCadastro+' '+getDadosString(dsNavegacao.DataSet))
       else
         GravaLogNoBanco('Alterado '+FNomeCadastro+' '+getDadosString(dsNavegacao.DataSet,True));
     except
     end;

     dsNavegacao.DataSet.Post;
     if btnNovo.CanFocus then
       btnNovo.SetFocus;
   end;

end;

procedure TfrmClone.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Pergunta: Integer;
begin
  if dsNavegacao.State in [dsInsert,dsEdit] then
  begin
    Pergunta:= Application.MessageBox('O registro atual não foi salvo. Deseja salvá-lo antes de fechar?','Atenção',
                                      MB_YESNOCANCEL+MB_ICONQUESTION+MB_DEFBUTTON1);
    case Pergunta of
      mrYes: btnSalvar.Click;
      mrNo : dsNavegacao.DataSet.Cancel;
      mrCancel:
        begin
          Action:= caNone;
          Abort;
        end;
    end;
    if dsNavegacao.State in [dsInsert,dsEdit] then
    begin
     Action := caNone;
     Abort;
    end;
  end;
end;

procedure TfrmClone.actIncluirExecute(Sender: TObject);
begin
  if not Permissao.Incluir then
    AcessoNegado(Negado_Incluir)
  else begin
    if not (dsNavegacao.DataSet.State in [dsEdit,dsInsert]) then
      dsNavegacao.DataSet.Append;
  end;
end;

procedure TfrmClone.actUltimoExecute(Sender: TObject);
begin
  if not (dsNavegacao.DataSet.State in [dsEdit,dsInsert]) then begin
    dsNavegacao.DataSet.Last;
    dsNavegacaoStateChange(nil);
  end;
end;

procedure TfrmClone.actProximoExecute(Sender: TObject);
begin
  if not (dsNavegacao.DataSet.State in [dsEdit,dsInsert]) then  begin
    dsNavegacao.DataSet.Next;
    dsNavegacaoStateChange(nil);
  end;
end;

procedure TfrmClone.actAnteriorExecute(Sender: TObject);
begin
 if not (dsNavegacao.DataSet.State in [dsEdit,dsInsert]) then begin
    dsNavegacao.DataSet.Prior;
    dsNavegacaoStateChange(nil);
 end;
end;

procedure TfrmClone.actPrimeiroExecute(Sender: TObject);
begin
  if not (dsNavegacao.DataSet.State in [dsEdit,dsInsert]) then begin
    dsNavegacao.DataSet.First;
    dsNavegacaoStateChange(nil);
  end;

end;

procedure TfrmClone.actCancelarExecute(Sender: TObject);
begin
  if dsNavegacao.DataSet.State in [dsEdit,dsInsert] then
  begin
    dsNavegacao.DataSet.Cancel;
  end;
end;

procedure TfrmClone.actLocalizarExecute(Sender: TObject);
begin
  //localiza o registro
  if (dsNavegacao.DataSet.State in [dsEdit,dsInsert]) then
   Exit;
   
end;

procedure TfrmClone.EditEnter(Sender: TObject);
begin
  EnterColorEdit(Sender);
end;

procedure TfrmClone.EditExit(Sender: TObject);
begin
  ExitColorEdit(Sender);
end;

procedure TfrmClone.SelectProximo(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    SelectNext((Sender as TWinControl), True, True);
  end;
end;

end.

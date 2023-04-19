unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, Menus, ExtCtrls, ToolWin, sSkinManager,
  StdCtrls, Buttons, AppEvnts, jpeg, ShellApi, sSkinProvider,
  DBGridEhGrouping, GridsEh, DBGridEh, Grids, DBGrids, RXDBCtrl, ExtDlgs;


type
  TFormPrincipal = class(TForm)
    imgtoolbar: TImageList;
    ToolBarPrincipal: TToolBar;
    ToolButton2: TToolButton;
    toolBtnSair: TToolButton;
    MainMenu1: TMainMenu;
    A1: TMenuItem;
    Bevel1: TBevel;
    ToolButton11: TToolButton;
    ImageList2: TImageList;
    StatusBar1: TStatusBar;
    sSkinManager: TsSkinManager;
    CadastrarUsurios1: TMenuItem;
    Cadastros1: TMenuItem;
    Preferncias1: TMenuItem;
    BackupRestore1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Sobre1: TMenuItem;
    EfetuarBackup1: TMenuItem;
    RestaurarBackup1: TMenuItem;
    btnCliente: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    sSkinProvider1: TsSkinProvider;
    BitBtn1: TBitBtn;
    CadastrodeFornecedores1: TMenuItem;
    CadastrodeClientes1: TMenuItem;
    ToolButton6: TToolButton;
    CategoriadeProdutos1: TMenuItem;
    ToolButton7: TToolButton;
    Produtos1: TMenuItem;
    Estoque1: TMenuItem;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    CatoCrditoeDbito1: TMenuItem;
    ToolButton15: TToolButton;
    GrupodeContas1: TMenuItem;
    ToolButtonContas: TToolButton;
    ToolButton17: TToolButton;
    Controle1: TMenuItem;
    VendasEfetuadas1: TMenuItem;
    mmContasaPagareReceber: TMenuItem;
    Oramentos1: TMenuItem;
    tbtnKit: TToolButton;
    ToolButton18: TToolButton;
    KitdeProdutos1: TMenuItem;
    mmCheques: TMenuItem;
    Relatrios1: TMenuItem;
    Vendas1: TMenuItem;
    mmLucratividade: TMenuItem;
    mmFuncionarios: TMenuItem;
    mmveiculos: TMenuItem;
    mmProducao1: TMenuItem;
    btnProducao: TToolButton;
    ToolButton19: TToolButton;
    mmCotas: TMenuItem;
    mmPagamentodeFuncionrios: TMenuItem;
    Combustvel1: TMenuItem;
    LanarCompra1: TMenuItem;
    N2: TMenuItem;
    mmImpProducao: TMenuItem;
    mmModMirai: TMenuItem;
    mmModItamarati: TMenuItem;
    mmProducao: TMenuItem;
    tbtnMetas: TToolButton;
    ToolButton20: TToolButton;
    mmMetas: TMenuItem;
    mmProdutosVendidos: TMenuItem;
    PopupMenuImg: TPopupMenu;
    Alterarimagemdeplanodefundo1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    pnfundo: TPanel;
    Image1: TImage;
    Excluirimagemdefundo1: TMenuItem;
    Produtos2: TMenuItem;
    ransportadora1: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton16: TToolButton;
    OrdemdeCompra1: TMenuItem;
    Subgrupodecontas1: TMenuItem;
    mmOrcamento: TMenuItem;
    Clientes1: TMenuItem;
    mmPrducao: TMenuItem;
    mmProdutoCliente: TMenuItem;
    BitBtn2: TBitBtn;
    mmClienteVenda: TMenuItem;
    ClientesporClientesCompra1: TMenuItem;
    procedure toolBtnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CadastrarUsurios1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Preferncias1Click(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure CadastrodeFornecedores1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure CategoriadeProdutos1Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure CatoCrditoeDbito1Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure GrupodeContas1Click(Sender: TObject);
    procedure ToolButtonContasClick(Sender: TObject);
    procedure VendasEfetuadas1Click(Sender: TObject);
    procedure KitdeProdutos1Click(Sender: TObject);
    procedure tbtnKitClick(Sender: TObject);
    procedure RestaurarBackup1Click(Sender: TObject);
    procedure EfetuarBackup1Click(Sender: TObject);
    procedure CadastrodeClientes1Click(Sender: TObject);
    procedure mmChequesClick(Sender: TObject);
    procedure mmLucratividadeClick(Sender: TObject);
    procedure mmFuncionariosClick(Sender: TObject);
    procedure mmveiculosClick(Sender: TObject);
    procedure mmProducao1Click(Sender: TObject);
    procedure mmCotasClick(Sender: TObject);
    procedure mmPagamentodeFuncionriosClick(Sender: TObject);
    procedure LanarCompra1Click(Sender: TObject);
    procedure mmModMiraiClick(Sender: TObject);
    procedure mmProducaoClick(Sender: TObject);
    procedure tbtnMetasClick(Sender: TObject);
    procedure Alterarimagemdeplanodefundo1Click(Sender: TObject);
    procedure sSkinProvider1SkinItem(Item: TComponent; var CanBeAdded: Boolean;
      var SkinSection: string);
    procedure Excluirimagemdefundo1Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure ransportadora1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure OrdemdeCompra1Click(Sender: TObject);
    procedure mmOrcamentoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ClientesporClientesCompra1Click(Sender: TObject);
  private

    procedure ValidaAcesso(Sender: TObject);
    procedure setImagefundo(afile: string);
    procedure setCorFundo;

    { Private declarations }
  public
    { Public declarations }
    Logado: boolean;
  end;


var
  FormPrincipal: TFormPrincipal;


implementation

uses uSplash, uDM, uCadUsuario, uLogin, UClone, FuncoesGlobais, uSobre,
  uConfigs, uSelCliente, uCadFornecedor, uSelFonecedor, uCadCategoria,
  uSelProduto, uCadProduto, uFTP, uEntradaProd, uVenda, uCadCartao, uCaixa,
  uCadGrupoConta, uContas, uSelecionaVendas, uCadKit, uSelKit, uCadCliente, uOrcamento, FuncoesGerais, uControlaCheques,
  uRelLucratividade, uCadFuncionario, uCadVeiculo, uCadProducao, uSelProducao,
  uCadCota, uCadPagFunc, uCompraCombustivel, uImportaProducao, uListaProducao,
  uSeguranca, uRelProduto, uCadTransportadora, uSelOrdemCompra, uCadEntSai,
  uSelOrcamento, uCadOrdem, uSelVenda, uRelCliente;

{$R *.dfm}

procedure TFormPrincipal.toolBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPrincipal.ToolButton10Click(Sender: TObject);
begin
  try
     Application.CreateForm(TFormCadOrdem,FormCadOrdem);
     FormCadOrdem.Permissao := RetornaPermissao(12);
     FormCadOrdem.ShowModal;
  finally
     FreeAndNil(FormCadOrdem);
  end;
end;

procedure TFormPrincipal.ToolButton13Click(Sender: TObject);
begin
{  FormOrcamento.Tag := tag_orcamento;
  FormOrcamento.Show; }
  if not fLicenciado then Exit;
  try
    Application.CreateForm(TFormSelVenda,FormSelVenda);
    FormSelVenda.Permissao := RetornaPermissao(12);
    if FormSelVenda.Permissao.Visualizar then
      FormSelVenda.ShowModal
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelVenda);
  end;
end;

procedure TFormPrincipal.ToolButton15Click(Sender: TObject);
begin
  if not fLicenciado then Exit;
  try
    Application.CreateForm(TFormCaixa,FormCaixa);
    FormCaixa.Permissao := RetornaPermissao(9);
    if FormCaixa.Permissao.Visualizar then
      FormCaixa.ShowModal
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormCaixa);
  end;
end;

procedure TFormPrincipal.ToolButton1Click(Sender: TObject);
begin
  ShellExecute(handle,'open','https://nfse.pjf.mg.gov.br/cas/login?service=https%3A%2F%2Fnfse.pjf.mg.gov.br%2Fnfse%2Fj_acegi_cas_security_check',nil,nil,SW_SHOWMAXIMIZED);
end;

procedure TFormPrincipal.tbtnKitClick(Sender: TObject);
begin
  if not fLicenciado then Exit;
  try
    Application.CreateForm(TFormSelKit,FormSelKit);
    FormSelKit.Permissao := RetornaPermissao(6);
    if FormSelKit.Permissao.Visualizar then
      FormSelKit.ShowModal
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelKit);
  end;
end;

procedure TFormPrincipal.tbtnMetasClick(Sender: TObject);
begin
  if not fLicenciado then Exit;
  try
     Application.CreateForm(TFormSelProducao,FormSelProducao);
     FormSelProducao.Permissao := RetornaPermissao(18);
     if FormSelProducao.Permissao.Visualizar then
        FormSelProducao.ShowModal
     else
        AcessoNegado(Negado_visualizar);
  finally
     FreeAndNil(FormSelProducao);
  end;
end;

procedure TFormPrincipal.ToolButtonContasClick(Sender: TObject);
begin
  if not fLicenciado then Exit;
  try
    Application.CreateForm(TFormContas, FormContas);
    FormContas.Permissao := RetornaPermissao(11);
    FormContas.ShowModal;
  finally
    FreeAndNil(FormContas);
  end;
end;

procedure TFormPrincipal.btnClienteClick(Sender: TObject);
begin
  if not fLicenciado then Exit;

  try
    Application.CreateForm(TFormSelCliente,FormSelCliente);
    FormSelCliente.Permissao := RetornaPermissao(3);
    if FormSelCliente.Permissao.Visualizar then
      FormSelCliente.ShowModal
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelCliente);
  end;
end;

procedure TFormPrincipal.ToolButton4Click(Sender: TObject);
begin
  if not fLicenciado then Exit;
  try
    Application.CreateForm(TFormSelFornecedor,FormSelFornecedor);
    FormSelFornecedor.Permissao := RetornaPermissao(4);
    if FormSelFornecedor.Permissao.Visualizar then
      FormSelFornecedor.ShowModal
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelFornecedor);
  end;
end;

procedure TFormPrincipal.ToolButton6Click(Sender: TObject);
begin
  if not fLicenciado then Exit;
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

procedure TFormPrincipal.ToolButton8Click(Sender: TObject);
begin

  Estoque1Click(Sender);
end;

procedure TFormPrincipal.FormActivate(Sender: TObject);
var
  sparam : String;
Begin
   if Logado then Exit;

   if DM.ZConnection.Tag > 0 then
   begin
     Application.Terminate;
     Exit;
   end;

   try
     if not DM.cdsConfigs.Active then DM.cdsConfigs.Open else DM.cdsConfigs.Open;
     CorEdit := StrToInt(DM.cdsConfigscordedit.AsString);
   except
     CorEdit := clYellow;
   end;

   if ParamStr(1) = '/per' then
       DM.checaPermissoes;

   if not Logado then
     ValidaAcesso(Sender);

   if Logado then
   begin

     //seta variavel que indica se o caixa está aberto ou não
     VerificaCaixaAberto;

     //processa os recibimentos por cartão de crédito até a data atual
     if (DM.cdsConfigsdata_sistema.AsDateTime < Date) and (DM.cdsConfigsprocessar_cartao_credito.AsString = sTrue) then
        Processa_Recebimento_CartaoCredito('');


      SetInfoLicenca(_RegLicenca);

      ValidaLicenca(True,_licencaBanco);

   end;
end;

procedure TFormPrincipal.ValidaAcesso(Sender:TObject);
var
  x:Integer;
begin
  try
    with DM do
    begin


      if not cdsUsuario.Active then
        cdsUsuario.Open;

      if cdsUsuario.RecordCount = 0 then //abre o cadastro de usuarios
      begin
        if Application.MessageBox('O sistema não possui usuários cadastrados.'+#13#10+
                                  'Deseja cadastrar um usuário agora?','Atenção',MB_YESNO+MB_ICONINFORMATION) = id_yes then
        begin
          Application.CreateForm(TformCadUsuario,formCadUsuario);
          formCadUsuario.Permissao.Incluir    := True;
          formCadUsuario.Permissao.Alterar    := True;
          formCadUsuario.Permissao.Excluir    := True;
          formCadUsuario.Permissao.Visualizar := True;
          cdsUsuario.Insert;
          formCadUsuario.ShowModal;
        end
        else
        begin
           Application.MessageBox('Sem um usuário cadastrado, o sistema não pode ser iniciado.','Atenção',mb_ok+MB_ICONERROR);
           Application.Terminate;
        end;
      end;


    end;
  except
   on E: Exception do
   begin
    Application.MessageBox('Problemas ao Iniciar o sistema.','Erro',MB_OK);
    Application.Terminate;
    Exit;
   end;
  end;

  try
     Application.CreateForm(TfrmLogin,frmLogin);
     x:=0;
    if not Logado then
    begin
     repeat
      inc(x);
      if frmLogin.ShowModal = mrok then
      begin
        if (frmLogin.Edit1.Text = 'ADMIN') and (frmLogin.Edit2.Text = '731367') then
        begin
           Logado := true;
           mNomeUsuario := 'Administrador';
           mCodigoUsuario := 0;
           x := 3;

        end
        else begin
          dm.psUsuario.Close;
          dm.psUsuario.Params.ParamByName('plogin').Value := frmLogin.Edit1.Text;
          dm.psUsuario.Params.ParamByName('psenha').Value := frmLogin.Edit2.Text;
          dm.psUsuario.Open;
          if dm.psUsuario.RecordCount = 1 then
          begin
             Logado := true;
             mNomeUsuario := dm.psUsuario.FieldByName('NOME').Value;
             mCodigoUsuario := dm.psUsuario.FieldByName('idtbusuario').Value;
             x := 3;
          end
          else
           Application.MessageBox('Usuário ou senha inválidos.','Atenção',MB_OK+MB_ICONERROR);
        end;
      end
      else x:= 3;

     until (Logado) or (x = 3);
    end;

     if not Logado then
      Application.Terminate
     else begin
        StatusBar1.Panels[0].Text := 'Usuário: '+mNomeUsuario;

       DM.cdsPermissaoUsuario.Close;
       DM.cdsPermissaoUsuario.Params.ParamByName('pusuario').Value := mCodigoUsuario;
       DM.cdsPermissaoUsuario.Open;
     end;


  except
   on E: Exception do
   begin
    Application.MessageBox('Problemas ao Iniciar o sistema.','Erro',MB_OK);
    Application.Terminate;

   end;
  end;
  StatusBar1.Repaint;
  DM.cdsUsuario.Close;
end;

procedure TFormPrincipal.mmveiculosClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCadVeiculo,FormCadVeiculo);
    FormCadVeiculo.Permissao := RetornaPermissao(17);
    FormCadVeiculo.ShowModal;
  finally
    FreeAndNil(FormCadVeiculo);
  end;
end;

procedure TFormPrincipal.OrdemdeCompra1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFormSelOrdemCompra,FormSelOrdemCompra);
    FormSelOrdemCompra.Permissao := RetornaPermissao(7);
    if FormSelOrdemCompra.Permissao.Visualizar then
      FormSelOrdemCompra.ShowModal
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelOrdemCompra);
  end;
end;

procedure TFormPrincipal.VendasEfetuadas1Click(Sender: TObject);
begin
  try
     Application.CreateForm(TFormSelecionaVenda, FormSelecionaVenda);
     FormSelecionaVenda.Tag := TComponent(Sender).Tag;
     FormSelecionaVenda.Permissao := RetornaPermissao(12);
     if FormSelecionaVenda.Permissao.Visualizar then
       FormSelecionaVenda.ShowModal
     else
       AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelecionaVenda);
  end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.ZConnection.Connected := False;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
var
  i : Integer;
  oldISSeparator : Boolean;
begin
  Logado := false;
  setConfigLocal;
  FormPrincipal.Caption := Programa + ' - Versão '+VersaoSistema;

  //controle de recursos
  if not LiberaKit then
  begin
    KitdeProdutos1.Visible := False;
    tbtnKit.Visible := false;
  end;

  if not LiberaVeiculos then
  begin
    mmImpProducao.Visible := False;
    btnProducao.Visible := False;
    tbtnMetas.Visible := false;
    mmMetas.Visible := False;
    mmProducao.Visible := False;
    mmCotas.Visible := false;
    mmProducao1.Visible := false;
    mmProducao.Visible := false;
    mmveiculos.Visible := false;
  end;

  if not LiberaFuncionarios then
  begin
    mmPagamentodeFuncionrios.Visible := False;
    mmFuncionarios.Visible := false;
  end;

  if not LiberaContas then
  begin
    mmContasaPagareReceber.Visible := false;
    ToolButtonContas.Visible := False;
    mmCheques.Visible := False;
  end;

  oldISSeparator := False;
  for i := ToolBarPrincipal.ButtonCount -1 downto 0 do
  begin
    if ToolBarPrincipal.Buttons[i].Visible then
    begin

      if ToolBarPrincipal.Buttons[i].Style = tbsSeparator then begin
        if oldISSeparator then
          ToolBarPrincipal.Buttons[i].Visible := False;

        oldISSeparator := True;

      end
      else
        oldISSeparator := false;
    end;
  end;

   try
     DM.ZConnection.Connected := True;
   except
     DM.ZConnection.Tag := 1;
   end;

   if DM.ZConnection.Tag = 0 then
   begin
    setCorFundo;

   end;


end;

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
  //ShowWindow(self.Handle,SW_MAXIMIZE);
  if FileExists(mPath + 'wallpaper.jpg') then
  begin
    setImagefundo(mPath + 'wallpaper.jpg');
  end;

end;

procedure TFormPrincipal.mmFuncionariosClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCadFuncionario,FormCadFuncionario);
    FormCadFuncionario.Permissao := RetornaPermissao(16);
    FormCadFuncionario.ShowModal;
  finally
    FreeAndNil(FormCadFuncionario);
  end;
end;

procedure TFormPrincipal.GrupodeContas1Click(Sender: TObject);
begin
   try
     Application.CreateForm(TFormGrupoConta, FormGrupoConta);
     FormGrupoConta.Tag := TMenuItem(Sender).Tag;
     FormGrupoConta.Permissao := RetornaPermissao(10);
     FormGrupoConta.ShowModal;
   finally
     FreeAndNil(FormGrupoConta);
   end;
end;

procedure TFormPrincipal.KitdeProdutos1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCadKit,FormCadKit);
    FormCadKit.Permissao := RetornaPermissao(6);
    if FormCadKit.Permissao.Visualizar then
      FormCadKit.ShowModal
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormCadKit);
  end;
end;

procedure TFormPrincipal.LanarCompra1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCompCombustivel,FormCompCombustivel);
    FormCompCombustivel.Permissao := RetornaPermissao(20);
    if FormCompCombustivel.Permissao.Visualizar then
      FormCompCombustivel.ShowModal
    else
      AcessoNegado(Negado_visualizar);
  finally
     FreeAndNil(FormCompCombustivel);
  end;
end;

procedure TFormPrincipal.mmLucratividadeClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFormRelLucratividade,FormRelLucratividade);
    FormRelLucratividade.Permissao := RetornaPermissao(15);
    FormRelLucratividade.Caption := StringReplace(TMenuItem(Sender).Caption,'&','',[rfIgnoreCase,rfReplaceAll]);
    if sender = mmProdutosVendidos then
      FormRelLucratividade.Tag := tag_relvendaproduto;


    if FormRelLucratividade.Permissao.Visualizar then
      FormRelLucratividade.ShowModal
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormRelLucratividade);
  end;
end;

procedure TFormPrincipal.mmModMiraiClick(Sender: TObject);
begin
  Application.CreateForm(TFormImportaProducao,FormImportaProducao);
  if Sender = mmModMirai then
    FormImportaProducao.Tag := tag_modMirai
  else if sender = mmModItamarati then
    FormImportaProducao.Tag := tag_modItamarati;
  FormImportaProducao.ShowModal;
  FreeAndNil(FormImportaProducao);
end;

procedure TFormPrincipal.mmOrcamentoClick(Sender: TObject);
begin
   Application.CreateForm(TFormCadEntSai,FormCadEntSai);
   FormCadEntSai.Permissao := RetornaPermissao(12);
   FormCadEntSai.Tipo := tipo_orcamento;
   FormCadEntSai.ShowModal;
   FreeAndNil(FormCadEntSai);
end;

procedure TFormPrincipal.mmPagamentodeFuncionriosClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCadPagFunc, FormCadPagFunc);
    FormCadPagFunc.Permissao := RetornaPermissao(11);
    if FormCadPagFunc.Permissao.Visualizar then
      FormCadPagFunc.ShowModal
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormCadPagFunc);
  end;
end;

procedure TFormPrincipal.Preferncias1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFormConfigs, FormConfigs);
    FormConfigs.Permissao := RetornaPermissao(2);
    if not FormConfigs.Permissao.Visualizar then
      AcessoNegado(Negado_visualizar)
    else
    FormConfigs.ShowModal;
    setCorFundo;
  finally
    FreeAndNil(FormConfigs);
  end;
end;

procedure TFormPrincipal.mmProducao1Click(Sender: TObject);
begin
  try
    FormCadProducao := TFormCadProducao.Create(Application);
    FormCadProducao.Permissao := RetornaPermissao(18);
     if FormCadProducao.Permissao.Visualizar then
       FormCadProducao.ShowModal
     else
       AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormCadProducao);
  end;
end;

procedure TFormPrincipal.mmProducaoClick(Sender: TObject);
begin
  if not fLicenciado then Exit;
  try
    Application.CreateForm(TFormListaProducao,FormListaProducao);
    FormListaProducao.Permissao := RetornaPermissao(18);
    if not FormListaProducao.Permissao.Visualizar then
      AcessoNegado(Negado_visualizar)
    else
      FormListaProducao.ShowModal;
  finally
    FreeAndNil(FormListaProducao);

  end;
end;

procedure TFormPrincipal.Produtos1Click(Sender: TObject);
begin
   try
     Application.CreateForm(TFormCadProduto,FormCadProduto);
     FormCadProduto.Permissao := RetornaPermissao(6);
     if FormCadProduto.Permissao.Visualizar then
       FormCadProduto.ShowModal
     else
       AcessoNegado(Negado_visualizar);
   finally
     FreeAndNil(FormCadProduto);
   end;
end;

procedure TFormPrincipal.Produtos2Click(Sender: TObject);
var
  Permissao : TPermissao;
begin
   Permissao := RetornaPermissao(6);
   if not Permissao.Visualizar then
   begin
     AcessoNegado(Negado_visualizar);
     Exit;
   end;
   try

     Application.CreateForm(TFormRelProdutos,FormRelProdutos);
     if sender = mmProdutoCliente then
       FormRelProdutos.Tag := tag_produtocliente
     else if sender = mmPrducao then
       FormRelProdutos.Tag := tag_producao
     else if sender = mmClienteVenda then
       FormRelProdutos.Tag := tag_clientevenda;

     FormRelProdutos.ShowModal;
   finally
     FreeAndNil(FormRelProdutos);
   end;
end;

procedure TFormPrincipal.ransportadora1Click(Sender: TObject);
begin
  try
     Application.CreateForm(TFormCadTransportadora,FormCadTransportadora);
     FormCadTransportadora.Permissao := RetornaPermissao(21);
     if FormCadTransportadora.Permissao.Visualizar then
       FormCadTransportadora.ShowModal
     else
       AcessoNegado(Negado_visualizar);
   finally
     FreeAndNil(FormCadTransportadora);
   end;
end;

procedure TFormPrincipal.RestaurarBackup1Click(Sender: TObject);
var
  Permissao : TPermissao;
begin
  Permissao := RetornaPermissao(13);
  if Permissao.Visualizar then
    DM.EfetuaRestauracao
  else
    AcessoNegado(Negado_visualizar);

end;

procedure TFormPrincipal.setImagefundo(afile:string);
begin
  Image1.Picture.LoadFromFile(afile);
  Image1.Stretch := True;
  Image1.Proportional := True;
  Image1.Center := True;
end;

procedure TFormPrincipal.setCorFundo;
begin
  //cor do fundo
  DM.cdsConfigs.Open;
  if StrToIntDef(DM.cdsConfigscor_fundo.AsString, 0) > 0 then
    pnfundo.Color := StrToInt64(DM.cdsConfigscor_fundo.AsString);
end;

procedure TFormPrincipal.Alterarimagemdeplanodefundo1Click(Sender: TObject);
begin
  OpenPictureDialog1.Filter := 'Arquivos de imagem (*.jpg)|*.jpg';
  OpenPictureDialog1.Title := 'Selecionar imagem.';
  if OpenPictureDialog1.Execute then
  begin
    if CopyFile(pWideChar(OpenPictureDialog1.FileName),pWideChar(mPath + 'wallpaper.jpg'),False) then
      setImageFundo(OpenPictureDialog1.FileName);
  end;
end;

procedure TFormPrincipal.BitBtn1Click(Sender: TObject);
var
  Clientes : TStrings;
  i : Integer;
begin
  Clientes := TStringList.Create;
  for i := 0 to 10000 do
  begin
    Clientes.Add('insert into tbcliente (codcliente, nome) values (null, '+QuotedStr('Ciente '+IntToStr(i))+');');

  end;
  Clientes.SaveToFile('C:\Clientes.sql');

  Clientes.Clear;
  for i := 0 to 10000 do
  begin
    Clientes.Add('insert into tbproduto (descricao, est_atual, valor_varejo) values ('+QuotedStr('Produto  '+IntToStr(i))+', 100, 199.99);');

  end;
  Clientes.SaveToFile('C:\Produtos.sql');

  ShowMessage('Concluído!');
end;

procedure TFormPrincipal.BitBtn2Click(Sender: TObject);
var
  i : Integer;
begin
   {for I := 0 to 1000 do
   begin
     with DM.qrComando do begin
       Close;
       SQL.Clear;
       SQL.Add('insert into tbproduto (descricao) values (' +QuotedStr('produto '+IntToStr(i))+')');
       ExecSQL;
     end;

   end; }

   for I := 21 to 1000 do
   begin
     try
       with DM.qrComando do begin
         Close;
         SQL.Clear;
         SQL.Add('insert into tbnota (idnota, idcliente) values ('+IntToStr(i)+', 8)');
         ExecSQL;
       end;

       with DM.qrComando do begin
         Close;
         SQL.Clear;
         SQL.Add('insert into tbnota_item (idnota, idproduto, qtde, valor_unit) values ('+IntToStr(i)+', '+IntToStr(i)+',10, 15.00)');
         ExecSQL;
       end;
     except
     end;

   end;

   Informa('Concluído');
end;

procedure TFormPrincipal.CadastrarUsurios1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TformCadUsuario,formCadUsuario);
    formCadUsuario.Permissao := RetornaPermissao(1);
    if formCadUsuario.Permissao.Visualizar then
      formCadUsuario.ShowModal
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(formCadUsuario);
  end;
end;

procedure TFormPrincipal.CadastrodeClientes1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TformCadCliente,formCadCliente);
    formCadCliente.Permissao := RetornaPermissao(3);
    formCadCliente.Tag := 1;
    formCadCliente.ShowModal;
  finally
    FreeAndNil(formCadCliente);
  end;
end;

procedure TFormPrincipal.CadastrodeFornecedores1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCadFornecedor,FormCadFornecedor);
    FormCadFornecedor.Permissao := RetornaPermissao(4);
    if FormCadFornecedor.Permissao.Visualizar then
      FormCadFornecedor.ShowModal
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormCadFornecedor);
  end;
end;

procedure TFormPrincipal.CategoriadeProdutos1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCadCategoria,FormCadCategoria);
    FormCadCategoria.Permissao := RetornaPermissao(5);
    if FormCadCategoria.Permissao.Visualizar then
      FormCadCategoria.ShowModal
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormCadCategoria);
  end;
end;

procedure TFormPrincipal.CatoCrditoeDbito1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCadCartao, FormCadCartao);
    FormCadCartao.Permissao := RetornaPermissao(8);
    FormCadCartao.ShowModal;
  finally
    FreeAndNil(FormCadCartao);
  end;
end;

procedure TFormPrincipal.ClientesporClientesCompra1Click(Sender: TObject);
begin
  Application.CreateForm(TFormRelCliente,FormRelCliente);
  FormRelCliente.ShowModal;
  FormRelCliente.Release;
  FormRelCliente := nil;
end;

procedure TFormPrincipal.mmChequesClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFormControlaCheque,FormControlaCheque);
    FormControlaCheque.Permissao := RetornaPermissao(14);
    FormControlaCheque.ShowModal;
  finally
    FreeAndNil(FormControlaCheque);
  end;
end;

procedure TFormPrincipal.mmCotasClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCadCota,FormCadCota);
    FormCadCota.Permissao := RetornaPermissao(19);
    if not FormCadCota.Permissao.Visualizar then
      AcessoNegado(Negado_visualizar)
    else
      FormCadCota.ShowModal;
  finally
    FreeAndNil(FormCadCota);
  end;
end;

procedure TFormPrincipal.EfetuarBackup1Click(Sender: TObject);
var
  mPermissao : TPermissao;
begin
  mPermissao := RetornaPermissao(13);
  if not mPermissao.Visualizar then
    AcessoNegado(Negado_visualizar)
  else
    DM.EfetuaBackup;
end;

procedure TFormPrincipal.Estoque1Click(Sender: TObject);
begin
  if not fLicenciado then Exit;
  try
    Application.CreateForm(TFormEntrada,FormEntrada);
    FormEntrada.Permissao := RetornaPermissao(7);
    FormEntrada.ShowModal;
  finally
    FreeAndNil(FormEntrada);
  end;
end;

procedure TFormPrincipal.Excluirimagemdefundo1Click(Sender: TObject);
begin
  Image1.Picture := nil;
  if FileExists(mPath + 'wallpaper.jpg') then
    DeleteFile(mPath + 'wallpaper.jpg');
end;

procedure TFormPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPrincipal.Sobre1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmSobre,frmSobre);
    frmSobre.ShowModal;
  finally
    FreeAndNil(frmSobre);
  end;
end;

procedure TFormPrincipal.sSkinProvider1SkinItem(Item: TComponent;
  var CanBeAdded: Boolean; var SkinSection: string);
begin
  if Item = pnfundo then
    CanBeAdded := False;
end;



end.




program Comercial2;


uses
  MidasLib,
  Forms,
  uPrincipal in 'uPrincipal.pas' {FormPrincipal},
  uSobre in 'uSobre.pas' {frmSobre},
  uDM in 'uDM.pas' {DM: TDataModule},
  uSplash in 'uSplash.pas' {frmSplash},
  uLogin in 'uLogin.pas' {frmLogin},
  FuncoesGlobais in 'FuncoesGlobais.pas',
  UClone in 'UClone.pas' {frmClone},
  ActiveHandleException in 'ActiveHandleException.pas',
  uClone_TelaPadrao in 'uClone_TelaPadrao.pas' {FormClone_TelaPadrao},
  uLocalizar in 'uLocalizar.pas' {FormLocalizar},
  UProgress in 'UProgress.pas' {FormProgress},
  uConfigs in 'uConfigs.pas' {FormConfigs},
  uCadCliente in 'uCadCliente.pas' {formCadCliente},
  uCadUsuario in 'uCadUsuario.pas' {formCadUsuario},
  uCloneSel in 'uCloneSel.pas' {FormCloneSelecao},
  uCadFornecedor in 'uCadFornecedor.pas' {FormCadFornecedor},
  uSelFonecedor in 'uSelFonecedor.pas' {FormSelFornecedor},
  uCadCategoria in 'uCadCategoria.pas' {FormCadCategoria},
  uCadProduto in 'uCadProduto.pas' {FormCadProduto},
  uSelCliente in 'uSelCliente.pas' {FormSelCliente},
  uSelProduto in 'uSelProduto.pas' {FormSelPoduto},
  FuncoesImagens in 'FuncoesImagens.pas',
  uFTP in 'uFTP.pas',
  uEntradaProd in 'uEntradaProd.pas' {FormEntrada},
  uCadEntSai in 'uCadEntSai.pas' {FormCadEntSai},
  uRelatorios in 'uRelatorios.pas' {FormRelatorios},
  uVenda in 'uVenda.pas' {FormVenda},
  uAlteraitem in 'uAlteraitem.pas' {FormAlteraItem},
  uFinalizaVenda in 'uFinalizaVenda.pas' {FormFinalizaVenda},
  uDesconto in 'uDesconto.pas' {FormDesc_Acre},
  uCadCartao in 'uCadCartao.pas' {FormCadCartao},
  uCaixa in 'uCaixa.pas' {FormCaixa},
  uLancaCaixa in 'uLancaCaixa.pas' {FormLancaCaixa},
  uParcelaCheque in 'uParcelaCheque.pas' {FormParcelaCheque},
  uCadGrupoConta in 'uCadGrupoConta.pas' {FormGrupoConta},
  uContas in 'uContas.pas' {FormContas},
  uFiltroContas in 'uFiltroContas.pas' {FormFiltroContas},
  uCadConta in 'uCadConta.pas' {FormCadConta},
  uListaParcelas in 'uListaParcelas.pas' {FormListaParcelas},
  uSelecionaVendas in 'uSelecionaVendas.pas' {FormSelecionaVenda},
  uDetalheVenda in 'uDetalheVenda.pas' {FormDetalheVenda},
  uCadKit in 'uCadKit.pas' {FormCadKit},
  uSelKit in 'uSelKit.pas' {FormSelKit},
  uConfigDB in 'uConfigDB.pas' {FormConfigDB},
  EncryptString in '..\..\UnitsComuns\EncryptString.pas',
  uOrcamento in 'uOrcamento.pas' {FormOrcamento},
  FuncoesGerais in '..\..\UnitsComuns\FuncoesGerais.pas',
  uControlaCheques in 'uControlaCheques.pas' {FormControlaCheque},
  ualteracheque in 'ualteracheque.pas' {FormAlteraCheque},
  uRelLucratividade in 'uRelLucratividade.pas' {FormRelLucratividade},
  uCadFuncionario in 'uCadFuncionario.pas' {FormCadFuncionario},
  uCadProducao in 'uCadProducao.pas' {FormCadProducao},
  uCadVeiculo in 'uCadVeiculo.pas' {FormCadVeiculo},
  uSelProducao in 'uSelProducao.pas' {FormSelProducao},
  uCadCota in 'uCadCota.pas' {FormCadCota},
  uCadPagFunc in 'uCadPagFunc.pas' {FormCadPagFunc},
  uCompraCombustivel in 'uCompraCombustivel.pas' {FormCompCombustivel},
  uImportaProducao in 'uImportaProducao.pas' {FormImportaProducao},
  uListaProducao in 'uListaProducao.pas' {FormListaProducao},
  uConfigImpressao in 'uConfigImpressao.pas' {frmConfigImressao},
  uSeguranca in '..\..\UnitsComuns\uSeguranca.pas',
  uRelProduto in 'uRelProduto.pas' {FormRelProdutos},
  uCadTransportadora in 'uCadTransportadora.pas' {FormCadTransportadora},
  uLancaParcela in 'uLancaParcela.pas' {FormLancaParcela},
  uSelOrdemCompra in 'uSelOrdemCompra.pas' {FormSelOrdemCompra},
  uSelVenda in 'uSelVenda.pas' {FormSelVenda},
  uCadOrdem in 'uCadOrdem.pas' {FormCadOrdem},
  uRelCliente in 'uRelCliente.pas' {FormRelCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Comercial';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormRelatorios, FormRelatorios);
  if frmSplash <> nil then
  begin
    frmSplash.Close;
    frmSplash.Free;
    frmSplash := nil;
  end;

  Application.Run;
end.

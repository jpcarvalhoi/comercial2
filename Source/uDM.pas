unit uDM;

interface

uses
  SysUtils, Classes, DB, SqlExpr, IniFiles, Forms, Windows,
  Messages, Dialogs, Controls, FMTBcd, DBClient, Provider, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSequence, ZAbstractTable,
  ZSqlUpdate, ZSqlProcessor, RxQuery, ExtCtrls, FuncoesGlobais, uFinalizaVenda,
  Variants, ZAbstractConnection;

type
  TDM = class(TDataModule)
    ZConnection: TZConnection;
    qrComando: TZQuery;
    cdsUsuario: TZTable;
    cdsUsuarioidtbusuario: TIntegerField;
    cdsUsuarionome: TWideStringField;
    cdsUsuariologin: TWideStringField;
    cdsUsuariosenha: TWideStringField;
    psUsuario: TZQuery;
    cdsPermissaoUsuario: TZQuery;
    cdsPermissaoUsuarioidtbusuario: TIntegerField;
    cdsPermissaoUsuarioidtbpermissao: TIntegerField;
    cdsPermissaoUsuarioalterar: TWideStringField;
    cdsPermissaoUsuarioincluir: TWideStringField;
    cdsPermissaoUsuarioexcluir: TWideStringField;
    cdsPermissaoUsuariovisualizar: TWideStringField;
    cdsPermissaoUsuariodescricao: TWideStringField;
    ZUpdatePermissao: TZUpdateSQL;
    cdsConfigs: TZQuery;
    cdsConfigsid: TIntegerField;
    cdsConfigsrazaosocial: TWideStringField;
    cdsConfigscnpj: TWideStringField;
    cdsConfigsendereco: TWideStringField;
    cdsConfigsbairro: TWideStringField;
    cdsConfigscidade: TWideStringField;
    cdsConfigsuf: TWideStringField;
    cdsConfigstelefone: TWideStringField;
    cdsConfigsemail: TWideStringField;
    cdsConfigscep: TWideStringField;
    cdsConfigsnumero: TWideStringField;
    cdsConfigscomplemento: TWideStringField;
    cdsConfigsfax: TWideStringField;
    cdsConfigscordedit: TWideStringField;
    qrInsertLog: TZQuery;
    qrInsertLogidtblog: TIntegerField;
    qrInsertLogusuario: TWideStringField;
    qrInsertLogsistema: TWideStringField;
    cdsCliente: TZQuery;
    cdsClientecodcliente: TIntegerField;
    cdsClientenome: TWideStringField;
    cdsClientedocumento: TWideStringField;
    cdsClienteendereco: TWideStringField;
    cdsClientebairro: TWideStringField;
    cdsClientecidade: TWideStringField;
    cdsClienteuf: TWideStringField;
    cdsClientetelefone: TWideStringField;
    cdsClientecelular: TWideStringField;
    cdsClienterg: TWideStringField;
    cdsClientecep: TWideStringField;
    cdsClienteemail: TWideStringField;
    cdsClientedtaniversario: TDateField;
    cdsClientedtcadastro: TDateField;
    cdsClientedtalteracao: TDateField;
    cdsClientesalario: TFloatField;
    qrLasID: TZQuery;
    qrLasIDID: TLargeintField;
    qrVersao: TZQuery;
    qrVersaoidtbversao: TIntegerField;
    qrVersaoversao: TSmallintField;
    ZSQLProcessor: TZSQLProcessor;
    cdsFornecedor: TZQuery;
    cdsFornecedoridfornecedor: TIntegerField;
    cdsFornecedorrazao: TWideStringField;
    cdsFornecedorcnpj: TWideStringField;
    cdsFornecedorendereco: TWideStringField;
    cdsFornecedorbairro: TWideStringField;
    cdsFornecedorcidade: TWideStringField;
    cdsFornecedorcep: TWideStringField;
    cdsFornecedoruf: TWideStringField;
    cdsFornecedorcontato: TWideStringField;
    cdsFornecedortel: TWideStringField;
    cdsFornecedortel2: TWideStringField;
    cdsFornecedoremail: TWideStringField;
    cdsFornecedorsite: TWideStringField;
    cdsFornecedorinscricao_estadual: TWideStringField;
    cdsFornecedordtcadastro: TDateField;
    cdsFornecedordtalteracao: TDateField;
    cdsCategoria: TZQuery;
    cdsCategoriaidcategoria: TIntegerField;
    cdsCategoriadescricao: TWideStringField;
    qrPermissao: TZQuery;
    qrPermissaoidtbpermissao: TIntegerField;
    qrPermissaodescricao: TWideStringField;
    cdsProduto: TZQuery;
    cdsProdutoidproduto: TIntegerField;
    cdsProdutocodbarras: TWideStringField;
    cdsProdutodescricao: TWideStringField;
    cdsProdutovalor_custo: TFloatField;
    cdsProdutovalor_varejo: TFloatField;
    cdsProdutovalor_atacado: TFloatField;
    cdsProdutounidade: TWideStringField;
    cdsProdutoinfo_adicional: TWideStringField;
    cdsProdutoest_minimo: TIntegerField;
    cdsProdutoest_atual: TIntegerField;
    cdsProdutoidcategoria: TIntegerField;
    cdsProdutodt_cadastro: TDateField;
    TimerKeepAlive: TTimer;
    cdsFoto: TZQuery;
    qrSQL: TZQuery;
    cdsConfigshost: TWideStringField;
    cdsConfigsuser_ftp: TWideStringField;
    cdsConfigssenha_ftp: TWideStringField;
    cdsConfigsporta_ftp: TSmallintField;
    ZConnectionFoto: TZConnection;
    qrfornecedor_produto: TZQuery;
    ZUpdateSQLFor_prod: TZUpdateSQL;
    qrfornecedor_produtoidfornecedor: TIntegerField;
    qrfornecedor_produtoidproduto: TIntegerField;
    qrfornecedor_produtoultima_compra: TDateField;
    qrfornecedor_produtorazao: TWideStringField;
    cdsNota: TZQuery;
    cdsNotaidnota: TIntegerField;
    cdsNotadatanota: TDateField;
    cdsNotausuario: TIntegerField;
    cdsNotaidfornecedor: TIntegerField;
    cdsNotavalor_nota: TFloatField;
    cdsNotadatalancamento: TDateTimeField;
    cdsNotanumnota: TIntegerField;
    cdsNotatipo_nota: TWideStringField;
    cdsNotaNomeUsuario: TStringField;
    cdsPesProd: TZQuery;
    cdsItemNota: TZQuery;
    ZUpdateItemNota: TZUpdateSQL;
    cdsItemNotaiditem: TIntegerField;
    cdsItemNotaidnota: TIntegerField;
    cdsItemNotaidproduto: TIntegerField;
    cdsItemNotaqtde: TIntegerField;
    cdsItemNotavalor_unit: TFloatField;
    cdsItemNotadescricao: TWideStringField;
    cdsItemNotaValor_Total: TCurrencyField;
    cdsPesFornecedor: TZQuery;
    cdsPesFornecedoridfornecedor: TIntegerField;
    cdsPesFornecedorrazao: TWideStringField;
    cdsNotadesconto: TFloatField;
    cdsNotaacrescimo: TFloatField;
    cdsNotatotal_itens: TFloatField;
    cdsProdutocontrola_estoque: TWideStringField;
    cdsItemNotatipo_nota: TWideStringField;
    cdsConfigsatualiza_compra_fornecedor: TWideStringField;
    cdsConfigsatualizar_valor_compra_produto: TWideStringField;
    qrfornecedor_produtoultimo_valor: TFloatField;
    cdsCartao: TZQuery;
    cdsCartaoidcartao: TIntegerField;
    cdsCartaodescricao: TWideStringField;
    cdsCartaoadm: TFloatField;
    cdsPesCaixa: TZQuery;
    cdsCadCaixa: TZQuery;
    cdsCadCaixaid: TIntegerField;
    cdsCadCaixadata_hora: TDateTimeField;
    cdsCadCaixaidusuario: TIntegerField;
    cdsCadCaixaidconta: TIntegerField;
    cdsCadCaixavalor: TFloatField;
    cdsCadCaixatipo: TWideStringField;
    cdsCadCaixaforma_pagamento: TWideStringField;
    cdsCadCaixadescricao: TWideStringField;
    cdsPesCaixaid: TIntegerField;
    cdsPesCaixadata_hora: TDateTimeField;
    cdsPesCaixaidusuario: TIntegerField;
    cdsPesCaixaidconta: TIntegerField;
    cdsPesCaixavalor: TFloatField;
    cdsPesCaixatipo: TWideStringField;
    cdsPesCaixaforma_pagamento: TWideStringField;
    cdsPesCaixadescricao: TWideStringField;
    cdsPesCaixaNOME: TWideStringField;
    memSaldoCaixa: TClientDataSet;
    memSaldoCaixaDinheiroCred: TCurrencyField;
    memSaldoCaixaDinheiroDeb: TCurrencyField;
    memSaldoCaixaCartaoCredito_Cre: TCurrencyField;
    memSaldoCaixaCartaoCredito_Deb: TCurrencyField;
    memSaldoCaixaCartaoDebito_Cre: TCurrencyField;
    memSaldoCaixaCartaoDebito_Deb: TCurrencyField;
    memSaldoCaixaChequeCre: TCurrencyField;
    memSaldoCaixaChequeDeb: TCurrencyField;
    memSaldoCaixaDinheiroSaldo: TCurrencyField;
    memSaldoCaixaChequeSaldo: TCurrencyField;
    memSaldoCaixaCartaoCreditoSaldo: TCurrencyField;
    memSaldoCaixaCartaoDebitoSaldo: TCurrencyField;
    dsSaldo: TDataSource;
    cdsGrupoConta: TZQuery;
    cdsGrupoContaidgrupoconta: TIntegerField;
    cdsGrupoContatipo: TWideStringField;
    cdsGrupoContatipoCalc: TStringField;
    cdsGrupoContadescricao: TWideStringField;
    cdsConfigsprocessar_cartao_credito: TWideStringField;
    cdsConfigsdescontar_taxa_operadora: TWideStringField;
    qrProcessaCart: TZQuery;
    qrProcessaCartidconta: TIntegerField;
    qrProcessaCartdata_pagamento: TDateField;
    qrProcessaCartvalor: TFloatField;
    qrProcessaCartvalor_pago: TFloatField;
    qrProcessaCartdesconto: TFloatField;
    qrProcessaCartacrescimo: TFloatField;
    qrProcessaCartadm: TFloatField;
    ZUpdateSQLCart: TZUpdateSQL;
    cdsConfigsdata_sistema: TDateField;
    cdsCadConta: TZQuery;
    cdsCadContaidconta: TIntegerField;
    cdsCadContadata_lancamento: TDateField;
    cdsCadContadata_vencimento: TDateField;
    cdsCadContadata_pagamento: TDateField;
    cdsCadContavalor: TFloatField;
    cdsCadContavalor_pago: TFloatField;
    cdsCadContadesconto: TFloatField;
    cdsCadContaacrescimo: TFloatField;
    cdsCadContaforma_pagamento: TWideStringField;
    cdsCadContaidcliente: TIntegerField;
    cdsCadContaidvenda: TIntegerField;
    cdsCadContaidfornecedor: TIntegerField;
    cdsCadContadescricao: TWideStringField;
    cdsCadContaobs: TWideStringField;
    cdsCadContaparcela: TWideStringField;
    cdsCadContatipo: TWideStringField;
    cdsCadContausuario_cadastro: TIntegerField;
    cdsCadContausuario_pagamento: TIntegerField;
    cdsCadContaidconta_grupo: TIntegerField;
    cdsCadContaidcartao: TIntegerField;
    cdsCadContaautomatica: TWideStringField;
    cdsCadContaidgrupoconta: TIntegerField;
    cdsCadContadocumento: TWideStringField;
    cdsCadContaTotal_Pagar: TCurrencyField;
    ZUpdateConta: TZUpdateSQL;
    qrProcessaCarttipo: TWideStringField;
    cdsCadContasaldo_desconto: TCurrencyField;
    dsUsuario: TDataSource;
    qrItensVenda: TZQuery;
    qrItensVendaidvenda: TIntegerField;
    qrItensVendaiditem: TIntegerField;
    qrItensVendaidproduto: TIntegerField;
    qrItensVendaqtde: TIntegerField;
    qrItensVendapreco: TFloatField;
    qrItensVendadesconto: TFloatField;
    qrItensVendadescricao: TWideStringField;
    qrItensVendacodbarras: TWideStringField;
    qrItensVendaunidade: TWideStringField;
    dsItenVenda: TDataSource;
    qrItensVendaTotal_Item: TCurrencyField;
    qrItensVendaest_atual: TIntegerField;
    qrItensVendacontrola_estoque: TWideStringField;
    cdsCadKit: TZQuery;
    cdsCadKitidkit: TIntegerField;
    cdsCadKitdescricao: TWideStringField;
    cdsCadKitvalor_custo: TFloatField;
    cdsCadKitvalor_varejo: TFloatField;
    cdsCadKitinfo_adicional: TWideStringField;
    cdsCadKitest_minimo: TIntegerField;
    cdsCadKitdt_cadastro: TDateField;
    cdsCadKitcodbarras: TWideStringField;
    cdsKitProduto: TZQuery;
    cdsKitProdutoidkit: TIntegerField;
    cdsKitProdutoidproduto: TIntegerField;
    cdsKitProdutocodbarras: TWideStringField;
    cdsKitProdutovalor_varejo: TFloatField;
    cdsKitProdutovalor_custo: TFloatField;
    cdsKitProdutoqtde: TIntegerField;
    cdsKitProdutodescricao: TWideStringField;
    cdsKitProdutovalor_total: TCurrencyField;
    ZUpdateKitProd: TZUpdateSQL;
    cdsKitProdutoest_atual: TIntegerField;
    cdsKitProdutoCompleto: TBooleanField;
    qrCustoMedio: TZQuery;
    qrCustoMedioidproduto: TIntegerField;
    qrCustoMediocusto_medio: TFloatField;
    qrCustoMediovalor_total: TFloatField;
    qrCustoMedioqtde_total: TLargeintField;
    qrItensVendaidkit: TIntegerField;
    qrItensVendadescricaokit: TWideStringField;
    qrItensVendacodbarraskit: TWideStringField;
    qrItensVendabarrascalc: TStringField;
    qrItensVendadescricaocalc: TWideStringField;
    cdsItemNotadescprod: TWideStringField;
    cdsItemNotadesckit: TWideStringField;
    cdsItemNotaidkit: TIntegerField;
    dsCheque: TDataSource;
    memcheque: TClientDataSet;
    memchequeid: TIntegerField;
    memchequevalor: TCurrencyField;
    memchequebanco: TStringField;
    memchequeagencia: TStringField;
    memchequeconta: TStringField;
    memchequenumchque: TStringField;
    memchequedtvencimento: TDateField;
    memchequedocumento: TStringField;
    memchequeTipo: TStringField;
    memchequeNome_Terceiro: TStringField;
    qrlkCliente: TZQuery;
    qrlkFornecedor: TZQuery;
    qrlkClientecodcliente: TIntegerField;
    qrlkClientenome: TWideStringField;
    qrlkFornecedoridfornecedor: TIntegerField;
    qrlkFornecedorrazao: TWideStringField;
    dslkcliente: TDataSource;
    dslkfornecedor: TDataSource;
    qrlkusuario: TZQuery;
    dslkusuario: TDataSource;
    qrlkusuarioidtbusuario: TIntegerField;
    qrlkusuarionome: TWideStringField;
    cdsEditCheque: TZQuery;
    cdsEditChequeidtbcheque: TIntegerField;
    cdsEditChequenumcheque: TWideStringField;
    cdsEditChequebanco: TWideStringField;
    cdsEditChequeagencia: TWideStringField;
    cdsEditChequeconta: TWideStringField;
    cdsEditChequetipo_cheque: TWideStringField;
    cdsEditChequedocumento_terceiro: TWideStringField;
    cdsEditChequevalor: TFloatField;
    cdsEditChequedata_vencimento: TDateField;
    cdsEditChequedata_lancamento: TDateField;
    cdsEditChequeidcliente: TIntegerField;
    cdsEditChequenome_terceiro: TWideStringField;
    cdsEditChequeidfornecedor: TIntegerField;
    cdsEditChequetipo_chque: TWideStringField;
    cdsEditChequestatus: TWideStringField;
    cdsEditChequeobs: TWideStringField;
    ZSQLScript: TZSQLProcessor;
    cdsClientefantasia: TWideStringField;
    cdsClientenome_contato: TWideStringField;
    cdsClientetel1_contato: TWideStringField;
    cdsClientetel2_contato: TWideStringField;
    cdsClienteemail_contato: TWideStringField;
    qrItensVendapreco_custo: TFloatField;
    qrItensVendavalor_custo: TFloatField;
    cdsClientesituacao: TWideStringField;
    cdsClientestatus_abo: TWideStringField;
    cdsClientemotivo: TWideStringField;
    cdsClienteinscricao_estadual: TWideStringField;
    cdsClienteinscricao_municipal: TWideStringField;
    cdsClientecertificados: TWideStringField;
    cdsClienteendereco_fat: TWideStringField;
    cdsClientecidade_fat: TWideStringField;
    cdsClienteuf_fat: TWideStringField;
    cdsClientebairro_fat: TWideStringField;
    cdsClientecep_fat: TWideStringField;
    cdsClientereferencia_fat: TWideStringField;
    cdsClientetipo_frete: TWideStringField;
    cdsClienteprazo_pagamento: TIntegerField;
    cdsClientemargem_lucro_adicional: TFloatField;
    cdsClienteatraso_medio: TIntegerField;
    cdsClientetransportadora: TWideStringField;
    cdsClientetipo_pagamento: TWideStringField;
    cdsClientelimite_credito: TFloatField;
    cdsClientedtultima_visita: TDateField;
    cdsClientedtultima_campanha: TDateField;
    cdsClientedtproximo_contato: TDateField;
    cdsClientedtproxima_visita: TDateField;
    cdsClientedtultimo_contato: TDateField;
    cdsClientedtultima_compra: TDateField;
    cdsClientereferencia: TWideStringField;
    cdsClientenome_contato2: TWideStringField;
    cdsClientetel1_contato2: TWideStringField;
    cdsClientetel2_contato2: TWideStringField;
    cdsClienteemail_contato2: TWideStringField;
    cdsFornecedorfantasia: TWideStringField;
    cdsFornecedornome_contato: TWideStringField;
    cdsFornecedortel1_contato: TWideStringField;
    cdsFornecedortel2_contato: TWideStringField;
    cdsFornecedoremail_contato: TWideStringField;
    cdsFornecedorsituacao: TWideStringField;
    cdsFornecedorstatus_abo: TWideStringField;
    cdsFornecedormotivo: TWideStringField;
    cdsFornecedorinscricao_municipal: TWideStringField;
    cdsFornecedorcertificados: TWideStringField;
    cdsFornecedorendereco_fat: TWideStringField;
    cdsFornecedorcidade_fat: TWideStringField;
    cdsFornecedoruf_fat: TWideStringField;
    cdsFornecedorbairro_fat: TWideStringField;
    cdsFornecedorcep_fat: TWideStringField;
    cdsFornecedorreferencia_fat: TWideStringField;
    cdsFornecedortipo_frete: TWideStringField;
    cdsFornecedorprazo_pagamento: TIntegerField;
    cdsFornecedorprazo_medio_entrega: TIntegerField;
    cdsFornecedorplano_contas: TWideStringField;
    cdsFornecedortransportadora: TWideStringField;
    cdsFornecedortipo_pagamento: TWideStringField;
    cdsFornecedorlimite_credito: TFloatField;
    cdsFornecedordtultima_visita: TDateField;
    cdsFornecedordtultima_campanha: TDateField;
    cdsFornecedordtproximo_contato: TDateField;
    cdsFornecedordtproxima_visita: TDateField;
    cdsFornecedordtultimo_contato: TDateField;
    cdsFornecedordtultima_compra: TDateField;
    cdsFornecedorreferencia: TWideStringField;
    cdsFornecedornome_contato2: TWideStringField;
    cdsFornecedortel1_contato2: TWideStringField;
    cdsFornecedortel2_contato2: TWideStringField;
    cdsFornecedoremail_contato2: TWideStringField;
    cdsFornecedorbanco1: TWideStringField;
    cdsFornecedoragencia1: TWideStringField;
    cdsFornecedorconta1: TWideStringField;
    cdsFornecedorbanco2: TWideStringField;
    cdsFornecedoragencia2: TWideStringField;
    cdsFornecedorconta2: TWideStringField;
    cdsFornecedorbanco3: TWideStringField;
    cdsFornecedoragencia3: TWideStringField;
    cdsFornecedorconta3: TWideStringField;
    cdsProdutoreferencia: TWideStringField;
    cdsProdutocor: TWideStringField;
    cdsProdutomarca: TWideStringField;
    cdsProdutotipo: TWideStringField;
    cdsProdutoacabamento: TWideStringField;
    cdsProdutogrupo_materiais: TWideStringField;
    cdsProdutomedida: TWideStringField;
    cdsProdutopeso: TWideStringField;
    cdsProdutoplano_despesas: TWideStringField;
    cdsProdutounidade_compra: TWideStringField;
    cdsProdutoqtde_compra: TIntegerField;
    cdsProdutoimobilizado: TWideStringField;
    cdsProdutoqtde_empenho: TIntegerField;
    cdsProdutoultimo_balanco: TDateField;
    cdsProdutoprazo_reposicao: TIntegerField;
    cdsProdutoqtde_ultimo_balanco: TIntegerField;
    cdsProdutoavisar_reposicao: TDateField;
    cdsProdutojuros_cartao: TFloatField;
    cdsProdutocomissao_vendedor: TFloatField;
    cdsProdutocomissao_iterna: TFloatField;
    cdsProdutocomissao_especial: TFloatField;
    cdsProdutocomissao_outra: TFloatField;
    cdsProdutoiss: TFloatField;
    cdsProdutoicms: TFloatField;
    cdsProdutoipi: TFloatField;
    cdsProdutoisv: TFloatField;
    cdsProdutoimposto_a: TFloatField;
    cdsProdutoimposto_b: TFloatField;
    cdsProdutofrete: TFloatField;
    cdsProdutodespesas_adm: TFloatField;
    cdsProdutomargem_lucro: TFloatField;
    cdsProdutojuros_cartao_calc: TCurrencyField;
    cdsProdutocomissao_vendedor_calc: TCurrencyField;
    cdsProdutocomissao_iterna_calc: TCurrencyField;
    cdsProdutocomissao_especial_calc: TCurrencyField;
    cdsProdutocomissao_outra_calc: TCurrencyField;
    cdsProdutoiss_calc: TCurrencyField;
    cdsProdutoicms_calc: TCurrencyField;
    cdsProdutoipi_calc: TCurrencyField;
    cdsProdutoisv_calc: TCurrencyField;
    cdsProdutoimposto_a_calc: TCurrencyField;
    cdsProdutoimposto_b_calc: TCurrencyField;
    cdsProdutofrete_calc: TCurrencyField;
    cdsProdutodespesas_adm_calc: TCurrencyField;
    cdsProdutomargem_lucro_calc: TCurrencyField;
    cdsProdutoPrecoVenda_ideal: TCurrencyField;
    cdsFuncionario: TZQuery;
    cdsFuncionarioidfuncionario: TIntegerField;
    cdsFuncionarionome: TWideStringField;
    cdsFuncionariotelefone: TWideStringField;
    cdsFuncionariocelular: TWideStringField;
    cdsFuncionarioendereco: TWideStringField;
    cdsFuncionariobairro: TWideStringField;
    cdsFuncionariocep: TWideStringField;
    cdsFuncionarioemail: TWideStringField;
    cdsFuncionariosalario: TFloatField;
    cdsFuncionarioidsetor: TIntegerField;
    cdsSetor: TZQuery;
    cdsSetoridsetor: TIntegerField;
    cdsSetordescricao: TWideStringField;
    dsSetor: TDataSource;
    cdsCadProducao: TZQuery;
    cdsCadProducaoidproducao: TIntegerField;
    cdsCadProducaoidcliente: TIntegerField;
    cdsCadProducaopeso: TFloatField;
    cdsCadProducaovalor_tonelada: TFloatField;
    cdsCadProducaonum_viagens: TIntegerField;
    cdsCadProducaodata: TDateField;
    cdsCadProducaoidveiculo: TIntegerField;
    cdsCadVeiculo: TZQuery;
    cdsCadVeiculoidveiculo: TIntegerField;
    cdsCadVeiculocodveiculo: TIntegerField;
    cdsCadVeiculoplaca: TWideStringField;
    cdsCadVeiculomarca: TWideStringField;
    cdsCadVeiculomodelo: TWideStringField;
    cdsCadVeiculoano: TIntegerField;
    qrFuncionario: TZQuery;
    qrFuncionarioidfuncionario: TIntegerField;
    qrFuncionarionome: TWideStringField;
    cdsCadProducaoveiculo: TStringField;
    cdsCadProducaovalor_total: TCurrencyField;
    cdsCadProducaomedia_tonelada: TCurrencyField;
    cdsCadProducaocliente: TStringField;
    cdsCadProducaodata_casdastro: TDateTimeField;
    cdsCadProducaoidusuario: TIntegerField;
    cdsCadProducaousuario: TStringField;
    cdsCadMeta: TZQuery;
    cdsCadMetaidmeta: TIntegerField;
    cdsCadMetaidveiculo: TIntegerField;
    cdsCadMetadata_inicial: TDateField;
    cdsCadMetadata_final: TDateField;
    cdsCadMetaminimo: TFloatField;
    cdsCadMetacota: TFloatField;
    cdsCadMetasuper: TFloatField;
    cdsCadMetadias_uteis: TSmallintField;
    qrMeta: TZQuery;
    qrMetaidmeta: TIntegerField;
    qrMetaminimo: TFloatField;
    qrMetacota: TFloatField;
    qrMetasuper: TFloatField;
    qrMetadias_uteis: TSmallintField;
    qrMetaidveiculo: TIntegerField;
    qrMetadata_inicial: TDateField;
    qrMetadata_final: TDateField;
    cdsCadContaidfuncionario: TIntegerField;
    cdsCadContaencargo: TFloatField;
    cdsCadContabonificacao: TFloatField;
    qrlkFuncionario: TZQuery;
    dslkFuncionario: TDataSource;
    qrlkFuncionarioidfuncionario: TIntegerField;
    qrlkFuncionarionome: TWideStringField;
    qrlkFuncionariosalario: TFloatField;
    cdsCadContasalario: TFloatField;
    qrPesConta: TZQuery;
    qrCompCombustivel: TZQuery;
    qrCompCombustivelIdestoque_gas: TIntegerField;
    qrCompCombustiveldata_compra: TDateField;
    qrCompCombustivelqtde: TIntegerField;
    qrCompCombustivelvalor_unit: TFloatField;
    qrCompCombustivelnota_fiscal: TWideStringField;
    qrCompCombustivelidfornecedor: TIntegerField;
    qrCompCombustivelvalor_total: TCurrencyField;
    cdsFuncionariocidade: TWideStringField;
    cdsFuncionariouf: TWideStringField;
    cdsFuncionariorg: TWideStringField;
    cdsFuncionariodtaniversario: TDateField;
    cdsFuncionariodtcadastro: TDateField;
    cdsFuncionarioobs: TWideStringField;
    cdsFuncionarionome_contato: TWideStringField;
    cdsFuncionariotel1_contato: TWideStringField;
    cdsFuncionariotel2_contato: TWideStringField;
    cdsFuncionarioemail_contato: TWideStringField;
    cdsFuncionarionome_contato2: TWideStringField;
    cdsFuncionariotel1_contato2: TWideStringField;
    cdsFuncionariotel2_contato2: TWideStringField;
    cdsFuncionarioemail_contato2: TWideStringField;
    cdsFuncionariounidade_trabalho: TWideStringField;
    cdsFuncionariodtadmissao: TDateField;
    cdsFuncionariocargo: TWideStringField;
    cdsFuncionariodtexamemedico: TDateField;
    cdsFuncionariodtvctoexamemedico: TDateField;
    cdsFuncionariodtexameintegracao: TDateField;
    cdsFuncionariodtvctoexameintegracao: TDateField;
    cdsFuncionariocnhvcto: TDateField;
    cdsFuncionariocnhcategoria: TWideStringField;
    cdsFuncionariocnhnumero: TWideStringField;
    cdsCadProducaotara: TFloatField;
    cdsCadProducaopeso_bruto: TFloatField;
    cdsCadProducaovalor_agregado: TFloatField;
    cdsCadProducaovalor_totalagregado: TCurrencyField;
    dslkVeiculo: TDataSource;
    cdsCadContaidveiculo: TIntegerField;
    dslkGrupoConta: TDataSource;
    memSaldoCaixatrans_Cre: TCurrencyField;
    memSaldoCaixatrans_deb: TCurrencyField;
    memSaldoCaixadeposito_cre: TCurrencyField;
    memSaldoCaixadeposito_deb: TCurrencyField;
    memSaldoCaixatrans_saldo: TCurrencyField;
    memSaldoCaixadeposito_saldo: TCurrencyField;
    cdsConfigssite: TWideStringField;
    cdsClientesexo: TWideStringField;
    cdsTransportadora: TZQuery;
    cdsTransportadoraidtransportadora: TIntegerField;
    cdsTransportadorarazaosocial: TWideStringField;
    cdsTransportadoracnpj: TWideStringField;
    cdsTransportadoraendereco: TWideStringField;
    cdsTransportadorabairro: TWideStringField;
    cdsTransportadoracidade: TWideStringField;
    cdsTransportadorauf: TWideStringField;
    cdsTransportadoracep: TWideStringField;
    cdsTransportadoratelefone: TWideStringField;
    cdsTransportadoracelular: TWideStringField;
    cdsTransportadoraemail: TWideStringField;
    cdsTransportadorasite: TWideStringField;
    cdsTransportadoracontato_nome: TWideStringField;
    cdsTransportadoracontato_telefone: TWideStringField;
    cdsTransportadoracontato_email: TWideStringField;
    cdsTransportadoradt_cadastro: TDateField;
    cdsNotaidtransportadora: TIntegerField;
    cdsNotaicms: TFloatField;
    cdsNotavalor_frete: TFloatField;
    cdsNotafrete: TFloatField;
    cdsNotaipi: TFloatField;
    cdsNotaprevisao: TDateField;
    cdsNotatipo_frete: TWideStringField;
    cdsNotaprazo_pagamento: TWideStringField;
    qrNotaPagamento: TZQuery;
    qrNotaPagamentoidpagamento: TIntegerField;
    qrNotaPagamentoidnota: TIntegerField;
    qrNotaPagamentoforma_pagamento: TWideStringField;
    qrNotaPagamentodata_vencimento: TDateField;
    qrNotaPagamentovalor: TFloatField;
    qrNotaPagamentoobs: TWideStringField;
    cdsSubGrupo: TZQuery;
    cdsSubGrupoidsubgrupo: TIntegerField;
    cdsSubGrupodescricao: TWideStringField;
    cdsSubGrupotipo: TWideStringField;
    cdsSubGrupotipocalc: TWideStringField;
    cdsCadContaidsubgrupo: TIntegerField;
    dsSubgrupo: TDataSource;
    cdsNotaidcliente: TIntegerField;
    cdsFuncionariobanco: TWideStringField;
    cdsFuncionarionumbanco: TIntegerField;
    cdsFuncionarioagencia: TWideStringField;
    cdsFuncionarioconta: TWideStringField;
    cdsFuncionariooperacao: TWideStringField;
    cdsFuncionariobanco2: TWideStringField;
    cdsFuncionarionumbanco2: TIntegerField;
    cdsFuncionarioagencia2: TWideStringField;
    cdsFuncionarioconta2: TWideStringField;
    cdsFuncionariooperacao2: TWideStringField;
    memSaldoCaixaCreditoGeral: TCurrencyField;
    memSaldoCaixaDebitoGeral: TCurrencyField;
    memSaldoCaixaSaldoGeral: TCurrencyField;
    psUsuarioidtbusuario: TIntegerField;
    psUsuarionome: TWideStringField;
    psUsuariologin: TWideStringField;
    psUsuariosenha: TWideStringField;
    psUsuarioadministrador: TWideStringField;
    cdsConfigsimprime_recibo: TWideStringField;
    cdsConfigsimprime_sem_visualizar: TWideStringField;
    cdsConfigsnum_copias: TSmallintField;
    cdsCadVeiculorenavan: TWideStringField;
    cdsCadVeiculochassi: TWideStringField;
    cdsCadVeiculovalor_ipva: TFloatField;
    cdsCadVeiculovalor_dpvat: TFloatField;
    cdsCadVeiculovalor_licenciamento: TFloatField;
    cdsCadVeiculodt_pgipva: TDateField;
    cdsCadVeiculodt_pgdpvat: TDateField;
    cdsCadVeiculodt_pglicenciamento: TDateField;
    cdsCadVeiculorastreador: TWideStringField;
    cdsCadVeiculoidfornecedor: TIntegerField;
    qrFuncVeiculo: TZQuery;
    qrFuncVeiculoidveiculo: TIntegerField;
    qrFuncVeiculoidfuncionario: TIntegerField;
    qrFuncVeiculonome: TWideStringField;
    cdsCheque: TZQuery;
    cdsChequeidtbcheque: TIntegerField;
    cdsChequenumcheque: TWideStringField;
    cdsChequebanco: TWideStringField;
    cdsChequeagencia: TWideStringField;
    cdsChequeconta: TWideStringField;
    cdsChequetipo_cheque: TWideStringField;
    cdsChequedocumento_terceiro: TWideStringField;
    cdsChequevalor: TFloatField;
    cdsChequedata_vencimento: TDateField;
    cdsChequedata_lancamento: TDateField;
    cdsChequeidcliente: TIntegerField;
    cdsChequenome_terceiro: TWideStringField;
    cdsChequeidfornecedor: TIntegerField;
    cdsChequetipo_chque: TWideStringField;
    cdsChequestatus: TWideStringField;
    cdsContaCheque: TZQuery;
    cdsContaChequeidconta: TIntegerField;
    cdsContaChequeidcheque: TIntegerField;
    cdsItemNotaest_atual: TIntegerField;
    cdsItemNotaestoque: TIntegerField;
    cdsConfigscor_fundo: TWideStringField;
    dsConfigs: TDataSource;
    cdsCadProducaohora: TTimeField;
    cdsNotafinalizado_em: TDateField;
    cdsNotaidcliente_venda: TIntegerField;
    cdsNotanumedital: TIntegerField;
    cdsProdutotamanho: TWideStringField;
    cdsItemNotatamanho: TWideStringField;
    cdsClientecodgarra: TWideStringField;
    cdsClientecomplemento: TWideStringField;
    cdsClientenumero: TWideStringField;
    cdsClientecomplemento_fat: TWideStringField;
    cdsClientenumero_fat: TWideStringField;
    cdsClientematricula: TWideStringField;
    cdsClienteprefeitura: TWideStringField;
    qrlkClienteprefeitura: TWideStringField;
    qrClientePreco: TZQuery;
    qrClientePrecoidcliente: TIntegerField;
    qrClientePrecoidproduto: TIntegerField;
    qrClientePreconome: TWideStringField;
    ZUpdateClientePreco: TZUpdateSQL;
    qrClientePrecopreco: TFloatField;
    qrValorCliente: TZQuery;
    cdsProdutoedital: TWideStringField;
    cdsClienteidprefeitura: TIntegerField;
    qrlkClienteidprefeitura: TIntegerField;
    cdsItemNotaedital: TWideStringField;
    qrClientePrecoedital: TWideStringField;
    cdsConfigsvalor_min_parcela: TFloatField;
    cdsConfigsindice_dinheiro: TFloatField;
    cdsConfigsindice_debito: TFloatField;
    cdsConfigsindice_credito: TFloatField;
    cdsConfigsindice_2x: TFloatField;
    cdsConfigsindice_3x: TFloatField;
    cdsConfigsindice_4x: TFloatField;
    cdsConfigsindice_5x: TFloatField;
    cdsConfigsindice_6x: TFloatField;
    cdsNotaforma_pg: TIntegerField;
    cdsConfigsexibir_formapg: TWideStringField;
    cdsNotaValorDinheiro: TCurrencyField;
    cdsNotaValorDebito: TCurrencyField;
    cdsNotaValorCred: TCurrencyField;
    cdsNotaValorPar2: TCurrencyField;
    cdsNotaValorPar3: TCurrencyField;
    cdsNotaValorPar4: TCurrencyField;
    cdsNotaValorPar5: TCurrencyField;
    cdsNotaValorPar6: TCurrencyField;
    cdsNotalote: TWideStringField;
    cdsNotaobs: TWideMemoField;
    qrInsertLogacao: TWideMemoField;
    cdsFornecedorobs: TWideMemoField;
    cdsClienteobs: TWideMemoField;
    cdsNotaoperacao: TWideStringField;
    cdsNotatotal_par2: TCurrencyField;
    cdsNotatotal_par3: TCurrencyField;
    cdsNotatotal_par4: TCurrencyField;
    cdsNotatotal_par5: TCurrencyField;
    cdsNotatotal_par6: TCurrencyField;
    cdsStatus: TZQuery;
    cdsStatusidstatus: TIntegerField;
    cdsStatusdescricao: TWideStringField;
    cdsControle: TZQuery;
    cdsControleid: TIntegerField;
    cdsControledata: TDateField;
    cdsControleidcliente: TIntegerField;
    cdsControleidfornecedor: TIntegerField;
    cdsControlenpedido: TWideStringField;
    cdsControleqtde_enviada: TIntegerField;
    cdsControleidproduto: TIntegerField;
    cdsControlepreco_unit: TFloatField;
    cdsControleprev_entrega: TDateField;
    cdsControledata_entrega: TDateField;
    cdsControleiddestino: TIntegerField;
    cdsControleidstatus: TIntegerField;
    cdsLKProduto: TZQuery;
    cdsLKProdutoidproduto: TIntegerField;
    cdsLKProdutodescricao: TWideStringField;
    cdsControleProduto: TStringField;
    dsLKStatus: TDataSource;
    cdsControleqtde_entregue: TIntegerField;
    cdsControlevalor_total: TFloatField;
    cdsControlevalor_pago: TFloatField;
    cdsControledia_pagamento: TDateField;
    cdsControleobs: TWideStringField;
    cdsControlevale: TFloatField;
    cdsControledata_vale: TDateField;
    cdsControleFaltaPagar: TCurrencyField;
    cdsControlearquivado: TWideStringField;
    cdsControlePg: TZQuery;
    cdsControlePgid: TIntegerField;
    cdsControlePgidtbsistema: TIntegerField;
    cdsControlePgdata: TDateField;
    cdsControlePgvalor: TFloatField;
    cdsControlePgusuario: TWideStringField;
    procedure cdsUsuarioAfterInsert(DataSet: TDataSet);
    procedure cdsConfigsBeforeInsert(DataSet: TDataSet);
    procedure cdsClienteAfterInsert(DataSet: TDataSet);
    procedure cdsClienteBeforePost(DataSet: TDataSet);
    procedure cdsClienteAfterPost(DataSet: TDataSet);
    procedure cdsConfigsAfterOpen(DataSet: TDataSet);
    procedure ZConnectionAfterConnect(Sender: TObject);
    procedure cdsFornecedorAfterPost(DataSet: TDataSet);
    procedure cdsFornecedorBeforePost(DataSet: TDataSet);
    procedure cdsProdutoAfterPost(DataSet: TDataSet);
    procedure cdsCategoriaDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TimerKeepAliveTimer(Sender: TObject);
    procedure cdsItemNotaCalcFields(DataSet: TDataSet);
    procedure cdsNotaAfterInsert(DataSet: TDataSet);
    procedure cdsNotaCalcFields(DataSet: TDataSet);
    procedure cdsProdutoAfterInsert(DataSet: TDataSet);
    procedure ZConnectionBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure memSaldoCaixaCalcFields(DataSet: TDataSet);
    procedure cdsGrupoContaCalcFields(DataSet: TDataSet);
    procedure cdsGrupoContaAfterOpen(DataSet: TDataSet);
    procedure cdsGrupoContaBeforePost(DataSet: TDataSet);
    procedure cdsCadContaCalcFields(DataSet: TDataSet);
    procedure cdsCadContaAfterInsert(DataSet: TDataSet);
    procedure qrItensVendaCalcFields(DataSet: TDataSet);
    procedure cdsCadKitAfterInsert(DataSet: TDataSet);
    procedure cdsCadKitAfterPost(DataSet: TDataSet);
    procedure cdsKitProdutoCalcFields(DataSet: TDataSet);
    procedure qrCustoMedioCalcFields(DataSet: TDataSet);
    procedure cdsNotaBeforePost(DataSet: TDataSet);
    procedure cdsProdutoCalcFields(DataSet: TDataSet);
    procedure cdsCadVeiculoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure cdsCadProducaoCalcFields(DataSet: TDataSet);
    procedure cdsCadProducaoAfterInsert(DataSet: TDataSet);
    procedure cdsCadMetaAfterInsert(DataSet: TDataSet);
    procedure cdsCadProducaoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure cdsCadContaidfuncionarioChange(Sender: TField);
    procedure cdsCadContaBeforePost(DataSet: TDataSet);
    function ExecutaComando(psql: string): boolean;
    procedure qrCompCombustivelCalcFields(DataSet: TDataSet);
    procedure qrCompCombustivelAfterInsert(DataSet: TDataSet);
    procedure cdsFuncionarioNewRecord(DataSet: TDataSet);
    procedure cdsTransportadoraAfterInsert(DataSet: TDataSet);
    procedure qrNotaPagamentoAfterInsert(DataSet: TDataSet);
    procedure qrNotaPagamentoAfterOpen(DataSet: TDataSet);
    procedure cdsSubGrupoAfterInsert(DataSet: TDataSet);
    procedure cdsSubGrupoCalcFields(DataSet: TDataSet);
    procedure GetTextTelefone(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure SetTextTelefone(Sender: TField; const Text: string);
    procedure SetHora(Sender: TField; const Text: string);
    procedure EfetuaRestauracao;
    procedure cdsControleAfterPost(DataSet: TDataSet);
    procedure cdsControleCalcFields(DataSet: TDataSet);

  private


    { Private declarations }


  public
    { Public declarations }
    SqlProcessar : String;
    procedure ChecaPermissoes();
    function  InsertCaixa(Dados: TCaixa): boolean;
    function  SelecionaConta(IDConta : Integer; Atualizar : Boolean): Boolean;
    function  MovimentaCaixa(myForm : TFormFinalizaVenda; var DadosCaixa: TCaixa): boolean;
    function  ChecaBarras(CodBarras: String; ID : Integer; Tabela : Char): Boolean;
    procedure EfetuaBackup;
    procedure TotalPagar(DataSet: TDataSet);
    function GravaCheques(myForm: TFormFinalizaVenda; IDConta, IDCliente : Integer): boolean;
    procedure setControle(id: integer);
  end;

const
  LancamentoSalario = 1;


var
  DM: TDM;

implementation

uses uConfigDB, FuncoesGerais, uCadEntSai;

{$R *.dfm}

procedure TDM.cdsCadContaAfterInsert(DataSet: TDataSet);
begin
  cdsCadContadata_vencimento.AsDateTime := Date;
  cdsCadContaforma_pagamento.Value := fpg_dinheiro;
  cdsCadContaparcela.Value := '1';
  cdsCadContausuario_cadastro.Value := mCodigoUsuario;
  //cdsCadContanome_cadastro.Value := mNomeUsuario;
  cdsCadContadata_lancamento.AsDateTime := Date;
  if cdsCadConta.Tag = LancamentoSalario then
  begin
    cdsCadContaidgrupoconta.Value := 4;
    cdsCadContatipo.Value := _Debito;
  end
  else begin
    cdsCadContaidgrupoconta.Value := 3;
    cdsCadContatipo.Value := _Credito;
  end;
  cdsCadContaidconta.Value := 0;
  cdsCadContaencargo.Value := 0;
  cdsCadContabonificacao.Value := 0;
  cdsCadContaacrescimo.Value := 0;
  cdsCadContadesconto.Value := 0;
end;

procedure TDM.TotalPagar(DataSet : TDataSet);
var
  aux : Currency;
begin
  if DataSet.FieldByName('salario').AsCurrency > 0 then
    aux := DataSet.FieldByName('salario').AsCurrency
  else
    aux := DataSet.FieldByName('valor').AsCurrency;
  DataSet.FieldByName('Total_Pagar').Value := aux -
    DataSet.FieldByName('desconto').AsCurrency +
    DataSet.FieldByName('acrescimo').AsCurrency - DataSet.FieldByName('encargo').AsCurrency +
    DataSet.FieldByName('bonificacao').AsCurrency;
end;

procedure TDM.cdsCadContaBeforePost(DataSet: TDataSet);
begin
  if cdsCadConta.Tag = LancamentoSalario then
  begin
    cdsCadContavalor.AsCurrency := cdsCadContaTotal_Pagar.AsCurrency;
  end;
end;

procedure TDM.cdsCadContaCalcFields(DataSet: TDataSet);
begin
  TotalPagar(DataSet);
  cdsCadContasaldo_desconto.AsCurrency := cdsCadContaacrescimo.AsCurrency - cdsCadContadesconto.AsCurrency;
end;

procedure TDM.cdsCadContaidfuncionarioChange(Sender: TField);
begin
   if (cdsCadConta.Tag = LancamentoSalario) and
      (cdsCadConta.State in [dsEdit,dsInsert]) then
   begin
     if qrlkFuncionario.Active then
       if qrlkFuncionario.Locate('idfuncionario',cdsCadContaidfuncionario.AsInteger,[]) then
       begin
         if cdsCadContasalario.AsCurrency <= 0 then
           cdsCadContasalario.Value := qrlkFuncionariosalario.AsCurrency
         else if cdsCadContasalario.AsCurrency <> qrlkFuncionariosalario.AsCurrency then begin
           if Pergunta('O sistema identificou uma diferença no valor'+#13+
                       'do salário do funcionáio.' +#13+
                       'Salário do funcionário: '+qrlkFuncionariosalario.Text+#13+
                       'Deseja atualizar?') = ID_YES then
              cdsCadContasalario.Value := qrlkFuncionariosalario.AsCurrency;

         end;

       end;
   end;

end;

procedure TDM.cdsCadMetaAfterInsert(DataSet: TDataSet);
begin
  cdsCadMetaidmeta.AsInteger := 0;
end;

procedure TDM.cdsCadKitAfterInsert(DataSet: TDataSet);
begin
  cdsCadKitdt_cadastro.AsDateTime := Date;
end;

procedure TDM.cdsCadKitAfterPost(DataSet: TDataSet);
begin
    cdsCadKit.Params.ParamByName('pidkit').Value := cdsCadKitidkit.AsInteger;
end;

procedure TDM.cdsCadProducaoAfterInsert(DataSet: TDataSet);
begin
  cdsCadProducaoidusuario.Value := mCodigoUsuario;
  cdsCadProducaodata_casdastro.AsDateTime := Now;
end;

procedure TDM.cdsCadProducaoCalcFields(DataSet: TDataSet);
begin
  if (cdsCadProducaopeso.Value > 0) and (cdsCadProducaovalor_tonelada.Value > 0) then
    cdsCadProducaovalor_total.Value := cdsCadProducaopeso.Value * cdsCadProducaovalor_tonelada.Value;

  if (cdsCadProducaopeso.Value > 0) and (cdsCadProducaonum_viagens.AsInteger > 0) then
    cdsCadProducaomedia_tonelada.Value := cdsCadProducaopeso.Value / cdsCadProducaonum_viagens.AsInteger;

  cdsCadProducaovalor_totalagregado.AsCurrency := cdsCadProducaopeso.Value * cdsCadProducaovalor_agregado.AsCurrency;


end;

procedure TDM.cdsCadProducaoPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  if pos('idxdata',E.Message) > 0 then
  begin
    Informa('Já existe um lançamento para o veículo na data informada.');
     Action := daAbort;
  end;
end;

procedure TDM.cdsCadVeiculoPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  if pos('duplicate', LowerCase(E.Message)) > 0 then
  begin
     Erro('Já existe um veículo com o código informado.');
  end
  else
    Informa('Erro ao salvar dados');
  Action := daAbort;
end;

procedure TDM.cdsCategoriaDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
   Informa('O registro selecionado não pode ser excluído porque possui informações vinculadas.');
   Action := daAbort;
end;

procedure TDM.cdsClienteAfterInsert(DataSet: TDataSet);
begin
  //valores default
  DM.cdsClientedtcadastro.AsDateTime := Date;
end;

procedure TDM.cdsClienteAfterPost(DataSet: TDataSet);
begin
  cdsCliente.Params.ParamByName('pcodigo').Value := cdsClientecodcliente.AsInteger;

  if qrlkCliente.Active then
    qrlkCliente.Refresh;
end;

procedure TDM.cdsClienteBeforePost(DataSet: TDataSet);
begin
  cdsClientedtalteracao.AsDateTime := Date;
end;

procedure TDM.GetTextTelefone(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   DisplayText := True;
   Text := FormataTelefone(Sender.AsString);
end;

procedure TDM.SetHora(Sender: TField; const Text: string);
begin
  try
    if (Trim(text) = '') or (trim(Text) = ':') then
      Sender.AsVariant := null
    else
      Sender.Value := StrToTime(Text);
  except
    Informa('A hora informada não é válida.');
    Abort;
  end;

end;

procedure TDM.SetTextTelefone(Sender: TField; const Text: string);
begin
  Sender.AsString := ApenasNumerosStr(Text);
  if Sender.AsString = '' then
    Sender.AsVariant := null;
end;

procedure TDM.cdsConfigsAfterOpen(DataSet: TDataSet);
begin
  if cdsConfigs.RecordCount = 0 then
  begin
    try
      cdsConfigs.BeforeInsert := nil;
      cdsConfigs.Insert;
      cdsConfigsid.Value := 1;
      cdsConfigs.Post;
    finally
      cdsConfigs.BeforeInsert := cdsConfigsBeforeInsert;
    end;
  end;
end;

procedure TDM.cdsConfigsBeforeInsert(DataSet: TDataSet);
begin
  //não é permitida a inserssção
  Abort;
end;

procedure TDM.cdsControleAfterPost(DataSet: TDataSet);
begin
  cdsControle.Params.ParamByName('id').AsInteger := cdsControleid.AsInteger;
end;

procedure TDM.cdsControleCalcFields(DataSet: TDataSet);
begin
  cdsControleFaltaPagar.AsCurrency := cdsControlevalor_total.AsCurrency - cdsControlevalor_pago.AsCurrency;
end;

procedure TDM.cdsFornecedorAfterPost(DataSet: TDataSet);
begin
  cdsFornecedor.Params.ParamByName('pid').Value := cdsFornecedoridfornecedor.Value;
  if cdsPesFornecedor.Active then
    cdsPesFornecedor.Refresh;
  if dm.qrlkFornecedor.Active then
    dm.qrlkFornecedor.Refresh;
end;

procedure TDM.cdsFornecedorBeforePost(DataSet: TDataSet);
begin
  if cdsFornecedor.State in [dsInsert] then
    cdsFornecedordtcadastro.AsDateTime := Date;
  cdsFornecedordtalteracao.Value := Date;
end;

procedure TDM.cdsFuncionarioNewRecord(DataSet: TDataSet);
begin
  cdsFuncionariodtcadastro.AsDateTime := Date;
end;

procedure TDM.cdsGrupoContaAfterOpen(DataSet: TDataSet);
begin
  DM.cdsGrupoConta.IndexFieldNames := 'descricao';
end;

procedure TDM.cdsGrupoContaBeforePost(DataSet: TDataSet);
begin
   if (cdsGrupoConta.State in [dsEdit]) and (cdsGrupoContaidgrupoconta.Value = 1) then
   begin
     Informa('Este registro não pode ser alterado.');
     cdsGrupoConta.Cancel;
     Abort;
   end;
end;

procedure TDM.cdsGrupoContaCalcFields(DataSet: TDataSet);
begin
  if cdsGrupoContatipo.Value = _Credito then
    cdsGrupoContatipoCalc.Value := 'Receita'
  else
    cdsGrupoContatipoCalc.Value := 'Despesa';
end;

procedure TDM.cdsItemNotaCalcFields(DataSet: TDataSet);
begin
  cdsItemNotaValor_Total.AsCurrency := cdsItemNotavalor_unit.AsCurrency * cdsItemNotaqtde.Value;
  if cdsItemNotaidproduto.AsInteger > 0 then
    cdsItemNotadescricao.Value := cdsItemNotadescprod.AsString
  else
    cdsItemNotadescricao.Value := cdsItemNotadesckit.AsString;

  if cdsItemNotaidkit.AsInteger <= 0 then
  begin
    cdsItemNotaestoque.AsInteger := cdsItemNotaest_atual.AsInteger;
  end
  else begin
    {if cdsItemNota.Tag = 1 then
      cdsItemNotaestoque.AsInteger := GetEstoqueKit(cdsItemNotaidkit.AsInteger); }
  end;


end;

procedure TDM.cdsKitProdutoCalcFields(DataSet: TDataSet);
begin
  cdsKitProdutovalor_total.AsCurrency := cdsKitProdutovalor_varejo.AsCurrency * cdsKitProdutoqtde.AsInteger;
  cdsKitProdutoCompleto.AsBoolean := cdsKitProdutoest_atual.AsInteger >= cdsKitProdutoqtde.AsInteger;
end;

procedure TDM.cdsNotaAfterInsert(DataSet: TDataSet);
begin
  cdsNotadatalancamento.AsDateTime := Now;
  cdsNotausuario.Value := mCodigoUsuario;
  cdsNotatipo_nota.Value := 'E';
  cdsNotaoperacao.AsString := 'A';
end;

procedure TDM.cdsNotaBeforePost(DataSet: TDataSet);
begin
  if cdsNota.State in [dsEdit] then
  begin
    if (cdsNotatipo_nota.AsString = 'E') and (cdsNotatipo_nota.OldValue <> 'E') then
    begin
      Informa('Alteração de tipo de nota não permitido.');
      Abort;
    end;
  end;

end;

procedure TDM.cdsNotaCalcFields(DataSet: TDataSet);
var
  Impostos : Currency;
begin
  cdsNotavalor_nota.AsCurrency := cdsNotatotal_itens.AsCurrency +
                                   cdsNotaacrescimo.AsCurrency -
                                   cdsNotadesconto.AsCurrency;
  Impostos := cdsNotafrete.AsCurrency +
              cdsNotavalor_frete.AsCurrency +
              cdsNotaicms.AsCurrency +
              cdsNotaipi.AsCurrency ;

  if (cdsNotatipo_nota.AsString = tipo_pedido) or (cdsNotatipo_nota.AsString = tipo_orcamento) then
     cdsNotavalor_nota.AsCurrency := cdsNotavalor_nota.AsCurrency + Impostos;

  CalculaParcelas(cdsNota);

end;

procedure TDM.cdsProdutoAfterInsert(DataSet: TDataSet);
begin
  cdsProdutocontrola_estoque.Value := sTrue;
  cdsProdutodt_cadastro.AsDateTime := Date;
end;

procedure TDM.cdsProdutoAfterPost(DataSet: TDataSet);
begin
  cdsProduto.Params.ParamByName('pid').Value := cdsProdutoidproduto.AsInteger;
end;

procedure TDM.cdsProdutoCalcFields(DataSet: TDataSet);
var
  i : Integer;
  TotalImpostos : Currency;
begin
  cdsProdutoPrecoVenda_ideal.Value := 0;
  TotalImpostos := 0;
  if cdsProdutovalor_custo.AsCurrency > 0 then begin
    for i := 0 to cdsProduto.FieldCount - 1 do
    begin
      if (cdsProduto.Fields[i].Tag = 1) then
      begin
        try
         if cdsProduto.Fields[i].AsFloat > 0 then
           TotalImpostos := TotalImpostos + cdsProduto.Fields[i].AsFloat;
        except
        end;
      end;
    end;

    if TotalImpostos <> 0 then
      TotalImpostos := TotalImpostos / 100;
    cdsProdutoPrecoVenda_ideal.Value := cdsProdutovalor_custo.AsCurrency/ (1 - TotalImpostos);

    for i := 0 to cdsProduto.FieldCount - 1 do
    begin
      if (cdsProduto.Fields[i].Tag = 1) then
      begin
        try
         if cdsProduto.Fields[i].AsFloat > 0 then
           cdsProduto.FieldByName(cdsProduto.Fields[i].FieldName+'_calc').AsFloat := Porcentagem(cdsProdutoPrecoVenda_ideal.AsCurrency,cdsProduto.Fields[i].AsFloat)
         else
           cdsProduto.FieldByName(cdsProduto.Fields[i].FieldName+'_calc').AsVariant := Null;
        except
        end;
      end;
    end;

  end;




end;

procedure TDM.cdsSubGrupoAfterInsert(DataSet: TDataSet);
begin
  cdsSubGrupoidsubgrupo.Value := 0;
end;

procedure TDM.cdsSubGrupoCalcFields(DataSet: TDataSet);
begin
  if cdsSubGrupotipo.Value = _Credito then
    cdsSubGrupotipocalc.Value := 'Receita'
  else
    cdsSubGrupotipocalc.Value := 'Despesa';
end;

procedure TDM.cdsTransportadoraAfterInsert(DataSet: TDataSet);
begin
   cdsTransportadoradt_cadastro.AsDateTime := Date;
end;

procedure TDM.cdsUsuarioAfterInsert(DataSet: TDataSet);
begin
  cdsUsuarioidtbusuario.Value := 0;
end;

procedure TDM.ChecaPermissoes;
var
  i : Integer;
begin
  qrPermissao.Open;
  for i := 0 to length(aPermissoes) -1 do
  begin
    if not qrPermissao.Locate('idtbpermissao',aPermissoes[i].Cod,[]) then
    begin
      try
        qrPermissao.Insert;
        qrPermissaoidtbpermissao.Value := aPermissoes[i].Cod;
        qrPermissaodescricao.Value := aPermissoes[i].Descricao;
        qrPermissao.Post;
      except
         if qrPermissao.State in [dsEdit,dsInsert] then
           qrPermissao.Cancel;
      end;
    end;
  end;
  qrPermissao.Close;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  setConfigLocal;
  memSaldoCaixa.CreateDataSet;
  memcheque.CreateDataSet;
  SqlProcessar := qrProcessaCart.SQL.Text;
end;

procedure TDM.memSaldoCaixaCalcFields(DataSet: TDataSet);
begin
  memSaldoCaixaDinheiroSaldo.AsCurrency := memSaldoCaixaDinheiroCred.AsCurrency -
                                           memSaldoCaixaDinheiroDeb.AsCurrency;
  memSaldoCaixaChequeSaldo.AsCurrency := memSaldoCaixaChequeCre.AsCurrency -
                                           memSaldoCaixaChequeDeb.AsCurrency;
  memSaldoCaixaCartaoCreditoSaldo.AsCurrency := memSaldoCaixaCartaoCredito_Cre.AsCurrency -
                                           memSaldoCaixaCartaoCredito_Deb.AsCurrency;
  memSaldoCaixaCartaoDebitoSaldo.AsCurrency := memSaldoCaixaCartaoDebito_Cre.AsCurrency -
                                           memSaldoCaixaCartaoDebito_Deb.AsCurrency;
  memSaldoCaixatrans_saldo.AsCurrency := memSaldoCaixatrans_Cre.AsCurrency -
                                         memSaldoCaixatrans_deb.AsCurrency;
  memSaldoCaixadeposito_saldo.AsCurrency := memSaldoCaixadeposito_cre.AsCurrency -
                                            memSaldoCaixadeposito_deb.AsCurrency;

  memSaldoCaixaCreditoGeral.AsCurrency :=  memSaldoCaixaDinheiroCred.AsCurrency +
                                           memSaldoCaixaChequeCre.AsCurrency +
                                           memSaldoCaixaCartaoCredito_Cre.AsCurrency +
                                           memSaldoCaixaCartaoDebito_Cre.AsCurrency +
                                           memSaldoCaixatrans_Cre.AsCurrency +
                                           memSaldoCaixadeposito_cre.AsCurrency;

  memSaldoCaixaDebitoGeral.AsCurrency :=   memSaldoCaixaDinheiroDeb.AsCurrency +
                                           memSaldoCaixaChequeDeb.AsCurrency +
                                           memSaldoCaixaCartaoCredito_Deb.AsCurrency +
                                           memSaldoCaixaCartaoDebito_Deb.AsCurrency +
                                           memSaldoCaixatrans_deb.AsCurrency +
                                           memSaldoCaixadeposito_deb.AsCurrency;

  memSaldoCaixaSaldoGeral.AsCurrency := memSaldoCaixaCreditoGeral.AsCurrency -
                                        memSaldoCaixaDebitoGeral.AsCurrency;


end;

procedure TDM.TimerKeepAliveTimer(Sender: TObject);
var
  myqr : TZQuery;
begin
   //matem a conexão ativa executando um comando a cada 5 minutos
   try
      TimerKeepAlive.Enabled := False;
      myqr := TZQuery.Create(nil);
      myqr.Connection := DM.ZConnection;
      myqr.SQL.Add('select id from tbconfigs');
      myqr.Open;
      myqr.Close;
      Application.ProcessMessages;
      if ZConnectionFoto.Connected then
      begin
        myqr.Connection := DM.ZConnectionFoto;
        myqr.SQL.Clear;
        myqr.SQL.Add('select codigo from tbfoto_produto limit 1');
        myqr.Open;
        myqr.Close;
      end;

   finally
      FreeAndNil(myqr);
      TimerKeepAlive.Enabled := True;
   end;
end;

procedure TDM.ZConnectionAfterConnect(Sender: TObject);
begin
  //checa necessidade de sincronização do banco de dados
  qrVersao.Open;
  if qrVersaoversao.Value <> VersaoBanco then
  begin//tem que atualizar
    {for i := qrVersaoversao.AsInteger + 1 to VersaoBanco do
    begin
      ZSQLProcessor.Script.Add(SQLScript.SQL.Text);


      ZSQLProcessor.Execute;
    end; }

    if FileExists(mPath+'Script.sql') then
    begin
      try
        ZSQLProcessor.Script.Clear;
        ZSQLProcessor.Script.LoadFromFile(mPath+'Script.sql');
        ZSQLProcessor.Execute;
      except
      end;
      DeleteFile(pChar(mPath+'Script.sql'));
    end;

    if qrVersaoidtbversao.AsInteger <= 0 then begin
      qrVersao.Insert;
      qrVersaoidtbversao.Value := 1;
    end
    else
      qrVersao.Edit;

    qrVersaoversao.Value := VersaoBanco;
    qrVersao.Post;

    //verifica o cadastro de novas permissoes
    //ChecaPermissoes;
  end;

  {  try
      //connection images
      with ZConnectionFoto do begin
        Catalog  := 'inspe176_images';
        Database := 'inspe176_images';
        HostName := ZConnection.HostName;
        Password := ZConnection.Password;
        Protocol := ZConnection.Protocol;
        Properties.Text := ZConnection.Properties.Text;
        User     := ZConnection.User;
        Connect;
      end;
    except
      Informa('Erro ao conectar banco de Imagens.');
    end;
  }

  TimerKeepAlive.Enabled := True;
end;

procedure TDM.ZConnectionBeforeConnect(Sender: TObject);
var
  ConfigDB : TFormConfigDB;
  Conectado : Boolean;
  Config : TConfig;
begin
  ConfigDB := TFormConfigDB.Create(nil);
  ConfigDB.Tag := 1;
  with ConfigDB do begin
    Conectado := False;
    try
        if (ParamStr(1) = '/db') then
          ConfigDB.ShowModal;
        repeat
          try
            Config := CheckRegistry(Config,True);
            Conectado := TestConnection(Config);
            if (Conectado) then
            begin
              with ZConnection do begin
                HostName := Config.Host;
                User     := Config.User;
                Password := Config.Password;
                Catalog  := Config.DBName;
                Database := Config.DBName;
              end;
            end;
          except
            Conectado := False;
          end;
        until (Conectado) or (ConfigDB.ShowModal <> mrOk)  ;


    except
      Conectado := False;
    end;


  end;

  ConfigDB.Free;

  { with ZConnection do begin
      HostName := 'dbmy0062.whservidor.com';// 'inspell.com.br';
      User     := 'metalumace';// 'inspe176_usrtest';
      Password := 'metal1990';// 'B0&h4cP3TLUQ';
      Catalog := 'metalumace';
      Database := 'metalumace';
      Conectado := True;
   end; }

  if (not Conectado) then
  begin
      Informa('Configuração do sistema inválida.');
      ZConnection.Tag := 1; //termina a aplicação
      Application.Terminate;
      Abort;
  end;

end;

function TDM.InsertCaixa(Dados: TCaixa) : boolean;
var
  Query : TZQuery;
begin
  Result := True;
  try
    Query := TZQuery.Create(nil);
    Query.Connection := DM.ZConnection;
    Query.SQL.Add('insert into tbcaixa (data_hora, idusuario, idconta, valor, tipo, forma_pagamento, descricao, idvenda) values');
    Query.SQL.Add('(current_timestamp, '+ IntToStr(mCodigoUsuario)+', '+IntToStrNull(Dados.idconta) +','+
      FloatToStrSql(Dados.valor) +','+ QuotedStr(Dados.tipo) +','+ QuotedStr(Dados.forma_pagamento) +', '+
      QuotedStr(Dados.descricao) +','+IntToStrNull(Dados.idvenda)+')');
    Query.ExecSQL;
  except
    Result := False;
  end;
end;

function TDM.MovimentaCaixa(myForm : TFormFinalizaVenda; var DadosCaixa: TCaixa) : Boolean;
var
  Erro : Boolean;
begin
 {$REGION 'insere os movimento no caixa das vendas e contas a pagar e receber'}
 Result := False;
  try
     Erro := False;

     //dinheiro
     if (not Erro) and  (myForm.Totais.TotalDinheiro > 0) then
     begin
       DadosCaixa.forma_pagamento := fpg_dinheiro;
       DadosCaixa.valor := myForm.Totais.TotalDinheiro;
       Erro := not DM.InsertCaixa(DadosCaixa);
     end;

     //cartao credito
     if (not Erro) and (myForm.Totais.TotalCartao_Cre > 0) then
     begin
       DadosCaixa.forma_pagamento := fpg_cartaoCre;
       DadosCaixa.valor := myForm.Totais.TotalCartao_Cre;
       Erro := not DM.InsertCaixa(DadosCaixa);
     end;

     //cartao débito
     if (not Erro) and (myForm.Totais.TotalCartao_Deb > 0) then
     begin
       DadosCaixa.forma_pagamento := fpg_cartaoDe;
       DadosCaixa.valor := myForm.Totais.TotalCartao_Deb;
       Erro := not DM.InsertCaixa(DadosCaixa);
     end;

     //cheque
     if (not Erro) and (myForm.Totais.TotalCheque > 0) then
     begin
       DadosCaixa.forma_pagamento := fpg_cheque;
       DadosCaixa.valor := myForm.Totais.TotalCheque;
       Erro := not DM.InsertCaixa(DadosCaixa);
     end;

     //prazo
     if (not Erro) and (myForm.Totais.TotalPrazo > 0) then
     begin
       DadosCaixa.forma_pagamento := fpg_prazo;
       DadosCaixa.valor := myForm.Totais.TotalPrazo;
       Erro := not DM.InsertCaixa(DadosCaixa);
     end;

     //Deposito
     if (not Erro) and (myForm.Totais.TotalDeposito > 0) then
     begin
       DadosCaixa.forma_pagamento := fpg_deposito;
       DadosCaixa.valor := myForm.Totais.TotalDeposito;
       Erro := not DM.InsertCaixa(DadosCaixa);
     end;

     //transferencia
     if (not Erro) and (myForm.Totais.TotalTransferencia > 0) then
     begin
       DadosCaixa.forma_pagamento := fpg_transferencia;
       DadosCaixa.valor := myForm.Totais.TotalTransferencia;
       Erro := not DM.InsertCaixa(DadosCaixa);
     end;

     Result := not Erro;
  except
    Result := False;
  end;
  {$ENDREGION}
end;

function TDM.GravaCheques(myForm : TFormFinalizaVenda; IDConta, IDCliente : Integer) : boolean;
var
  idcheque : Integer;
begin
  try
    Result := True;
    if not cdsCheque.Active then cdsCheque.Open;
    if not cdsContaCheque.Active then cdsContaCheque.Open;

    with myForm do begin
       memcheque.First;
       while not memcheque.Eof do
       begin
         cdsCheque.Insert;
         cdsChequeidtbcheque.Value := 0;
         cdsChequenumcheque.Value := memchequenumchque.Value;
         cdsChequebanco.Value := memchequebanco.Value;
         cdsChequeagencia.Value := memchequeagencia.Value;
         cdsChequeconta.Value := memchequeconta.Value;
         cdsChequetipo_cheque.Value := memchequeTipo.Value;
         cdsChequedocumento_terceiro.Value := memchequedocumento.Value;
         cdsChequevalor.Value := memchequevalor.Value;
         cdsChequedata_vencimento.Value := memchequedtvencimento.Value;
         cdsChequedata_lancamento.Value := Date;
         if IDCliente > 0 then
           cdsChequeidcliente.Value := IDCliente;
         cdsChequenome_terceiro.Value := memchequeNome_Terceiro.Value;
         cdsChequestatus.Value := cheque_pendente;
         cdsCheque.Post;
         cdsCheque.ApplyUpdates;

         idcheque := cdsChequeidtbcheque.AsInteger;

         //insere conta e cheque
         cdsContaCheque.Insert;
         cdsContaChequeidconta.Value := idConta;
         cdsContaChequeidcheque.Value := idCheque;
         cdsContaCheque.Post;

         memcheque.Next;
       end;

       if cdsContaCheque.UpdatesPending then
          cdsContaCheque.ApplyUpdates;
    end;
  except
    Result := False;
  end;
end;

procedure TDM.qrCompCombustivelAfterInsert(DataSet: TDataSet);
begin
  qrCompCombustivelIdestoque_gas.Value := 0;
end;

procedure TDM.qrCompCombustivelCalcFields(DataSet: TDataSet);
begin
  qrCompCombustivelvalor_total.Value := qrCompCombustivelvalor_unit.AsCurrency * qrCompCombustivelqtde.AsInteger;
end;

procedure TDM.qrCustoMedioCalcFields(DataSet: TDataSet);
begin
  qrCustoMediocusto_medio.AsCurrency := qrCustoMediovalor_total.AsCurrency / qrCustoMedioqtde_total.AsInteger;
end;

procedure TDM.qrItensVendaCalcFields(DataSet: TDataSet);
begin
  qrItensVendaTotal_Item.AsCurrency := (qrItensVendapreco.AsCurrency - qrItensVendadesconto.AsCurrency) * qrItensVendaqtde.AsInteger;
  if qrItensVendaTotal_Item.AsCurrency < 0 then
    qrItensVendaTotal_Item.AsCurrency := 0;

  if qrItensVendaidproduto.AsInteger > 0 then
  begin
    qrItensVendadescricaocalc.Value := qrItensVendadescricao.Value;
    qrItensVendabarrascalc.Value := qrItensVendacodbarras.Value;
  end
  else begin
    qrItensVendadescricaocalc.Value := qrItensVendadescricaokit.Value;
    qrItensVendabarrascalc.Value := qrItensVendacodbarraskit.Value;
  end;

end;

procedure TDM.qrNotaPagamentoAfterInsert(DataSet: TDataSet);
begin
  qrNotaPagamentoidnota.Value := cdsNotaidnota.Value;
  qrNotaPagamentoidpagamento.Value := 0;
end;

procedure TDM.qrNotaPagamentoAfterOpen(DataSet: TDataSet);
begin
  qrNotaPagamento.SortedFields := 'data_vencimento';
end;

function TDM.SelecionaConta(IDConta : Integer; Atualizar : Boolean): Boolean;
begin
  if (not cdsCadConta.Active) or (cdsCadContaidconta.AsInteger <> IDConta) or (Atualizar) then
  begin
    cdsCadConta.Close;
    cdsCadConta.Params.ParamByName('pidconta').AsInteger := IDConta;
    cdsCadConta.Open;
  end;

  Result := cdsCadContaidconta.AsInteger = IDConta;
end;

function TDM.ChecaBarras(CodBarras : String; ID : Integer; Tabela : Char) : Boolean;
var
  msg : String;
begin
  Result := False;
  try
    with qrSQL do begin
      Close;
      SQL.Clear;
      SQL.Add('select codbarras, descricao from tbproduto where codbarras = '+QuotedStr(CodBarras));
      if Tabela = 'P' then
        SQL.Add(' and idproduto <> '+IntToStr(ID));
      SQL.Add('union select codbarras, descricao from tbkit where codbarras = '+QuotedStr(CodBarras));
       if Tabela = 'K' then
        SQL.Add(' and idkit <> '+IntToStr(ID));
      Open;

      if RecordCount > 0 then
      begin
        First;
        while not Eof do
        begin
          msg := msg + #13#10 + FieldByName('descricao').AsString ;
          Next;
        end;

        if Pergunta('Foram encontrados produtos utilizando este código Garra.'+ msg +#13+
                    'Deseja continuar com o cadastro?') = id_no then
          Result := True;

      end;

    end;
  except
  end;
end;

procedure TDM.EfetuaBackup;
var
  vParam, Pasta, backupfile : String ;
begin
  Pasta := ExtractFilePath(Application.ExeName)+'Backup';
  if not DirectoryExists(Pasta) then ForceDirectories(Pasta);
  backupfile := Pasta +'\'+FormatDateTime('yyyy_mm_dd_hh_nn_ss',Now)+'Backup.sql';

  with ZConnection do begin
    vParam := '-h '+ HostName + ' --user='+User+' --password="'+Password+'" -v --opt '+Database+' -r "'+backupfile+'"';

    ExecutaPrograma('mysqldump.exe',vParam,True);

  end;

end;

function TDM.ExecutaComando(psql : string) : boolean;
begin
  Result := true;
  try
    with qrComando do begin
      Close;
      SQL.Clear;
      SQL.Add(psql);
      ExecSQL;
    end;
  except
    Result := false;

  end;

end;

procedure TDM.EfetuaRestauracao;
var
  vParam, Pasta, backupfile : String ;
  OpenDialog : TOpenDialog;
  arquivo : TStrings;
begin
  Pasta := ExtractFilePath(Application.ExeName)+'Backup';
  OpenDialog := TOpenDialog.Create(nil);
  OpenDialog.InitialDir := Pasta;
  OpenDialog.Title := 'Selecione o arquivo de backup.';
  OpenDialog.Filter := 'Arquivo de backup|*.sql';
  if OpenDialog.Execute then
  begin
    if Pergunta('Atenção!!!'+#13#13+
                'Ao restaurar o arquivo de backup o banco de dados atual será substituído.'+#13+#13+
                'Esta operação é irreversível, antes de efetuar a restauração tenha a certeza de ter efetuado um backup dos dados atuais.'+#13 +#13+
                'Deseja realmente continuar?') = id_no then
      Exit;

    DM.EfetuaBackup;

    with ZConnection do begin
      vParam := '-h '+HostName+' -u '+User+' -p'+Password+' -v '+ Database + ' < "'+OpenDialog.FileName+'"';

      //ShellExecute(Application.Handle,'open',pWideChar(ExtractFilePath(Application.ExeName)+'mysql.exe'),pWideChar(vParam),nil,SW_SHOWNORMAL);

      try
        arquivo := TStringList.Create;
        arquivo.Add(ExtractFilePath(Application.ExeName)+'mysql.exe '+vParam);
        arquivo.SaveToFile(ExtractFilePath(Application.ExeName)+'Restaurar.bat');
        arquivo.Free;
        ExecutaPrograma(ExtractFilePath(Application.ExeName)+'Restaurar.bat','',True);
      finally
        if FileExists(ExtractFilePath(Application.ExeName)+'Restaurar.bat') then
          DeleteFile(pWideChar(ExtractFilePath(Application.ExeName)+'Restaurar.bat'));
      end;

     // ExecutaPrograma(ExtractFilePath(Application.ExeName)+'mysql.exe',vParam,True);

    end;
  end;


end;

procedure TDM.setControle(id : integer);
begin
  cdsControle.Close;
  cdsControle.Params.ParamByName('id').AsInteger := id;
  cdsControle.Open;

end;



end.

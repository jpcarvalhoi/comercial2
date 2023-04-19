unit uRelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppProd, ppClass, ppReport, DB, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCache, ppParameter,
  ppVar, ppCtrls, ppPrnabl, ZAbstractRODataset, ZAbstractDataset, ZDataset, ppTypes,
  ppStrtch, ppRegion, ppSubRpt, jpeg, ppMemo, myChkBox, ppDesignLayer;

type
  TFormRelatorios = class(TForm)
    ppDBConfigs: TppDBPipeline;
    dsConfigs: TDataSource;
    rpNotaItens: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    qrLucratividade: TZQuery;
    qrLucratividadeidvenda: TIntegerField;
    qrLucratividadedatahora: TDateTimeField;
    qrLucratividadedesconto: TFloatField;
    qrLucratividadeacrescimo: TFloatField;
    qrLucratividadevalor_total: TFloatField;
    qrLucratividadedesconto_item: TFloatField;
    qrLucratividadepreco_custo: TFloatField;
    ppdbLucratividade: TppDBPipeline;
    dsLucratividade: TDataSource;
    rpLucratividade: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    qrLucratividadedesconto_acrescimo: TCurrencyField;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    qrLucratividadevalor_liquido: TCurrencyField;
    qrLucratividadevalor_lucro: TCurrencyField;
    qrLucratividadepercentual_lucro: TCurrencyField;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    qrVendaProdutos: TZQuery;
    qrVendaProdutosidvenda: TIntegerField;
    qrVendaProdutosiditem: TIntegerField;
    qrVendaProdutosidproduto: TIntegerField;
    qrVendaProdutosqtde: TIntegerField;
    qrVendaProdutospreco: TFloatField;
    qrVendaProdutosdesconto: TFloatField;
    qrVendaProdutosdatahora: TDateTimeField;
    qrVendaProdutoscodcliente: TIntegerField;
    qrVendaProdutoskilometragem: TIntegerField;
    qrVendaProdutosnome: TWideStringField;
    qrVendaProdutosvalor_total: TCurrencyField;
    ppdbVendaProdutos: TppDBPipeline;
    dsVendaProdutos: TDataSource;
    rpVendaProdutos: TppReport;
    ppParameterList3: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppLabel11: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    pplbPerVendaProd: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    qrVendaProdutosdescricao: TWideStringField;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    pplbkm: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBTextkm: TppDBText;
    ppLine4: TppLine;
    ppLabel12: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape1: TppShape;
    ppLabel21: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine5: TppLine;
    ppDBCalc9: TppDBCalc;
    qrProduto: TZQuery;
    ppdbProduto: TppDBPipeline;
    rpProduto: TppReport;
    dsProduto: TDataSource;
    qrProdutoidproduto: TIntegerField;
    qrProdutocodbarras: TWideStringField;
    qrProdutodescricao: TWideStringField;
    qrProdutovalor_custo: TFloatField;
    qrProdutovalor_varejo: TFloatField;
    qrProdutoest_minimo: TIntegerField;
    qrProdutoest_atual: TIntegerField;
    qrProdutoidcategoria: TIntegerField;
    qrProdutodt_cadastro: TDateField;
    qrProdutocategoria: TWideStringField;
    ppParameterList4: TppParameterList;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppLabel18: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine7: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine8: TppLine;
    ppLabel27: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    dsCaixa: TDataSource;
    ppDbCaixa: TppDBPipeline;
    rpCaixa: TppReport;
    ppParameterList5: TppParameterList;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppFooterBand5: TppFooterBand;
    ppLabel33: TppLabel;
    ppLine11: TppLine;
    ppLabel34: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppLine12: TppLine;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppRegion1: TppRegion;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLine13: TppLine;
    ppShape2: TppShape;
    ppRegion2: TppRegion;
    ppShape3: TppShape;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppRegion3: TppRegion;
    ppShape4: TppShape;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppRegion4: TppRegion;
    ppShape5: TppShape;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppRegion5: TppRegion;
    ppShape6: TppShape;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppRegion6: TppRegion;
    ppShape7: TppShape;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBSaldo: TppDBPipeline;
    ppRegion7: TppRegion;
    ppShape8: TppShape;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBRecibo: TppDBPipeline;
    qrVendaRecibo: TZQuery;
    rpReciboA4: TppReport;
    dsRecibo: TDataSource;
    ppParameterList6: TppParameterList;
    ppHeaderBand6: TppHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppFooterBand6: TppFooterBand;
    ppLabel69: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine14: TppLine;
    ppLabel70: TppLabel;
    ppDBText50: TppDBText;
    ppLabel71: TppLabel;
    ppDBText51: TppDBText;
    ppLabel72: TppLabel;
    ppDBText52: TppDBText;
    ppLabel73: TppLabel;
    ppDBText53: TppDBText;
    ppLabel74: TppLabel;
    ppDBText54: TppDBText;
    ppLabel75: TppLabel;
    ppDBText55: TppDBText;
    ppLabel76: TppLabel;
    ppDBText56: TppDBText;
    ppLabel77: TppLabel;
    ppDBText57: TppDBText;
    ppLabel78: TppLabel;
    ppDBText58: TppDBText;
    ppShape9: TppShape;
    ppLabel79: TppLabel;
    ppDBText59: TppDBText;
    ppLabel80: TppLabel;
    ppDBText60: TppDBText;
    ppLabel81: TppLabel;
    ppDBText61: TppDBText;
    ppShape10: TppShape;
    ppLabel82: TppLabel;
    ppLine15: TppLine;
    dsItemRecibo: TDataSource;
    qrItemRecibo: TZQuery;
    ppDBItemRecibo: TppDBPipeline;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand7: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    ppLabel84: TppLabel;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppLabel85: TppLabel;
    ppDBText64: TppDBText;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppLabel88: TppLabel;
    ppDBText67: TppDBText;
    ppLabel89: TppLabel;
    qrVendaReciboidvenda: TIntegerField;
    qrVendaRecibodatahora: TDateTimeField;
    qrVendaRecibototal_venda: TFloatField;
    qrVendaRecibocodcliente: TIntegerField;
    qrVendaRecibodesconto: TFloatField;
    qrVendaReciboacrescimo: TFloatField;
    qrVendaRecibonome: TWideStringField;
    qrVendaRecibodocumento: TWideStringField;
    qrVendaReciboendereco: TWideStringField;
    qrVendaRecibobairro: TWideStringField;
    qrVendaRecibocidade: TWideStringField;
    qrVendaRecibouf: TWideStringField;
    qrVendaRecibotelefone: TWideStringField;
    qrVendaRecibocelular: TWideStringField;
    qrVendaReciborg: TWideStringField;
    qrVendaRecibocep: TWideStringField;
    qrVendaReciboemail: TWideStringField;
    qrVendaReciboresponsavel: TWideStringField;
    ppLine16: TppLine;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppImageLoboRecibo: TppImage;
    ppSystemVariable8: TppSystemVariable;
    ppDBCalc11: TppDBCalc;
    ppLabel83: TppLabel;
    ppLine17: TppLine;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppLine18: TppLine;
    qrVendaReciboTOTALGERAL: TCurrencyField;
    ppLabel93: TppLabel;
    ppShape11: TppShape;
    ppLabel94: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    qrFormaPagamento: TZQuery;
    qrFormaPagamentoidconta: TIntegerField;
    qrFormaPagamentodata_vencimento: TDateField;
    qrFormaPagamentovalor: TFloatField;
    qrFormaPagamentoforma_pagamento: TWideStringField;
    ppDBFormaPg: TppDBPipeline;
    dsFormaPg: TDataSource;
    ppTitleBand2: TppTitleBand;
    ppDetailBand8: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    qrFormaPagamentoidvenda: TIntegerField;
    qrNota: TZQuery;
    dsNota: TDataSource;
    ppDBNota: TppDBPipeline;
    rpNota: TppReport;
    ppParameterList7: TppParameterList;
    ppHeaderBand7: TppHeaderBand;
    ppDetailBand9: TppDetailBand;
    ppFooterBand7: TppFooterBand;
    ppTitleBand3: TppTitleBand;
    pplbTitulo: TppLabel;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppImage1: TppImage;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppSystemVariable9: TppSystemVariable;
    ppGroup3: TppGroup;
    ppGroupHeaderBandIdNot: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel99: TppLabel;
    ppDBText82: TppDBText;
    ppLabel100: TppLabel;
    ppDBText83: TppDBText;
    pplbValidade: TppLabel;
    ppDBText84: TppDBText;
    ppLabel102: TppLabel;
    ppDBText85: TppDBText;
    ppShape12: TppShape;
    pplbCliente: TppLabel;
    ppDBTextNome: TppDBText;
    ppLabel107: TppLabel;
    ppDBTextDocumento: TppDBText;
    ppLabel108: TppLabel;
    ppDBTextEnd: TppDBText;
    ppLabel109: TppLabel;
    ppDBTextBairro: TppDBText;
    ppLabel110: TppLabel;
    ppDBTextCep: TppDBText;
    ppLabel111: TppLabel;
    ppDBTextCidade: TppDBText;
    ppLabel112: TppLabel;
    ppDBTextTelefone: TppDBText;
    ppLabel113: TppLabel;
    ppDBTextCelular: TppDBText;
    ppLabel114: TppLabel;
    ppDBTextEmail: TppDBText;
    ppShape13: TppShape;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    pplbvunit: TppLabel;
    pplbqtde: TppLabel;
    pplbvtotal: TppLabel;
    ppLine21: TppLine;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppdbvunit: TppDBText;
    ppDBText98: TppDBText;
    ppdbvtotal: TppDBText;
    ppLabel117: TppLabel;
    ppDBCalc12: TppDBCalc;
    pplbsomatotal: TppLabel;
    ppdbcalctotal: TppDBCalc;
    ppLine22: TppLine;
    qrNotaPg: TZQuery;
    dsNotaPg: TDataSource;
    ppDBNotaPg: TppDBPipeline;
    ppDBMemo1: TppDBMemo;
    lbObs: TppLabel;
    ppRegionNota: TppRegion;
    ppTitleBand5: TppTitleBand;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppImage2: TppImage;
    ppTitleBand6: TppTitleBand;
    ppImage3: TppImage;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppTitleBand7: TppTitleBand;
    ppImage4: TppImage;
    ppDBText96: TppDBText;
    ppDBText102: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppLabel98: TppLabel;
    ppDBText110: TppDBText;
    myCheckBox1: TmyCheckBox;
    ppLabel101: TppLabel;
    ppDBText100: TppDBText;
    ppLabel106: TppLabel;
    ppDBText101: TppDBText;
    ppLabel116: TppLabel;
    ppDBText103: TppDBText;
    ppLabel120: TppLabel;
    ppDBText106: TppDBText;
    ppLabel121: TppLabel;
    ppDBText107: TppDBText;
    ppLabel122: TppLabel;
    ppDBText108: TppDBText;
    ppLabel123: TppLabel;
    ppDBText109: TppDBText;
    ppLabel124: TppLabel;
    ppDBText111: TppDBText;
    ppLabel125: TppLabel;
    ppDBText112: TppDBText;
    ppLabel126: TppLabel;
    ppDBText113: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppLabel115: TppLabel;
    ppLabel118: TppLabel;
    ppDBText97: TppDBText;
    lbFantasia: TppLabel;
    ppDBText99: TppDBText;
    ppLabel119: TppLabel;
    ppDBText114: TppDBText;
    ppLabel127: TppLabel;
    ppDBText115: TppDBText;
    ppMemo1: TppMemo;
    rpProducao: TppReport;
    ppTitleBand4: TppTitleBand;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppImage5: TppImage;
    ppHeaderBand8: TppHeaderBand;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    pplbProducao: TppLabel;
    pplbPerProducao: TppLabel;
    ppDetailBand10: TppDetailBand;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppDBText122: TppDBText;
    ppDBText124: TppDBText;
    ppFooterBand8: TppFooterBand;
    ppLabel130: TppLabel;
    ppLine3: TppLine;
    ppParameterList8: TppParameterList;
    qrProducao: TZQuery;
    dsProcucao: TDataSource;
    ppdbProducao: TppDBPipeline;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    rpClienteProduto: TppReport;
    ppTitleBand8: TppTitleBand;
    ppDBText123: TppDBText;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppImage6: TppImage;
    ppHeaderBand9: TppHeaderBand;
    ppSystemVariable12: TppSystemVariable;
    ppSystemVariable13: TppSystemVariable;
    ppLabel129: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppDetailBand11: TppDetailBand;
    ppFooterBand9: TppFooterBand;
    ppLabel140: TppLabel;
    ppLine27: TppLine;
    ppParameterList9: TppParameterList;
    qrClienteProduto: TZQuery;
    dsClienteproduto: TDataSource;
    ppdbClienteProduto: TppDBPipeline;
    ppGroup4: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppShape14: TppShape;
    ppLine28: TppLine;
    pplbPrefeitura: TppLabel;
    qrNotaiditem: TIntegerField;
    qrNotaidnota: TIntegerField;
    qrNotaidproduto: TIntegerField;
    qrNotaqtde: TIntegerField;
    qrNotavalor_unit: TFloatField;
    qrNotatipo_nota: TWideStringField;
    qrNotaidkit: TIntegerField;
    qrNotaedital: TWideStringField;
    qrNotaidnota_1: TIntegerField;
    qrNotadatanota: TDateField;
    qrNotausuario: TIntegerField;
    qrNotaidfornecedor: TIntegerField;
    qrNotadatalancamento: TDateTimeField;
    qrNotanumnota: TIntegerField;
    qrNotatipo_nota_1: TWideStringField;
    qrNotadesconto: TFloatField;
    qrNotaacrescimo: TFloatField;
    qrNotatotal_itens: TFloatField;
    qrNotaidtransportadora: TIntegerField;
    qrNotaicms: TFloatField;
    qrNotavalor_frete: TFloatField;
    qrNotafrete: TFloatField;
    qrNotaipi: TFloatField;
    qrNotaprevisao: TDateField;
    qrNotatipo_frete: TWideStringField;
    qrNotaprazo_pagamento: TWideStringField;
    qrNotaidcliente: TIntegerField;
    qrNotafinalizado_em: TDateField;
    qrNotaidcliente_venda: TIntegerField;
    qrNotanumedital: TIntegerField;
    qrNotaforma_pg: TIntegerField;
    qrNotacliente: TWideStringField;
    qrNotadocumento: TWideStringField;
    qrNotaendereco: TWideStringField;
    qrNotabairro: TWideStringField;
    qrNotacidade: TWideStringField;
    qrNotauf: TWideStringField;
    qrNotacep: TWideStringField;
    qrNotatelefone: TWideStringField;
    qrNotacelular: TWideStringField;
    qrNotaemail: TWideStringField;
    qrNotafantasia: TWideStringField;
    qrNotadocumento_for: TWideStringField;
    qrNotacliente_for: TWideStringField;
    qrNotaendereco_for: TWideStringField;
    qrNotabairro_for: TWideStringField;
    qrNotacidade_for: TWideStringField;
    qrNotauf_for: TWideStringField;
    qrNotacep_for: TWideStringField;
    qrNotatelefone_for: TWideStringField;
    qrNotacelular_for: TWideStringField;
    qrNotaemail_for: TWideStringField;
    qrNotaest_atual: TIntegerField;
    qrNotanome: TWideStringField;
    qrNotacodbarras: TWideStringField;
    qrNotadescricao: TWideStringField;
    qrNotavalor_total: TFloatField;
    qrNotavalor_nota: TFloatField;
    qrNotavcliente: TWideStringField;
    qrNotavdocumento: TWideStringField;
    qrNotavendereco: TWideStringField;
    qrNotavbairro: TWideStringField;
    qrNotavcidade: TWideStringField;
    qrNotavuf: TWideStringField;
    qrNotavcep: TWideStringField;
    qrNotavtelefone: TWideStringField;
    qrNotavcelular: TWideStringField;
    qrNotavemail: TWideStringField;
    qrNotatamanho: TWideStringField;
    qrNotavfantasia: TWideStringField;
    qrNotavmatricula: TWideStringField;
    qrNotavstatus_abo: TWideStringField;
    qrNotaValorDinheiro: TCurrencyField;
    qrNotaValorDebito: TCurrencyField;
    qrNotaValorCred: TCurrencyField;
    qrNotaValorPar2: TCurrencyField;
    qrNotaValorPar3: TCurrencyField;
    qrNotaValorPar4: TCurrencyField;
    qrNotaValorPar5: TCurrencyField;
    qrNotaValorPar6: TCurrencyField;
    ppdbTextTotal: TppDBText;
    ppregionpg: TppRegion;
    ppLabel131: TppLabel;
    ppDBText137: TppDBText;
    ppLabel139: TppLabel;
    qrClienteVenda: TZQuery;
    dsClienteVenda: TDataSource;
    ppdbClienteVenda: TppDBPipeline;
    rpClienteVenda: TppReport;
    ppTitleBand9: TppTitleBand;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppImage7: TppImage;
    ppHeaderBand10: TppHeaderBand;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel153: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppDBText142: TppDBText;
    ppDBText145: TppDBText;
    ppFooterBand10: TppFooterBand;
    ppLabel154: TppLabel;
    ppLine29: TppLine;
    ppParameterList10: TppParameterList;
    ppGroup5: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLabel155: TppLabel;
    ppDBText146: TppDBText;
    ppLabel156: TppLabel;
    ppDBText147: TppDBText;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppDBText148: TppDBText;
    ppDBText143: TppDBText;
    ppLine30: TppLine;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppLabel149: TppLabel;
    ppDBText144: TppDBText;
    qrNotacodgarra: TWideStringField;
    qrNotavcodgarra: TWideStringField;
    myCheckBox2: TmyCheckBox;
    qrNotalote: TWideStringField;
    ppDBText149: TppDBText;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppDBCalc13: TppDBCalc;
    qrClientePref: TZQuery;
    dsClientePref: TDataSource;
    dbClientPref: TppDBPipeline;
    rpClientPref: TppReport;
    ppParameterList11: TppParameterList;
    ppHeaderBand11: TppHeaderBand;
    ppDetailBand13: TppDetailBand;
    ppFooterBand11: TppFooterBand;
    ppLabel152: TppLabel;
    ppGroup7: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLabel161: TppLabel;
    ppDBText150: TppDBText;
    ppLabel162: TppLabel;
    ppDBText151: TppDBText;
    ppLabel163: TppLabel;
    ppDBText152: TppDBText;
    ppLabel164: TppLabel;
    ppDBText153: TppDBText;
    ppLabel165: TppLabel;
    ppDBText154: TppDBText;
    ppLine26: TppLine;
    ppDBText155: TppDBText;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppSystemVariable16: TppSystemVariable;
    ppSystemVariable17: TppSystemVariable;
    ppLine31: TppLine;
    ppShape17: TppShape;
    ppTitleBand10: TppTitleBand;
    ppShape18: TppShape;
    qrNotaobs: TWideMemoField;
    qrNotaoperacao: TWideStringField;
    qrNotatotal_par2: TCurrencyField;
    qrNotatotal_par3: TCurrencyField;
    qrNotatotal_par4: TCurrencyField;
    qrNotatotal_par5: TCurrencyField;
    qrNotatotal_par6: TCurrencyField;
    ppLabel128: TppLabel;
    lbTotal: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure ConfigPrint(Sender: TObject; PdfName : String);
    procedure qrLucratividadeCalcFields(DataSet: TDataSet);
    procedure qrVendaProdutosCalcFields(DataSet: TDataSet);
    procedure getRodapeText(Sender: TObject; var Text: string);
    procedure saldoGetText(Sender: TObject; var Text: string);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure rpReciboA4BeforePrint(Sender: TObject);
    procedure ppDBText51GetText(Sender: TObject; var Text: string);
    procedure ppDBText56GetText(Sender: TObject; var Text: string);
    procedure EnderecoGetText(Sender: TObject; var Text: string);
    procedure BairroGetText(Sender: TObject; var Text: string);
    procedure TelefoneRelGetText(Sender: TObject; var Text: string);
    procedure ppHeaderBand6BeforePrint(Sender: TObject);
    procedure qrVendaReciboCalcFields(DataSet: TDataSet);
    procedure ppTitleBand3BeforePrint(Sender: TObject);
    procedure ppDBText102GetText(Sender: TObject; var Text: string);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppDBText87GetText(Sender: TObject; var Text: string);
    procedure ppTitleBand5BeforePrint(Sender: TObject);
    procedure ppTitleBand6BeforePrint(Sender: TObject);
    procedure ppTitleBand7BeforePrint(Sender: TObject);
    procedure ppTitleBand8BeforePrint(Sender: TObject);
    procedure ppDBText136GetText(Sender: TObject; var Text: string);
    procedure ppDBText137GetText(Sender: TObject; var Text: string);
    procedure qrNotaCalcFields(DataSet: TDataSet);
    procedure ppTitleBand9BeforePrint(Sender: TObject);
  private
    procedure ItensRecibo;

    { Private declarations }
  public
    { Public declarations }
    SqlLucratividade, SqlVendaProdutos, SqlProdutos, SqlVendaRecibo, SqlProducao,
    SqlClientePref : String;
    procedure ImprimeNota(IdNota: Integer; Imprimir : Boolean = True;
      TipoNota : String = 'O');
    procedure LoadLogoPadrao(Image: TppImage);

  end;

var
  FormRelatorios: TFormRelatorios;

implementation

uses uDM, FuncoesGerais, FuncoesGlobais;

{$R *.dfm}

procedure TFormRelatorios.FormCreate(Sender: TObject);
begin
  SqlLucratividade := qrLucratividade.SQL.Text;
  ConfigPrint(rpLucratividade, 'Lucratividade.pdf');

  SqlVendaProdutos := qrVendaProdutos.SQL.Text;
  ConfigPrint(rpVendaProdutos,'VendaProdutos.pdf');

  pplbkm.Visible :=  LiberaVeiculos;
  ppDBTextkm.Visible := LiberaVeiculos;

  SqlProdutos := qrProduto.SQL.Text;
  ConfigPrint(rpProduto,'Produtos.pdf');

  ConfigPrint(rpCaixa,'Caixa.pdf');

  SqlVendaRecibo := qrVendaRecibo.SQL.Text;
  ConfigPrint(rpReciboA4,'ReciboVenda.pdf');

  ConfigPrint(rpNota,'Orçamento.pdf');

  ConfigPrint(rpProducao,'Produção.pdf');
  SqlProducao := qrProducao.SQL.Text;

  ConfigPrint(rpClienteProduto,'ClienteProduto.pdf');
  ConfigPrint(rpClienteVenda,'ClienteVenda.pdf');

  ConfigPrint(rpClientPref,'ClientePrefeitura.pdf');
  SqlClientePref := qrClientePref.SQL.Text;

end;

procedure TFormRelatorios.getRodapeText(Sender: TObject; var Text: string);
begin
  Text := DM.cdsConfigsrazaosocial.AsString+ ' - Tel.: '+ DM.cdsConfigstelefone.Text+' - E-mail: '+DM.cdsConfigsemail.AsString;
end;

procedure TFormRelatorios.ppDBText102GetText(Sender: TObject; var Text: string);
var
  aux : Currency;
begin
  aux := qrNota.FieldByName('frete').AsCurrency + qrNota.FieldByName('valor_frete').AsCurrency;
  if aux > 0 then
    Text := FormataCurrency(aux,False)
  else
    Text := '';
end;

procedure TFormRelatorios.ppDBText136GetText(Sender: TObject; var Text: string);
begin
  if Text = '' then
    Text := 'Sem Cliente';

end;

procedure TFormRelatorios.ppDBText137GetText(Sender: TObject; var Text: string);
begin
  case qrNota.FieldByName('forma_pg').AsInteger of
      0 : begin
        Text  := 'Dinheiro ';
        ppdbTextTotal.DataField := 'ValorDinheiro';
      end;
      1 : begin
         Text := 'Débito';
         ppdbTextTotal.DataField := 'ValorDebito';
      end;
      2 : begin
        Text := 'Crédito';
        ppdbTextTotal.DataField := 'ValorCred';
      end;
      3 : begin
        Text := 'Parcelado 2X';
        ppdbTextTotal.DataField := 'ValorPar2';
      end;
      4 : begin
        Text := 'Parcelado 3X';
        ppdbTextTotal.DataField := 'ValorPar3';
      end;
      5 : begin
         Text := 'Parcelado 4X';
         ppdbTextTotal.DataField := 'ValorPar4';
      end;
      6 : begin
        Text := 'Parcelado 5X';
        ppdbTextTotal.DataField := 'ValorPar5';
      end;
      7 : begin
        Text := 'Parcelado 6X';
        ppdbTextTotal.DataField := 'ValorPar6';
      end;
    end;
end;

procedure TFormRelatorios.ppDBText51GetText(Sender: TObject; var Text: string);
begin
  Text := FormataDocumento(text);
end;

procedure TFormRelatorios.ppDBText56GetText(Sender: TObject; var Text: string);
begin
  Text := FormataTelefone(text);
end;

procedure TFormRelatorios.EnderecoGetText(Sender: TObject; var Text: string);
begin
  Text := Text + ', '+DM.cdsConfigsnumero.AsString ;
  if DM.cdsConfigscomplemento.AsString <> '' then
    Text := Text+' - ' + DM.cdsConfigscomplemento.AsString;
  if dm.cdsConfigscep.AsString <> '' then
    Text := Text + ' - CEP: '+DM.cdsConfigscep.AsString;
end;

procedure TFormRelatorios.BairroGetText(Sender: TObject; var Text: string);
begin
  Text := Text + ' - '+DM.cdsConfigscidade.AsString + ' - '+DM.cdsConfigsuf.AsString;
end;

procedure TFormRelatorios.TelefoneRelGetText(Sender: TObject; var Text: string);
begin
  Text := 'Tel.: '+ FormataTelefone(Text) + ' - E-mail: '+DM.cdsConfigsemail.AsString+' - '+DM.cdsConfigssite.AsString;
end;

procedure TFormRelatorios.ppDBText87GetText(Sender: TObject; var Text: string);
var
  tot : Integer;
begin
  if qrNota.FieldByName('idkit').AsInteger > 0 then
  begin
    tot := GetEstoqueKit(qrNota.FieldByName('idkit').AsInteger);
    if tot < qrNota.FieldByName('qtde').AsInteger then
       Text := '**'+Text ;
  end
  else begin
    if qrNota.FieldByName('est_atual').AsInteger < qrNota.FieldByName('qtde').AsInteger then
      Text := '**'+Text ;
  end;
end;

procedure TFormRelatorios.ppGroupFooterBand3BeforePrint(Sender: TObject);
begin
  ppRegionNota.Visible := not (qrNota.FieldByName('obs').AsString = '');

  case qrNotaforma_pg.AsInteger of
    0 : begin
      lbTotal.Caption := FormataCurrency(qrNota.FieldByName('ValorDinheiro').AsCurrency);
    end;

    1 : begin
      lbTotal.Caption := FormataCurrency(qrNota.FieldByName('ValorDebito').AsCurrency);
    end;

    2 : begin
      lbTotal.Caption := FormataCurrency(qrNota.FieldByName('ValorCred').AsCurrency);
    end;

    3 : begin
      lbTotal.Caption := FormataCurrency(qrNota.FieldByName('total_par2').AsCurrency);
    end;

    4 : begin
      lbTotal.Caption := FormataCurrency(qrNota.FieldByName('total_par3').AsCurrency);
    end;

    5 : begin
      lbTotal.Caption := FormataCurrency(qrNota.FieldByName('total_par4').AsCurrency);
    end;

    6 : begin
      lbTotal.Caption := FormataCurrency(qrNota.FieldByName('total_par5').AsCurrency);
    end;

    7 : begin
      lbTotal.Caption := FormataCurrency(qrNota.FieldByName('total_par6').AsCurrency);
    end;
  end;

end;

procedure TFormRelatorios.ppGroupHeaderBand2BeforePrint(Sender: TObject);
begin
  ItensRecibo;
end;

procedure TFormRelatorios.LoadLogoPadrao(Image : TppImage);
begin
    if FileExists(mPathLogo) then
      Image.Picture.LoadFromFile(mPathLogo)
    else
      Image.Picture := nil;
   if not DM.cdsConfigs.Active then DM.cdsConfigs.Open;
end;

procedure TFormRelatorios.ppHeaderBand6BeforePrint(Sender: TObject);
begin
  LoadLogoPadrao(ppImageLoboRecibo);
end;

procedure TFormRelatorios.ppTitleBand3BeforePrint(Sender: TObject);
begin
  LoadLogoPadrao(ppImage1);
end;

procedure TFormRelatorios.ppTitleBand5BeforePrint(Sender: TObject);
begin
  LoadLogoPadrao(ppImage2);
end;

procedure TFormRelatorios.ppTitleBand6BeforePrint(Sender: TObject);
begin
  LoadLogoPadrao(ppImage3);
end;

procedure TFormRelatorios.ppTitleBand7BeforePrint(Sender: TObject);
begin
  LoadLogoPadrao(ppImage4);
end;

procedure TFormRelatorios.ppTitleBand8BeforePrint(Sender: TObject);
begin
   LoadLogoPadrao(ppImage6);
end;

procedure TFormRelatorios.ppTitleBand9BeforePrint(Sender: TObject);
begin
  LoadLogoPadrao(ppImage7);
end;

procedure TFormRelatorios.saldoGetText(Sender: TObject; var Text: string);
begin
  try
    if DM.memSaldoCaixa.FieldByName(TppDBText(Sender).DataField).AsCurrency < 0 then
       TppDBText(Sender).Font.Color := clRed
    else
      TppDBText(Sender).Font.Color := clDefault;
  except
  end;
end;

procedure TFormRelatorios.qrLucratividadeCalcFields(DataSet: TDataSet);
begin
  qrLucratividadedesconto_acrescimo.Value := qrLucratividadeacrescimo.AsCurrency -
     (qrLucratividadedesconto.AsCurrency + qrLucratividadedesconto_item.AsCurrency);
  qrLucratividadevalor_liquido.Value := qrLucratividadevalor_total.AsCurrency +
    qrLucratividadedesconto_acrescimo.AsCurrency;
  qrLucratividadevalor_lucro.AsCurrency := qrLucratividadevalor_liquido.AsCurrency - qrLucratividadepreco_custo.AsCurrency;
  qrLucratividadepercentual_lucro.Value := RetornaPercentual(qrLucratividadevalor_liquido.AsCurrency,qrLucratividadepreco_custo.AsCurrency);
end;

procedure TFormRelatorios.qrNotaCalcFields(DataSet: TDataSet);
begin
   CalculaParcelas(qrNota);
end;

procedure TFormRelatorios.qrVendaProdutosCalcFields(DataSet: TDataSet);
begin
  qrVendaProdutosvalor_total.AsCurrency := (qrVendaProdutosqtde.AsInteger * qrVendaProdutospreco.AsCurrency) - qrVendaProdutosdesconto.AsCurrency;
end;

procedure TFormRelatorios.qrVendaReciboCalcFields(DataSet: TDataSet);
begin
  qrVendaReciboTOTALGERAL.AsCurrency := qrVendaRecibototal_venda.AsCurrency - qrVendaRecibodesconto.AsCurrency + qrVendaReciboacrescimo.AsCurrency;
end;

procedure TFormRelatorios.rpReciboA4BeforePrint(Sender: TObject);
begin
  ItensRecibo;
end;

procedure TFormRelatorios.ItensRecibo;
begin
  if (not qrItemRecibo.Active) or (qrItemRecibo.FieldByName('idvenda').AsInteger <> qrVendaReciboidvenda.AsInteger) then
  begin
     qrItemRecibo.Close;
     qrItemRecibo.Params.ParamByName('pidvenda').Value := qrVendaReciboidvenda.AsInteger;
     qrItemRecibo.Open;
  end;

   if (not qrFormaPagamento.Active) or (qrFormaPagamentoidvenda.AsInteger <> qrVendaReciboidvenda.AsInteger ) then
   begin
     qrFormaPagamento.Close;
     qrFormaPagamento.Params.ParamByName('pidvenda').Value := qrVendaReciboidvenda.AsInteger;
     qrFormaPagamento.Open;
   end;
end;

procedure TFormRelatorios.ConfigPrint(Sender: TObject; PdfName : String);
begin
  with TppReport(Sender) do begin
    PreviewFormSettings.WindowState := wsMaximized;
    //PreviewFormSettings.ZoomPercentage := 100;
    PreviewFormSettings.ZoomSetting := zsPageWidth;
    AllowPrintToFile := True;
    ArchiveFileName := PdfName;
  end;

end;

procedure TFormRelatorios.ImprimeNota(IdNota : Integer; Imprimir : Boolean = True;
  TipoNota : String = 'O');
var
  i : Integer;
  myComp : TppDBText;
  Valores : Boolean;
begin
  qrNota.Close;
  qrNota.Params.ParamByName('pidnota').Value := IdNota;
  qrNota.Params.ParamByName('ptipo_nota').Value := TipoNota;
  qrNota.Open;

  qrNotaPg.Close;
  qrNotaPg.Params.ParamByName('pidnota').Value := IdNota;
  qrNotaPg.Open;

  if TipoNota = tipo_orcamento then
  begin
     pplbTitulo.Caption := 'ORÇAMENTO';
     pplbValidade.Caption := 'Validade:';
     pplbCliente.Caption := 'Cliente:';

     ppDBTextNome.DataField := 'cliente';
     ppDBTextDocumento.DataField := 'documento';
     ppDBTextEnd.DataField := 'endereco';
     ppDBTextBairro.DataField := 'bairro';
     ppDBTextCep.DataField := 'cep';
     ppDBTextCidade.DataField := 'cidade';
     ppDBTextTelefone.DataField := 'telefone';
     ppDBTextCelular.DataField := 'celular';
     ppDBTextEmail.DataField := 'email';
     pplbqtde.Caption := 'Qtde Orçamento';
  end
  else if TipoNota = tipo_pedido  then
  begin
    pplbTitulo.Caption := 'PEDIDO DE COMPRA';
    pplbValidade.Caption := 'Previsão:';
    pplbCliente.Caption := 'Fornecedor:';

     ppDBTextNome.DataField := 'cliente_for';

     ppDBTextDocumento.DataField := 'documento_for';
     ppDBTextEnd.DataField := 'endereco_for';
     ppDBTextBairro.DataField := 'bairro_for';
     ppDBTextCep.DataField := 'cep_for';
     ppDBTextCidade.DataField := 'cidade_for';
     ppDBTextTelefone.DataField := 'telefone_for';
     ppDBTextCelular.DataField := 'celular_for';
     ppDBTextEmail.DataField := 'email_for';
     pplbqtde.Caption := 'Qtde';


  end;
  ppDBTextNome.Left := pplbCliente.Left + pplbCliente.Width + 3;

  case rpNota.Tag of
    0 : Valores := Pergunta('Deseja imprimir os valores?') = id_yes;
    1 : Valores := True;
    2 : Valores := False;
  end;

  pplbvunit.Visible := Valores;
  pplbvtotal.Visible := Valores;
  ppdbvunit.Visible := Valores;
  ppdbvtotal.Visible := Valores;
  pplbsomatotal.Visible := valores;
  ppdbcalctotal.Visible := Valores;
  ppregionpg.Visible := Valores and (not qrNotaforma_pg.IsNull);
  ppLabel118.Visible := Valores;
  ppDBText97.Visible := Valores;

  if Imprimir then begin
    rpNota.Print;
  end;
end;

end.

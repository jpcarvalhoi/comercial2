unit uContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, DBGridEhGrouping, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, GridsEh, DBGridEh, ExtCtrls, ActnList,
  StdCtrls, Buttons, Mask, rxToolEdit, ImgList, Grids, DBGrids, Menus,
  sSkinProvider, IniFiles, ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache,
  ppDB, ppParameter, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch,
  ppMemo, StrUtils, DBCtrls, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  ppDesignLayer, EhLibVCL, DBAxisGridsEh, System.Actions;

type
  TFormContas = class(TFormClone_TelaPadrao)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEhContas: TDBGridEh;
    qrPesConta: TZQuery;
    dsPesConta: TDataSource;
    qrPesContaidconta: TIntegerField;
    qrPesContadata_lancamento: TDateField;
    qrPesContadata_vencimento: TDateField;
    qrPesContadata_pagamento: TDateField;
    qrPesContavalor: TFloatField;
    qrPesContadesconto: TFloatField;
    qrPesContaacrescimo: TFloatField;
    qrPesContaforma_pagamento: TWideStringField;
    qrPesContaidcliente: TIntegerField;
    qrPesContaidvenda: TIntegerField;
    qrPesContaidfornecedor: TIntegerField;
    qrPesContaidgrupoconta: TIntegerField;
    qrPesContadescricao: TWideStringField;
    qrPesContaobs: TWideStringField;
    qrPesContaparcela: TWideStringField;
    qrPesContatipo: TWideStringField;
    qrPesContausuario_cadastro: TIntegerField;
    qrPesContausuario_pagamento: TIntegerField;
    qrPesContaidcartao: TIntegerField;
    qrPesContaautomatica: TWideStringField;
    qrPesContanome: TWideStringField;
    qrPesContarazao: TWideStringField;
    qrPesContadescgrupo: TWideStringField;
    GroupBox1: TGroupBox;
    cbData: TComboBox;
    DateEditIni: TDateEdit;
    DateEditFim: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    ckPagas: TCheckBox;
    pnlPrincipal: TPanel;
    btnNovo: TBitBtn;
    btnSalvar: TBitBtn;
    btnLocalizar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    btnAtrasados: TBitBtn;
    actAtrasadas: TAction;
    actLocalizar: TAction;
    actFiltrar: TAction;
    GroupBox3: TGroupBox;
    rbCliente: TRadioButton;
    rbFornecedor: TRadioButton;
    edCliente: TEdit;
    BitBtn2: TBitBtn;
    actCliente: TAction;
    actFornecedor: TAction;
    edReceita: TLabeledEdit;
    edDespesa: TLabeledEdit;
    edSaldo: TLabeledEdit;
    edlancamento: TLabeledEdit;
    ImageList1: TImageList;
    qrPesContavalor_pago: TFloatField;
    qrPesContaNomeVinculado: TStringField;
    actNovo: TAction;
    actAlterar: TAction;
    edTotalReceber: TLabeledEdit;
    edTotalPagar: TLabeledEdit;
    btnConfirmar: TBitBtn;
    actConfirmar: TAction;
    qrPesContamarcado: TWideStringField;
    qrPesContamarcadob: TBooleanField;
    PopupMenuContas: TPopupMenu;
    ConfTodos: TMenuItem;
    sSkinProvider1: TsSkinProvider;
    qrPesContaTotal_Pagar: TCurrencyField;
    qrPesContaencargo: TFloatField;
    qrPesContabonificacao: TFloatField;
    qrPesContasalario: TFloatField;
    btnFuncionarios: TBitBtn;
    qrPesContaidfuncionario: TIntegerField;
    BitBtn4: TBitBtn;
    actNovo2: TAction;
    ckReceita: TCheckBox;
    ckDespesa: TCheckBox;
    ckTodas: TCheckBox;
    BitBtn1: TBitBtn;
    qrPesContafuncionario: TWideStringField;
    rbfuncionario: TRadioButton;
    actFuncionario: TAction;
    btnImprimir: TBitBtn;
    ppdbContas: TppDBPipeline;
    rpContas: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText3: TppDBText;
    ppLine2: TppLine;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel9: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine4: TppLine;
    ppMemoFiltros: TppMemo;
    rbveiculo: TRadioButton;
    actVeiculo: TAction;
    qrPesContaidveiculo: TIntegerField;
    qrPesContacodveiculo: TIntegerField;
    DBLookupComboBoxGrupo: TDBLookupComboBox;
    Label3: TLabel;
    ppDBTextGrupo: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine1: TppLine;
    pplbAberto: TppLabel;
    pplbemaberto: TppLabel;
    pplbemaberto2: TppLabel;
    rpPgFuncionarios: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel10: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel13: TppLabel;
    ppDBText9: TppDBText;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    qrPesContadescsetor: TWideStringField;
    qrPesContaidsetor: TIntegerField;
    ppDBText10: TppDBText;
    qrPesContanome_funcionario: TWideStringField;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel23: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel24: TppLabel;
    ppDBText20: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLine6: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppLine7: TppLine;
    rpParcelas: TppReport;
    ppParameterList3: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppLabel25: TppLabel;
    ppLine8: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppDBText21: TppDBText;
    ppLabel33: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    qrPesContaidconta_grupo: TIntegerField;
    ppvDevedor: TppVariable;
    ppLabel34: TppLabel;
    ppvVtotal: TppVariable;
    qrPesContasubgrupo: TWideStringField;
    Label4: TLabel;
    DBLookupComboBoxSubGrupo: TDBLookupComboBox;
    ppLabel35: TppLabel;
    ppLine9: TppLine;
    ppLabel36: TppLabel;
    ppLine10: TppLine;
    ppLabel37: TppLabel;
    ppLine11: TppLine;
    ppTitleBand1: TppTitleBand;
    ppDBConfigs: TppDBPipeline;
    ppImage2: TppImage;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppTitleBand2: TppTitleBand;
    ppImage1: TppImage;
    ppDBText25: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppTitleBand3: TppTitleBand;
    ppImage3: TppImage;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLabel38: TppLabel;
    ppDBText36: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actAtrasadasExecute(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
    procedure actClienteExecute(Sender: TObject);
    procedure actFornecedorExecute(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrPesContaAfterOpen(DataSet: TDataSet);
    procedure qrPesContaAfterRefresh(DataSet: TDataSet);
    procedure DBGridEhContasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure qrPesContaCalcFields(DataSet: TDataSet);
    procedure actAlterarExecute(Sender: TObject);
    procedure dsPesContaDataChange(Sender: TObject; Field: TField);
    procedure actConfirmarExecute(Sender: TObject);
    procedure DBGridEhContasCellClick(Column: TColumnEh);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFuncionariosClick(Sender: TObject);
    procedure actNovo2Execute(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ckTodasClick(Sender: TObject);
    procedure ckPagasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbDataChange(Sender: TObject);
    procedure actFuncionarioExecute(Sender: TObject);
    procedure ppDBText1GetText(Sender: TObject; var Text: string);
    procedure btnImprimirClick(Sender: TObject);
    procedure DBGridEhContasSortMarkingChanged(Sender: TObject);
    procedure actVeiculoExecute(Sender: TObject);
    procedure DBLookupComboBoxGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEhContasGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure DBLookupComboBoxGrupoCloseUp(Sender: TObject);
    procedure ppDBText9GetText(Sender: TObject; var Text: string);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure actFiltrarExecute(Sender: TObject);
    procedure ppLabel35GetText(Sender: TObject; var Text: string);
    procedure getRodapeText(Sender: TObject; var Text: string);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure ppDBText89GetText(Sender: TObject; var Text: string);
    procedure ppDBText90GetText(Sender: TObject; var Text: string);
    procedure ppDBText91GetText(Sender: TObject; var Text: string);
    procedure ppTitleBand2BeforeGenerate(Sender: TObject);
    procedure ppTitleBand3BeforePrint(Sender: TObject);
  private
    { Private declarations }
    Sql: String;
    vCodClienteFornecedor: Integer;
    procedure Filtrar(pFiltro: String; Atrasado: Boolean = False);
    procedure AtualizaTotal;
    procedure CallTelaContas(IDConta: Integer; Deb_Cred: String;
      Funcionario: Boolean = False);
    procedure LoadSaveFilter(Load: Boolean);
  public
    { Public declarations }
  end;

var
  FormContas: TFormContas;

implementation

uses uDM, uFiltroContas, FuncoesGlobais, uSelCliente, uSelFonecedor,
  uCadConta, uFinalizaVenda, FuncoesGerais, uCadPagFunc, uRelatorios,
  uConfigImpressao;
{$R *.dfm}

procedure TFormContas.actAlterarExecute(Sender: TObject);
begin
  inherited;
  if (qrPesConta.Active) and (qrPesContaidconta.AsInteger > 0) then
    CallTelaContas(qrPesContaidconta.AsInteger, '')
  else
    Informa('Nenhum lançamento selecionado.');

end;

procedure TFormContas.actAtrasadasExecute(Sender: TObject);
begin
  inherited;
  Filtrar('', True);
end;

procedure TFormContas.actClienteExecute(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormSelCliente, FormSelCliente);
    FormSelCliente.Permissao := RetornaPermissao(3);
    FormSelCliente.Localizando := True;
    if FormSelCliente.Permissao.Visualizar then
    begin
      if (FormSelCliente.ShowModal = mrOK) and
        (FormSelCliente.CodLocalizado > 0) then
      begin
        rbCliente.Checked := True;
        edCliente.Text := FormSelCliente.cdsPesquisanome.AsString;
        vCodClienteFornecedor := FormSelCliente.CodLocalizado;
        Filtrar('');
      end;
    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelCliente);
  end;
end;

procedure TFormContas.actConfirmarExecute(Sender: TObject);
var
  SoUm: Boolean;
  Selecionados: String;
  vFormFinalizaVenda: TFormFinalizaVenda;
  DadosCaixa: TCaixa;
  Erro, ExibeTela: Boolean;
  i: Integer;

  function Condicao: Boolean;
  begin
    Condicao := ((qrPesContaforma_pagamento.AsString = fpg_cartaoCre) or
        (qrPesContaforma_pagamento.AsString = fpg_cheque) or
        (qrPesContaforma_pagamento.AsString = fpg_cartaoDe)) and
      (qrPesContadata_pagamento.IsNull)

  end;

  function GravaDados : Boolean;
  begin
    try
      DM.ZConnection.StartTransaction;

      if DM.cdsCadConta.UpdatesPending then
        DM.cdsCadConta.ApplyUpdates;

      // caixa
      DadosCaixa.IDConta := DM.cdsCadContaidconta.AsInteger;
      DadosCaixa.tipo := DM.cdsCadContatipo.Value;
      if DM.cdsCadContatipo.Value = _Credito then
        DadosCaixa.descricao :=
          'Recebimento - ' + DM.cdsCadContadescricao.AsString
      else
        DadosCaixa.descricao :=
          'Pagamento - ' +
          DM.cdsCadContadescricao.AsString;
      DadosCaixa.IDConta := DM.cdsCadContaidconta.AsInteger;

      Erro := not DM.MovimentaCaixa(vFormFinalizaVenda, DadosCaixa);

      if vFormFinalizaVenda.FormaPagamento = fpg_cheque then
        Erro := not DM.GravaCheques(vFormFinalizaVenda,DM.cdsCadContaidconta.AsInteger,DM.cdsCadContaidcliente.AsInteger);

      if not Erro then
        DM.ZConnection.Commit;

    except
      Erro := True;
    end;
  end;

begin
  inherited;
  SoUm := Sender <> ConfTodos;
  Selecionados := '';
  if not SoUm then
  begin
    if Pergunta(
      'Deseja realmente confirmar o pagamento de todos os lançamento listados?'
      ) = idno then
      Exit;

    try
      qrPesConta.DisableControls;
      qrPesConta.First;
      while not qrPesConta.Eof do
      begin
        if Condicao then
          Selecionados := Selecionados + qrPesContaidconta.AsString + ',';

        qrPesConta.Next;
      end;
    finally
      if Selecionados <> '' then
        delete(Selecionados, length(Selecionados), 1);
      qrPesConta.First;
      qrPesConta.EnableControls;
    end;

  end
  else if Condicao then
    Selecionados := qrPesContaidconta.AsString;

  if (Selecionados <> '') then
  begin
    Processa_Recebimento_CartaoCredito('and idconta in (' + Selecionados + ')');

  end;

  if (SoUm) and ((qrPesContaforma_pagamento.Value = fpg_dinheiro) or
                 (qrPesContaforma_pagamento.Value = fpg_prazo) or
                 (qrPesContaforma_pagamento.Value = fpg_deposito) or
                 (qrPesContaforma_pagamento.Value = fpg_transferencia)) then
  begin // pagamento em dinheiro
    // chama a tela que finaliza a venda
    ExibeTela := (qrPesContaforma_pagamento.Value <> fpg_deposito) and
                 (qrPesContaforma_pagamento.Value <> fpg_transferencia);

    if DM.SelecionaConta(qrPesContaidconta.AsInteger, False) then
    begin
      try
        Application.CreateForm(TFormFinalizaVenda, vFormFinalizaVenda);
        with vFormFinalizaVenda do
        begin
          vFormFinalizaVenda.edTotalVenda.DataField := 'valor';
          vFormFinalizaVenda.dsvenda.DataSet := DM.cdsCadConta;
          vFormFinalizaVenda.Tag := tag_conta;
          if DM.cdsCadContatipo.Value = _Credito then
          begin
            vFormFinalizaVenda.Caption := 'Recebimento de Conta';

          end
          else
          begin
            vFormFinalizaVenda.Caption := 'Pagamento de Conta';

          end;

          DM.cdsCadConta.CachedUpdates := True;
          if (not ExibeTela) or (vFormFinalizaVenda.ShowModal = mrOK) then
          begin
            DM.cdsCadConta.Edit;
            DM.cdsCadContadata_pagamento.AsDateTime := Date;
            DM.cdsCadContausuario_pagamento.Value := mCodigoUsuario;
            DM.cdsCadContavalor_pago.AsCurrency :=
              DM.cdsCadContaTotal_Pagar.AsCurrency;
            if not ExibeTela then
              DM.cdsCadContaforma_pagamento.Value := qrPesContaforma_pagamento.Value
            else
              DM.cdsCadContaforma_pagamento.Value :=  vFormFinalizaVenda.FormaPagamento;
            DM.cdsCadConta.Post;

            if (qrPesContaforma_pagamento.Value = fpg_deposito) then
              vFormFinalizaVenda.Totais.TotalDeposito := DM.cdsCadContaTotal_Pagar.AsCurrency
            else if (qrPesContaforma_pagamento.Value = fpg_transferencia) then
              vFormFinalizaVenda.Totais.TotalTransferencia := DM.cdsCadContaTotal_Pagar.AsCurrency;

            GravaDados;

            if Erro then
            begin
              Informa('Erro ao concluir a operação');
              DM.cdsCadCaixa.CancelUpdates;
              DM.ZConnection.Rollback;
            end;

          end;

        end;

      finally
        FreeAndNil(vFormFinalizaVenda);
        DM.cdsCadConta.CachedUpdates := False;
      end;
    end;

  end ;



  if qrPesConta.Active then
    qrPesConta.Refresh;

end;

procedure TFormContas.actFiltrarExecute(Sender: TObject);
begin
  inherited;
  Filtrar('');
end;

procedure TFormContas.actFornecedorExecute(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormSelFornecedor, FormSelFornecedor);
    FormSelFornecedor.Permissao := RetornaPermissao(4);
    FormSelFornecedor.Localizando := True;
    if FormSelFornecedor.Permissao.Visualizar then
    begin
      if (FormSelFornecedor.ShowModal = mrOK) and
        (FormSelFornecedor.CodLocalizado > 0) then
      begin
        rbFornecedor.Checked := True;
        edCliente.Text := FormSelFornecedor.cdsPesquisarazao.AsString;
        vCodClienteFornecedor := FormSelFornecedor.CodLocalizado;

        Filtrar('');
      end;
    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelFornecedor);
  end;
end;

procedure TFormContas.actFuncionarioExecute(Sender: TObject);
var
  cod: Integer;
  Desc: String;
begin
  inherited;
  cod := fLocalizar(11, Desc);
  if cod > 0 then
  begin
    rbfuncionario.Checked := True;
    edCliente.Text := Desc;
    vCodClienteFornecedor := cod;
    Filtrar('');
  end;
end;

procedure TFormContas.actLocalizarExecute(Sender: TObject);
begin
  inherited;
  if FormFiltroContas.ShowModal = mrOK then
  begin
    Filtrar(FormFiltroContas.filtro);
  end;
end;

procedure TFormContas.actNovo2Execute(Sender: TObject);
begin
  inherited;
  CallTelaContas(0, _Credito);
end;

procedure TFormContas.actNovoExecute(Sender: TObject);
begin
  inherited;
  CallTelaContas(0, _Debito);
end;

procedure TFormContas.actVeiculoExecute(Sender: TObject);
var
  cod: Integer;
  Desc: String;
begin
  inherited;
  rbveiculo.Checked := True;
  cod := fLocalizar(14, Desc);
  if cod > 0 then
  begin
    vCodClienteFornecedor := cod;
    edCliente.Text := Desc;
    Filtrar('');
  end;
end;

procedure TFormContas.AtualizaTotal;
var
  Receita, Despesa, valor, APagar, AReceber: Currency;
begin
  edlancamento.Clear;
  edReceita.Clear;
  edDespesa.Clear;
  edSaldo.Clear;
  edTotalPagar.Clear;
  edTotalReceber.Clear;

  if not qrPesConta.Active then
    Exit;

  try
    qrPesConta.DisableControls;
    qrPesConta.First;
    Receita := 0;
    Despesa := 0;
    APagar := 0;
    AReceber := 0;

    while not qrPesConta.Eof do
    begin
      if qrPesContavalor_pago.AsCurrency > 0 then
        valor := qrPesContavalor_pago.AsCurrency
      else
        valor := qrPesContavalor.AsCurrency;

      if qrPesContatipo.Value = _Credito then
      begin
        Receita := Receita + valor;
        if qrPesContadata_pagamento.IsNull then
          AReceber := AReceber + qrPesContavalor.AsCurrency;
      end
      else if qrPesContatipo.Value = _Debito then
      begin
        Despesa := Despesa + valor;
        if qrPesContadata_pagamento.IsNull then
          APagar := APagar + qrPesContavalor.AsCurrency;
      end;
      qrPesConta.Next;
    end;

  finally
    qrPesConta.First;
    qrPesConta.EnableControls;
  end;

  edlancamento.Text := IntToStr(qrPesConta.RecordCount);

  edReceita.Text := FormataCurrency(Receita);
  edDespesa.Text := FormataCurrency(Despesa);
  edSaldo.Text := FormataCurrency(Receita - Despesa);
  edTotalReceber.Text := FormataCurrency(AReceber);
  edTotalPagar.Text := FormataCurrency(APagar);
end;

procedure TFormContas.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Filtrar('');
end;

procedure TFormContas.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if rbveiculo.Checked then
    actVeiculoExecute(nil)
  else if rbCliente.Checked then
    actClienteExecute(nil)
  else if rbfuncionario.Checked then
    actFuncionarioExecute(nil)
  else
    actFornecedorExecute(nil);
end;

procedure TFormContas.btnFuncionariosClick(Sender: TObject);
begin
  inherited;
  CallTelaContas(0, '', True);
end;

procedure TFormContas.BitBtn4Click(Sender: TObject);
begin
  inherited;
  actNovo2Execute(Sender);
end;

procedure TFormContas.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if not self.Permissao.Excluir then
    AcessoNegado(Negado_excluir)
  else
  begin
    if qrPesContaidconta.AsInteger <= 0 then
      Exit;

    if qrPesContadata_pagamento.AsDateTime > 0 then
    begin
      Informa(
        'O movimento não pode ser excluído porque já foi confirmado seu pagamento.');
      Exit;
    end;

    if Pergunta('Deseja realmente exclur o movimento selecionado?' + #13 +
        'Não será possível desfazer a operação.') = id_yes then
    begin
      with DM.qrComando do
      begin

        try
          GravaLogNoBanco('Excluído Conta ' + getDadosString(qrPesConta, False,
              True));
        except
        end;

        Close;
        Sql.Clear;
        Sql.Add('delete from tbconta where idconta = ' +
            qrPesContaidconta.AsString);
        ExecSQL;
        if DM.qrComando.RowsAffected > 0 then
          Informa('Movimento excluído com sucesso!')
        else
          Informa('Nenhum registro alterado.');
        if qrPesConta.Active then
          qrPesConta.Refresh;
      end;
    end;

  end;

end;

procedure TFormContas.btnImprimirClick(Sender: TObject);
var
  filtro: String;
begin
  inherited;
  if (not qrPesConta.Active) or (qrPesConta.RecordCount <= 0) then
    Informa('Sem dados para geração do relatório.')
  else
  begin
    try
      DBGridEhContas.DataSource := nil;

      if ckTodas.Checked then
        filtro := 'Exibir: Todas'
      else
      begin
        filtro := 'Exibir: ';
        if ckPagas.Checked then
          filtro := filtro + 'pagas, ';
        if ckReceita.Checked then
          filtro := filtro + 'receitas, ';
        if ckDespesa.Checked then
          filtro := filtro + 'despesas, ';

        if pos(', ', filtro) > 0 then
          delete(filtro, pos(', ', filtro), 2);
      end;

      if cbData.ItemIndex in [0 .. 2] then
      begin
        filtro := filtro + ' Data ' + StringReplace(LowerCase(cbData.Text),
          'data ', '', []) + ' ' + DateEditIni.Text + ' à ' + DateEditFim.Text;
      end;

      if edCliente.Text <> '' then
      begin
        if rbCliente.Checked then
          filtro := filtro + ' Cliente: '
        else if rbFornecedor.Checked then
          filtro := filtro + ' Fornecedor: '
        else
          filtro := filtro + ' Funcionário: ';
        filtro := filtro + edCliente.Text;
      end;

      ppMemoFiltros.Lines.Clear;
      ppMemoFiltros.Lines.Add(filtro);

      qrPesConta.SortedFields := 'tipo;idgrupoconta;data_vencimento';
      qrPesConta.First;

      Application.CreateForm(TfrmConfigImressao, frmConfigImressao);
      frmConfigImressao.Tag := 1;
      if frmConfigImressao.ShowModal = mrOK then
      begin
        if frmConfigImressao.cbContas.ItemIndex = 3 then
        begin
          try

            qrPesConta.Filter := 'idconta_grupo > 0';
            qrPesConta.Filtered := True;
            qrPesConta.First;
            if qrPesConta.RecordCount = 0 then
              Informa(
                'Não exite dados no filtro utilizado.')
            else
              rpParcelas.Print;
          finally
            qrPesConta.Filter := '';
            qrPesConta.Filtered := False;
          end;
        end
        else if frmConfigImressao.cbContas.ItemIndex = 2 then
        begin
          try

            qrPesConta.Filter := 'idgrupoconta = 4';
            qrPesConta.Filtered := True;
            qrPesConta.First;
            if qrPesConta.RecordCount = 0 then
              Informa(
                'Não existe pagamento de funcionários no filtro utilizado.')
            else
              rpPgFuncionarios.Print;
          finally
            qrPesConta.Filter := '';
            qrPesConta.Filtered := False;
          end;
        end
        else
        begin
          if frmConfigImressao.cbContas.ItemIndex = 1 then
          begin
            ppDBTextGrupo.Visible := True;
            ppGroupHeaderBand2.Visible := False;
            ppDetailBand1.Visible := False;
            ppLine3.Visible := False;
            ppLabel11.Visible := True;
            ppLabel12.Visible := True;
            ppLine1.Visible := True;
            pplbAberto.Visible := True;
            pplbemaberto.Visible := True;
            pplbemaberto2.Visible := True;
          end
          else
          begin
            ppDBTextGrupo.Visible := False;
            ppGroupHeaderBand2.Visible := True;
            ppDetailBand1.Visible := True;
            ppLine3.Visible := True;
            ppLabel11.Visible := False;
            ppLabel12.Visible := False;
            ppLine1.Visible := False;
            pplbAberto.Visible := False;
            pplbemaberto.Visible := False;
            pplbemaberto2.Visible := False;
          end;

          rpContas.Print;
        end;

      end;

      qrPesConta.SortedFields := '';
      qrPesConta.First;
    finally
      DBGridEhContas.DataSource := dsPesConta;
    end;
  end;
end;

procedure TFormContas.btnNovoClick(Sender: TObject);
begin
  inherited;
  actNovoExecute(Sender);
end;

procedure TFormContas.CallTelaContas(IDConta: Integer; Deb_Cred: String;
  Funcionario: Boolean = False);
begin
  if not self.Permissao.Incluir then
  begin
    AcessoNegado(Negado_incluir);
    Exit;
  end;
  if (Funcionario) or ((qrPesContaidfuncionario.AsInteger > 0) and (IDConta > 0)
    ) then
  begin
    try
      Application.CreateForm(TFormCadPagFunc, FormCadPagFunc);
      FormCadPagFunc.Permissao := self.Permissao;
      FormCadPagFunc.IDConta := IDConta;
      if FormCadPagFunc.Permissao.Visualizar then
      begin
        FormCadPagFunc.ShowModal;
        if qrPesConta.Active then
          qrPesConta.Refresh;

      end
      else
        AcessoNegado(Negado_visualizar);
    finally
      FreeAndNil(FormCadPagFunc);
    end;
  end
  else
  begin
    try
      Application.CreateForm(TFormCadConta, FormCadConta);
      FormCadConta.Permissao := self.Permissao;
      if (Deb_Cred <> '') then
      begin
        FormCadConta.Deb_Cred := Deb_Cred;
        FormCadConta.dbrgTipo.Tag := 1;
      end;
      if IDConta = 0 then
        FormCadConta.Tag := 1
      else
        FormCadConta.IDConta := IDConta;
      FormCadConta.ShowModal;
    finally
      FreeAndNil(FormCadConta);
    end;
  end;
end;

procedure TFormContas.cbDataChange(Sender: TObject);
begin
  inherited;
  Filtrar('');
end;

procedure TFormContas.ckPagasClick(Sender: TObject);
begin
  inherited;
  if not TCheckBox(Sender).Checked then
    ckTodas.Checked := False;
  Filtrar('');
end;

procedure TFormContas.ckTodasClick(Sender: TObject);
begin
  inherited;
  if ckTodas.Checked then
  begin
    ckPagas.Checked := True;
    ckReceita.Checked := True;
    ckDespesa.Checked := True;
    Filtrar('');
  end;
end;

procedure TFormContas.DBGridEhContasCellClick(Column: TColumnEh);
begin
  inherited;
  { if (LowerCase(Column.FieldName) = 'marcadob') and (qrPesContaidconta.AsInteger > 0) then
    begin
    qrPesConta.Edit;
    if qrPesContamarcado.AsString = sTrue then
    qrPesContaMarcado.Value := sFalse
    else
    qrPesContamarcado.AsString := sTrue;
    qrPesConta.Post;
    end; }
end;

procedure TFormContas.DBGridEhContasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if LowerCase(Column.FieldName) = 'tipo' then
  begin
    DBGridEhContas.Canvas.FillRect(Rect);
    if (qrPesContatipo.AsString = _Credito) then
      ImageList1.Draw(DBGridEhContas.Canvas, Rect.Left + 10, Rect.Top + 2, 0)
    else if qrPesContatipo.AsString = _Debito then
      ImageList1.Draw(DBGridEhContas.Canvas, Rect.Left + 10, Rect.Top + 2, 1);

  end
  else if LowerCase(Column.Title.Caption) = 'paga' then
  begin
    if qrPesContadata_pagamento.AsDateTime > 0 then
    begin
      DBGridEhContas.Canvas.FillRect(Rect);
      ImageList1.Draw(DBGridEhContas.Canvas, Rect.Left + 8, Rect.Top + 2, 4);
    end;
  end;

end;

procedure TFormContas.DBGridEhContasGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if qrPesContadata_pagamento.AsDateTime > 0 then
  begin
    // Background := $00CEFFCE;
    Background := $00EAFFEA;

  end;
end;

procedure TFormContas.DBGridEhContasSortMarkingChanged(Sender: TObject);
var
  s: String;
  i: Integer;
  SortType: TSortType;
begin
  inherited;
  s := '';
  for i := 0 to DBGridEhContas.SortMarkedColumns.Count - 1 do
  begin
    if DBGridEhContas.SortMarkedColumns[i].Title.SortMarker = TSortMarkerEh.smUpEh then
    begin
      s := DBGridEhContas.SortMarkedColumns[i].FieldName;
      SortType := stDescending;
    end
    else
    begin
      s := DBGridEhContas.SortMarkedColumns[i].FieldName;
      SortType := stAscending;
    end;

    Break;
  end;

  if s <> '' then
  begin
    qrPesConta.SortedFields := s;
    qrPesConta.SortType := SortType;
  end;
end;

procedure TFormContas.DBLookupComboBoxGrupoCloseUp(Sender: TObject);
begin
  inherited;
  Filtrar('');
end;

procedure TFormContas.DBLookupComboBoxGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = vk_delete) or (Key = vk_back) then
    TDBLookupListBox(Sender).KeyValue := null;
end;

procedure TFormContas.dsPesContaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  btnConfirmar.Enabled := (qrPesContaidconta.AsInteger > 0) and
    (qrPesContadata_pagamento.IsNull);
end;

procedure TFormContas.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = vk_delete) or (Key = vk_back) then
  begin
    edCliente.Clear;
    vCodClienteFornecedor := 0;
    Filtrar('');
  end;

end;

procedure TFormContas.Filtrar(pFiltro: String; Atrasado: Boolean = False);
var
  filtro, campo, aux: string;
begin
  qrPesConta.Close;
  qrPesConta.Sql.Clear;
  qrPesConta.Sql.Add(Sql);

  case cbData.ItemIndex of
    0:
      campo := 'data_lancamento';
    1:
      campo := 'data_vencimento';
    2:
      campo := 'data_pagamento';
  end;

  if campo <> '' then
    filtro := ' and ' + campo + ' between ' + QuotedStr
      (FormatDateTime('yyyy-mm-dd', DateEditIni.Date)) + 'and ' + QuotedStr
      (FormatDateTime('yyyy-mm-dd', DateEditFim.Date));

  if pFiltro <> '' then
    filtro := filtro + pFiltro;

  if Atrasado then
  begin
    filtro := ' and c.data_vencimento <= ' + QuotedStr
      (FormatDateTime('yyyy-mm-dd', Date)) + 'and c.data_pagamento is null';
  end;

  if not ckTodas.Checked then
  begin
    if (ckPagas.Checked) and (not ckDespesa.Checked) and
      (not ckReceita.Checked) then
      filtro := filtro + ' and c.data_pagamento is not null'
    else
    begin
      if not ckReceita.Checked then
        filtro := filtro + ' and c.tipo <> ' + QuotedStr(_Credito);

      if not ckDespesa.Checked then
        filtro := filtro + ' and c.tipo <> ' + QuotedStr(_Debito);

      if not ckPagas.Checked then
        filtro := filtro + ' and c.data_pagamento is null';
    end;
  end;

  if (vCodClienteFornecedor > 0) and (edCliente.Text <> '') then
  begin
    if rbveiculo.Checked then
      filtro := filtro + ' and c.idveiculo = ' + IntToStr(vCodClienteFornecedor)
    else if rbCliente.Checked then
      filtro := filtro + ' and c.idcliente = ' + IntToStr(vCodClienteFornecedor)
    else if rbfuncionario.Checked then
      filtro := filtro + ' and c.idfuncionario = ' + IntToStr
        (vCodClienteFornecedor)
    else
      filtro := filtro + ' and c.idfornecedor = ' + IntToStr
        (vCodClienteFornecedor);
  end;

  if DBLookupComboBoxGrupo.Text <> '' then
    filtro := filtro + ' and c.idgrupoconta = ' + IntToStr
      (DBLookupComboBoxGrupo.KeyValue);

  if DBLookupComboBoxSubGrupo.Text <> '' then
    filtro :=filtro + ' and c.idsubgrupo = '+IntToStr(DBLookupComboBoxSubGrupo.KeyValue);

  if filtro <> '' then
    qrPesConta.Sql.Add(filtro);
  qrPesConta.Open;
end;

procedure TFormContas.LoadSaveFilter(Load: Boolean);
var
  myIni: TIniFile;
begin
  try
    myIni := TIniFile.Create(ArqIni);

    if Load then
    begin
      ckTodas.Checked := myIni.ReadBool('exibir_contas', 'ckTodas', True);
      ckReceita.Checked := myIni.ReadBool('exibir_contas', 'ckReceita', True);
      ckDespesa.Checked := myIni.ReadBool('exibir_contas', 'ckDespesa', True);
      ckPagas.Checked := myIni.ReadBool('exibir_contas', 'ckPagas', True);
    end
    else
    begin
      myIni.WriteBool('exibir_contas', 'ckTodas', ckTodas.Checked);
      myIni.WriteBool('exibir_contas', 'ckReceita', ckReceita.Checked);
      myIni.WriteBool('exibir_contas', 'ckDespesa', ckDespesa.Checked);
      myIni.WriteBool('exibir_contas', 'ckPagas', ckPagas.Checked);
    end;

  finally
    myIni.Free;
  end;
end;

procedure TFormContas.ppDBText1GetText(Sender: TObject; var Text: string);
begin
  inherited;
  if qrPesContatipo.Value = _Credito then
    Text := 'Receitas'
  else
    Text := 'Despesas';

end;

procedure TFormContas.ppDBText89GetText(Sender: TObject; var Text: string);
begin
  inherited;
  FormRelatorios.EnderecoGetText(Sender,Text);
end;

procedure TFormContas.ppDBText90GetText(Sender: TObject; var Text: string);
begin
  inherited;
  FormRelatorios.BairroGetText(Sender,Text);
end;

procedure TFormContas.ppDBText91GetText(Sender: TObject; var Text: string);
begin
  inherited;
  FormRelatorios.TelefoneRelGetText(Sender,Text);
end;

procedure TFormContas.ppDBText9GetText(Sender: TObject; var Text: string);
begin
  inherited;
  if Text = '' then
    Text := 'Não vinculado.';
end;

procedure TFormContas.ppDetailBand3BeforePrint(Sender: TObject);
begin
  inherited;
  ppvDevedor.Value := 0;
  ppvVtotal.Value := 0;
  if setQuery(DM.qrSQL,'select sum(valor), sum(valor_pago) from tbconta where idconta_grupo = '+IntToStr(qrPesContaidconta_grupo.AsInteger)) then
  begin
    ppvDevedor.Value := dm.qrSQL.Fields[0].AsCurrency - dm.qrSQL.Fields[1].AsCurrency;
    ppvVtotal.Value  := dm.qrSQL.Fields[0].AsCurrency;
  end;

end;

procedure TFormContas.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  inherited;
  pplbemaberto2.Caption := '';
  if (VarToStr(ppDBCalc3.Value) <> '') and (VarToStr(ppDBCalc4.Value) <> '')
    then
  begin
    pplbemaberto2.Caption := FormataCurrency(ppDBCalc3.Value - ppDBCalc4.Value,
      False);
  end;
end;

procedure TFormContas.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
  inherited;
  pplbemaberto.Caption := '';
  if (VarToStr(ppDBCalc1.Value) <> '') and (VarToStr(ppDBCalc2.Value) <> '')
    then
  begin
    pplbemaberto.Caption := FormataCurrency(ppDBCalc1.Value - ppDBCalc2.Value,
      False);
  end;

end;

procedure TFormContas.ppLabel35GetText(Sender: TObject; var Text: string);
begin
  inherited;
  FormRelatorios.getRodapeText(Sender,Text);
end;

procedure TFormContas.ppTitleBand1BeforePrint(Sender: TObject);
begin
  inherited;
  FormRelatorios.LoadLogoPadrao(ppImage2);
end;

procedure TFormContas.ppTitleBand2BeforeGenerate(Sender: TObject);
begin
  inherited;
  FormRelatorios.LoadLogoPadrao(ppImage1);
end;

procedure TFormContas.ppTitleBand3BeforePrint(Sender: TObject);
begin
  inherited;
  FormRelatorios.LoadLogoPadrao(ppImage3);
end;

procedure TFormContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qrPesConta.Close;
  DM.cdsGrupoConta.Close;
  LoadSaveFilter(False);
end;

procedure TFormContas.FormCreate(Sender: TObject);

begin
  inherited;
  Sql := qrPesConta.Sql.Text; // pega o sql padrão
  Application.CreateForm(TFormFiltroContas, FormFiltroContas);
  DateEditIni.Date := Date;
  DateEditFim.Date := Date;
  LoadSaveFilter(True);
  FormRelatorios.ConfigPrint(rpContas, 'Relatoriocontas.pdf');
  FormRelatorios.ConfigPrint(rpPgFuncionarios, 'PagamentoFuncionarios.pdf');
  FormRelatorios.ConfigPrint(rpParcelas,'Parcelas.pdf');
end;

procedure TFormContas.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(FormFiltroContas) then
    FreeAndNil(FormFiltroContas);
end;

procedure TFormContas.FormShow(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  actAtrasadasExecute(nil);
  WindowState := wsMaximized;
  DM.cdsGrupoConta.Open;
  DM.cdsSubGrupo.Open;

  for i := 0 to DBGridEhContas.Columns.Count - 1 do
  begin
    if LowerCase(DBGridEhContas.Columns[i].FieldName) = 'codveiculo' then
      DBGridEhContas.Columns[i].Visible := LiberaVeiculos
    else if LowerCase(DBGridEhContas.Columns[i].FieldName) = 'funcionario' then
      DBGridEhContas.Columns[i].Visible := LiberaFuncionarios;
  end;

  btnFuncionarios.Visible := LiberaFuncionarios;
  rbfuncionario.Visible := LiberaFuncionarios;
  rbveiculo.Visible := LiberaVeiculos;
  if not LiberaFuncionarios then
    actFuncionario.ShortCut := 0;
  if not LiberaVeiculos then
    actVeiculo.ShortCut := 0;

end;

procedure TFormContas.getRodapeText(Sender: TObject; var Text: string);
begin
  inherited;
  FormRelatorios.getRodapeText(Sender,Text);
end;

procedure TFormContas.qrPesContaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  AtualizaTotal;
end;

procedure TFormContas.qrPesContaAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  AtualizaTotal;
end;

procedure TFormContas.qrPesContaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if qrPesContaidcliente.AsInteger > 0 then
    qrPesContaNomeVinculado.Value := qrPesContanome.AsString
  else if qrPesContaidfornecedor.AsInteger > 0 then
    qrPesContaNomeVinculado.AsString := qrPesContarazao.AsString;
  qrPesContamarcadob.Value := qrPesContamarcado.Value = sTrue;
  DM.TotalPagar(DataSet);
end;

end.

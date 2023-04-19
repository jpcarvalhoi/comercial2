unit uSelecionaVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, StdCtrls, Buttons, ExtCtrls, ImgList,
  ActnList, DBGridEhGrouping, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, DBCtrls, Mask, rxToolEdit, GridsEh, DBGridEh, ppDB, ppParameter,
  ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, ppDesignLayer,
  EhLibVCL, DBAxisGridsEh, System.Actions;

type
  TFormSelecionaVenda = class(TFormClone_TelaPadrao)
    ImageList1: TImageList;
    pnlPrincipal: TPanel;
    btnDetalhe: TBitBtn;
    btnLocalizar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    edPesquisa: TLabeledEdit;
    btnBuscar: TBitBtn;
    GroupBox1: TGroupBox;
    ckData: TCheckBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dblkUsuario: TDBLookupComboBox;
    qrPesVenda: TZQuery;
    dsPesVenda: TDataSource;
    qrPesVendaidvenda: TIntegerField;
    qrPesVendadatahora: TDateTimeField;
    qrPesVendausuario: TIntegerField;
    qrPesVendatotal_venda: TFloatField;
    qrPesVendaaberta: TWideStringField;
    qrPesVendacodcliente: TIntegerField;
    qrPesVendatipo: TWideStringField;
    qrPesVendadesconto: TFloatField;
    qrPesVendaacrescimo: TFloatField;
    qrPesVendaforma_pagamento: TWideStringField;
    qrPesVendavalidade: TDateField;
    qrPesVendaobs: TWideStringField;
    qrPesVendanome: TWideStringField;
    qrPesVendatelefone: TWideStringField;
    qrPesVendacelular: TWideStringField;
    qrPesVendaTotal_pagar: TCurrencyField;
    actFiltrar: TAction;
    qrPesVendanome_usuario: TWideStringField;
    actDetalhe: TAction;
    BitBtn1: TBitBtn;
    actCliente: TAction;
    pnSelecionar: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    actSelecionar: TAction;
    actExcluir: TAction;
    qrPesVendakilometragem: TIntegerField;
    btnImprimir: TBitBtn;
    ppdbVenda: TppDBPipeline;
    rpVenda: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBTextkm: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine2: TppLine;
    ppParameterList1: TppParameterList;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    pplbkm: TppLabel;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppLabel35: TppLabel;
    ppLine9: TppLine;
    BitBtn4: TBitBtn;
    ppDBConfigs: TppDBPipeline;
    ppTitleBand1: TppTitleBand;
    ppImage3: TppImage;
    ppDBText35: TppDBText;
    ppDBText34: TppDBText;
    ppDBText33: TppDBText;
    ppDBText32: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure qrPesVendaCalcFields(DataSet: TDataSet);
    procedure actFiltrarExecute(Sender: TObject);
    procedure dblkUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBuscarClick(Sender: TObject);
    procedure actDetalheExecute(Sender: TObject);
    procedure actClienteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSelecionarExecute(Sender: TObject);
    procedure edPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure actExcluirExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure getRodapeText(Sender: TObject; var Text: string);
    procedure BitBtn4Click(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure ppDBText33GetText(Sender: TObject; var Text: string);
    procedure ppDBText34GetText(Sender: TObject; var Text: string);
    procedure ppDBText35GetText(Sender: TObject; var Text: string);
  private
    { Private declarations }
    vSql : String;
    CodCliente : Integer;
  public
    { Public declarations }
  end;

var
  FormSelecionaVenda: TFormSelecionaVenda;

implementation

uses uDM, FuncoesGlobais, uSelCliente, uDetalheVenda, uCadCliente, FuncoesGerais,
  uRelatorios;

{$R *.dfm}

procedure TFormSelecionaVenda.actClienteExecute(Sender: TObject);
begin
  inherited;
  if qrPesVendacodcliente.AsInteger > 0 then
  begin
    try
      Application.CreateForm(TformCadCliente,formCadCliente);
      formCadCliente.CodCliente := qrPesVendacodcliente.AsInteger;
      formCadCliente.Permissao := RetornaPermissao(3);
      if formCadCliente.Permissao.Visualizar then
        formCadCliente.ShowModal
      else
        AcessoNegado(Negado_visualizar);
    finally
      FreeAndNil(formCadCliente);
    end;

  end;
end;

procedure TFormSelecionaVenda.actDetalheExecute(Sender: TObject);
begin
  inherited;
  if qrPesVendaidvenda.AsInteger <= 0 then Exit;

  if self.Tag = tag_venda then
  begin
    DM.qrItensVenda.Close;
    DM.qrItensVenda.Params.ParamByName('pidvenda').Value := qrPesVendaidvenda.AsInteger;
    DM.qrItensVenda.Open;
    try
      Application.CreateForm(TFormDetalheVenda, FormDetalheVenda);
      FormDetalheVenda.dsVenda.DataSet := qrPesVenda;
      self.Hide;
      FormDetalheVenda.ShowModal;
    finally
      self.Show;
      FreeAndNil(FormDetalheVenda);
    end;
  end
  else begin
    actSelecionarExecute(nil);
  end;
end;

procedure TFormSelecionaVenda.actExcluirExecute(Sender: TObject);
begin
  inherited;
  if (qrPesVendaidvenda.AsInteger > 0) then
  begin
    if qrPesVendatipo.Value = 'O'  then
    begin
      if Pergunta('Deseja realmente excluir o orçamento selecionado?') = id_yes then
      begin
        try
          GravaLogNoBanco('Excluído Orçamento.'+' '+getDadosString(qrPesVenda,False,True));
        except
        end;

        with DM.qrComando do begin
           Close;
           SQL.Clear;
           SQL.Add('delete from tbvenda where idvenda = '+qrPesVendaidvenda.AsString);
           ExecSQL;
           if RowsAffected > 0 then
             Informa('Registro excluído com sucesso!')
           else
             Informa('Nenhum registro excluído.');
        end;
        if qrPesVenda.Active then
          qrPesVenda.Refresh;
      end;
    end
    else
      Informa('Exclusão de venda não permitido.');


  end;

end;

procedure TFormSelecionaVenda.actFiltrarExecute(Sender: TObject);
var
  Filtro : String;
begin
  inherited;
  qrPesVenda.Close;
  qrPesVenda.SQL.Clear;
  qrPesVenda.SQL.Add(vSql);

  if (edPesquisa.Text <> '') and (CodCliente > 0) then
  begin
    Filtro := Filtro + ' and v.codcliente = '+IntToStr(CodCliente);
  end;

  if (ckData.Checked) and (DateEdit1.Date > 0) and (DateEdit2.Date >= DateEdit1.Date) then
  begin
     filtro := filtro + ' and cast(v.datahora as date) beteween '+MySqlData(DateEdit1.Date) +
      ' and '+MySqlData(DateEdit2.Date);
  end;

  if dblkUsuario.Text <> '' then
  begin
    filtro := filtro + ' and v.usuario = '+IntToStr(dblkUsuario.KeyValue);
  end;

  if filtro = '' then
  begin
    if Pergunta('Nenhum filtro selecionado.'+#13+
            'A consulta pode demorar. Deseja continuar?') = id_no then
     Exit;
  end;

  if self.Tag = tag_venda then
    filtro := filtro + ' and v.tipo = '+QuotedStr('V')
  else
    filtro := filtro + ' and v.tipo = '+QuotedStr('O'); //orçamento

  qrPesVenda.SQL.Add(Filtro);
  qrPesVenda.Open;

  edPesquisa.SetFocus;
end;

procedure TFormSelecionaVenda.actSelecionarExecute(Sender: TObject);
begin
  inherited;
  if self.Tag = tag_orcamento then
    ModalResult := mrOK;
end;

procedure TFormSelecionaVenda.BitBtn4Click(Sender: TObject);
begin
  inherited;
  with FormRelatorios do begin
    qrVendaRecibo.Close;
    qrVendaRecibo.Params.ParamByName('pidvenda').Value := qrPesVendaidvenda.AsInteger;
    qrVendaRecibo.Open;

    rpReciboA4.Print;
  end;
end;

procedure TFormSelecionaVenda.btnBuscarClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormSelCliente,FormSelCliente);
    FormSelCliente.Permissao := RetornaPermissao(3);
    FormSelCliente.Localizando := True;
    if FormSelCliente.Permissao.Visualizar then begin
      if (FormSelCliente.ShowModal = mrOK) and (FormSelCliente.CodLocalizado > 0) then
      begin
        edPesquisa.Text := FormSelCliente.cdsPesquisanome.AsString;
        CodCliente := FormSelCliente.CodLocalizado;
        actFiltrarExecute(nil);
      end;
    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelCliente);
  end;
end;

procedure TFormSelecionaVenda.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if (not qrPesVenda.Active) or (qrPesVenda.RecordCount <= 0) then
    Informa('Sem dados para geração do relatório.')
  else begin
    try
      DBGridEh1.DataSource := nil;
      qrPesVenda.First;
      rpVenda.Print;
    finally
      DBGridEh1.DataSource := dsPesVenda;
    end;
  end;
end;

procedure TFormSelecionaVenda.dblkUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  LookupClear(dblkusuario,key);
end;

procedure TFormSelecionaVenda.edPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = vk_delete) or (key = VK_BACK) then
  begin
    CodCliente := 0;
    edPesquisa.Clear;
  end
  else if (key = VK_RETURN) and (shift = [ssCtrl]) then
  begin
    actSelecionarExecute(nil);
  end
  else
    NavegaRegistros(qrPesVenda,Key);
end;

procedure TFormSelecionaVenda.edPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    btnBuscar.Click;
  end;
end;

procedure TFormSelecionaVenda.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  vSql := qrPesVenda.SQL.Text;
  CodCliente := 0;
  DM.cdsUsuario.Open;
  DateEdit1.Date := Date;
  DateEdit2.Date := Date;
  FormRelatorios.ConfigPrint(rpVenda,'Venda de Produtos');
  pplbkm.Visible := LiberaVeiculos;
  ppDBTextkm.Visible := LiberaVeiculos;

  for i := 0 to DBGridEh1.Columns.Count - 1 do
  begin
    if LowerCase(DBGridEh1.Columns[i].FieldName) = 'kilometragem' then
      DBGridEh1.Columns[i].Visible := LiberaVeiculos;

  end;
end;

procedure TFormSelecionaVenda.FormShow(Sender: TObject);
begin
  inherited;
  pnSelecionar.Visible := self.Tag = tag_orcamento;
  if self.Tag = tag_orcamento then
  begin
    self.Caption :='Localizar Orçamento';
    DBGridEh1.FooterRowCount := 0;
  end;
  edPesquisa.SetFocus;
end;

procedure TFormSelecionaVenda.getRodapeText(Sender: TObject; var Text: string);
begin
  inherited;
  FormRelatorios.getRodapeText(Sender,Text);
end;

procedure TFormSelecionaVenda.ppDBText33GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  FormRelatorios.EnderecoGetText(Sender,Text);
end;

procedure TFormSelecionaVenda.ppDBText34GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  FormRelatorios.BairroGetText(Sender,Text);
end;

procedure TFormSelecionaVenda.ppDBText35GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  FormRelatorios.TelefoneRelGetText(Sender,Text);
end;

procedure TFormSelecionaVenda.ppTitleBand1BeforePrint(Sender: TObject);
begin
  inherited;
  FormRelatorios.LoadLogoPadrao(ppImage3);
end;

procedure TFormSelecionaVenda.qrPesVendaCalcFields(DataSet: TDataSet);
begin
  inherited;
  qrPesVendaTotal_pagar.AsCurrency := qrPesVendatotal_venda.AsCurrency +
    qrPesVendaacrescimo.AsCurrency - qrPesVendadesconto.AsCurrency;
  if qrPesVendaTotal_pagar.AsCurrency < 0 then
    qrPesVendaTotal_pagar.AsCurrency := 0;

end;

end.

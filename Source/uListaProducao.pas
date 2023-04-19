unit uListaProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCloneSel, DBGridEhGrouping, ExtCtrls, StdCtrls, Mask, rxToolEdit,
  GridsEh, DBGridEh, DB, DBClient, Provider, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ComCtrls, Buttons, Grids, DBGrids,
  DBCtrls, DateUtils, ppBands, ppCache, ppClass, ppParameter, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppVar, ppPrnabl, Menus,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, ppDesignLayer, EhLibVCL,
  DBAxisGridsEh, System.Actions;

type
  TFormListaProducao = class(TFormCloneSelecao)
    DBGridEhListProd: TDBGridEh;
    BitBtn5: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dtIni: TDateEdit;
    dtFim: TDateEdit;
    ckData: TCheckBox;
    edCliente: TLabeledEdit;
    edVeiculo: TLabeledEdit;
    BitBtn4: TBitBtn;
    btnBuscar: TBitBtn;
    cdsPesquisaidproducao: TIntegerField;
    cdsPesquisaidcliente: TIntegerField;
    cdsPesquisapeso: TFloatField;
    cdsPesquisavalor_tonelada: TFloatField;
    cdsPesquisanum_viagens: TIntegerField;
    cdsPesquisadata: TDateField;
    cdsPesquisaidveiculo: TIntegerField;
    cdsPesquisadata_casdastro: TDateTimeField;
    cdsPesquisaidusuario: TIntegerField;
    cdsPesquisatara: TFloatField;
    cdsPesquisapeso_bruto: TFloatField;
    cdsPesquisacodveiculo: TIntegerField;
    cdsPesquisaplaca: TWideStringField;
    cdsPesquisanome: TWideStringField;
    cdsPesquisavalor_total: TCurrencyField;
    cdsPesquisasoma_valor_total: TAggregateField;
    cdsPesquisasoma_peso: TAggregateField;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    btnImprimir: TBitBtn;
    ppdbprod: TppDBPipeline;
    rpProducao: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    pplbValor: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBTextValor: TppDBText;
    ppDBTextvTotal: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel9: TppLabel;
    ppDBCalcPeso: TppDBCalc;
    ppDBCalcV: TppDBCalc;
    ppLabel10: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    actImprimir: TAction;
    ppShape1: TppShape;
    cdsPesquisavalor_agregado: TFloatField;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    cdsPesquisasoma_agregado: TAggregateField;
    cdsPesquisatipo: TWideStringField;
    cdsPesquisaidimportacao: TIntegerField;
    cdsPesquisadtimportacao: TDateTimeField;
    cdsPesquisaTiporeg: TWideStringField;
    MainMenu1: TMainMenu;
    Registros1: TMenuItem;
    ExcluirImportao1: TMenuItem;
    edtImportacao: TLabeledEdit;
    dtImportacao: TDateEdit;
    Label6: TLabel;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppDBCalcViagens: TppDBCalc;
    ppLabel12: TppLabel;
    pplbMedia: TppLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    edMedia: TEdit;
    cdsPesquisasoma_viagens: TAggregateField;
    cdsPesquisavalortotal_agregado: TCurrencyField;
    pplbDesc: TppLabel;
    ppLabel35: TppLabel;
    ppLine9: TppLine;
    cdsPesquisahora: TTimeField;
    gbHora: TGroupBox;
    ckHora: TCheckBox;
    edHoraIni: TMaskEdit;
    edHoraFim: TMaskEdit;
    Label9: TLabel;
    Label10: TLabel;
    procedure btnBuscarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsPesquisaCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actExcluirExecute(Sender: TObject);
    procedure dsPesquisaDataChange(Sender: TObject; Field: TField);
    procedure edVeiculoKeyPress(Sender: TObject; var Key: Char);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure ExcluirImportao1Click(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure cdsPesquisaAfterOpen(DataSet: TDataSet);
    procedure cdsPesquisaAfterRefresh(DataSet: TDataSet);
    procedure getRodapeText(Sender: TObject; var Text: string);
    procedure ckHoraClick(Sender: TObject);
  private
    FCodCliente: Integer;
    FSql: String;
    procedure CalculaMedia;
    { Private declarations }
  public
    { Public declarations }
    FCodVeiculo : Integer;
    procedure Filtrar;
  end;

var
  FormListaProducao: TFormListaProducao;

implementation

uses uSelCliente, uDM, FuncoesGlobais, FuncoesGerais, uCadProducao,
  uConfigImpressao, uRelatorios;
{$R *.dfm}

procedure TFormListaProducao.actExcluirExecute(Sender: TObject);
begin
  inherited;
  if not self.Permissao.Excluir then
    AcessoNegado(Negado_excluir)
  else begin
    if cdsPesquisaidproducao.AsInteger <= 0 then begin
      Informa('Nenhum registro selecionado!');
      Exit;
    end;

    if Pergunta('Deseja realmente excluir o registro selecionado?') = id_yes then
    begin
        if DM.ExecutaComando('delete from tbproducao where idproducao = '+IntToStr(cdsPesquisaidproducao.AsInteger)) then
          Informa('Exclusão realizada com sucesso!');
        cdsPesquisa.Refresh;
    end;
  end;


end;

procedure TFormListaProducao.actImprimirExecute(Sender: TObject);
begin
  inherited;
  btnImprimirClick(nil);
end;

procedure TFormListaProducao.actIncluirExecute(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormCadProducao, FormCadProducao);
    FormCadProducao.Permissao := self.Permissao;

    if Sender = btnNovo then
      FormCadProducao.Tag := 1;
    FormCadProducao.CodProducao := cdsPesquisaidproducao.AsInteger;
    FormCadProducao.ShowModal;

    if cdsPesquisa.Active then
      cdsPesquisa.Refresh;

  finally
    FreeAndNil(FormCadProducao);
  end;
end;

procedure TFormListaProducao.BitBtn1Click(Sender: TObject);
begin
  inherited;
  actIncluirExecute(Sender);
end;

procedure TFormListaProducao.BitBtn4Click(Sender: TObject);
var
  desc: String;
begin
  inherited;
  FCodVeiculo := fLocalizar(13, desc);
  edVeiculo.Text := desc;
  if edVeiculo.Text <> '' then
    Filtrar;
end;

procedure TFormListaProducao.BitBtn5Click(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFormListaProducao.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if (not cdsPesquisa.Active) or (cdsPesquisa.RecordCount = 0) then
     Informa('Sem dados para geração do relatório.')
  else begin
    frmConfigImressao := TfrmConfigImressao.Create(nil);
    if frmConfigImressao.ShowModal = mrOK then
    begin
      case frmConfigImressao.rgvalor.ItemIndex of
        0 : begin
             ppDBTextValor.DataField := 'valor_tonelada';
             ppDBTextvTotal.DataField := 'valor_total';
             pplbValor.Caption := 'V. Tonelada';
              pplbDesc.Caption := 'Relatório TSJT';
              ppDBCalc4.DataField := 'valor_total';
              ppDBCalcV.DataField := 'valor_total';
        end;
        1 : begin
              ppDBTextValor.DataField := 'valor_agregado';
              ppDBTextvTotal.DataField := 'valortotal_agregado';
              pplbValor.Caption := 'V. Agregado';
               pplbDesc.Caption := 'Relatório Agregado';
              ppDBCalc4.DataField :=  'valortotal_agregado';
              ppDBCalcV.DataField := 'valortotal_agregado';
        end;
      end;

      rpProducao.Groups[0].NewPage := frmConfigImressao.ckpagina.Checked;

      try
        DBGridEhListProd.DataSource := nil;
        cdsPesquisa.First;
        cdsPesquisa.IndexFieldNames := 'idveiculo;data';
        rpProducao.Print;
      finally
        DBGridEhListProd.DataSource := dsPesquisa;
      end;
    end;
    FreeAndNil(frmConfigImressao);
  end;

end;

procedure TFormListaProducao.CalculaMedia;
begin
  edMedia.Clear;
  try
    if cdsPesquisa.Active then
    begin
      if (VarToStr(cdsPesquisasoma_viagens.AsString) <> '') and (VarToStr(cdsPesquisasoma_peso.Value) <> '') then
      begin
         edMedia.Text := FormatFloat('#0.000',cdsPesquisasoma_peso.Value / cdsPesquisasoma_viagens.Value);
      end;
    end;
  except
  end;
end;

procedure TFormListaProducao.btnBuscarClick(Sender: TObject);
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
        FCodCliente := FormSelCliente.CodLocalizado;
        edCliente.Text := FormSelCliente.cdsPesquisanome.AsString;
        if edCliente.Text <> '' then
          Filtrar;
      end;
    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelCliente);
  end;
end;

procedure TFormListaProducao.cdsPesquisaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CalculaMedia;
end;

procedure TFormListaProducao.cdsPesquisaAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  CalculaMedia;
end;

procedure TFormListaProducao.cdsPesquisaCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsPesquisavalor_total.Value := cdsPesquisavalor_tonelada.AsCurrency * cdsPesquisapeso.Value;
  cdsPesquisavalortotal_agregado.Value := cdsPesquisavalor_agregado.AsCurrency * cdsPesquisapeso.Value;
  if cdsPesquisatipo.Value = 'M' then
    cdsPesquisaTiporeg.Value := 'Manual'
  else
    cdsPesquisaTiporeg.Value := 'Importado';
end;

procedure TFormListaProducao.ckHoraClick(Sender: TObject);
begin
  inherited;
  gbHora.Enabled := ckHora.Checked;
end;

procedure TFormListaProducao.dsPesquisaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  BitBtn1.Enabled := True;
end;

procedure TFormListaProducao.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_DELETE) or (key = VK_BACK) then
    edCliente.Clear;
end;

procedure TFormListaProducao.edVeiculoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    FCodVeiculo := StrToIntDef(edVeiculo.Text, 0);
    Filtrar;
  end
  else
    KeyPressSoNumeros(Key);
end;

procedure TFormListaProducao.ExcluirImportao1Click(Sender: TObject);
var
  IDImportacao : String;
begin
  inherited;
  IDImportacao := InputBox('Excluir','Informe o ID da importação a ser excluída:','');
  if StrToIntDef(IDImportacao,0) > 0 then
  begin
    if Pergunta('Deseja realmente excluir a importação selecionada?',MB_YESNO+MB_ICONWARNING+MB_DEFBUTTON2) = id_yes then
    begin
      GravaLogNoBanco('Excluída importação de produção ID '+IDImportacao);
      if ExecutaComando(DM.qrComando,'delete from tbproducao where idimportacao = '+IDImportacao) > 0 then
        Informa('Registros excluídos com sucesso.')
      else
        Informa('Nenhum registro excluído.');
      Filtrar;
    end;


  end;
end;

procedure TFormListaProducao.Filtrar;
var
  sql : string;
begin
  if (not ckData.Checked) and (dtImportacao.Date <= 0) then
  begin
    if (dtIni.Date > 0) and (dtFim.Date >= dtIni.Date) then
      sql := ' and p.data between ' + FormatDateSql(dtIni.Date)
        + ' and ' + FormatDateSql(dtFim.Date)
    else
    begin
      Informa('Verifique as datas informadas!');
      Exit;
    end;
  end;

  if (edCliente.Text <> '') and (FCodCliente > 0) then
    sql := sql + ' and p.idcliente = ' + IntToStr(FCodCliente);

  if (edVeiculo.Text <> '') and (FCodVeiculo > 0) then
    sql := sql + ' and v.codveiculo = ' + IntToStr(FCodVeiculo);

  if StrToIntDef(edtImportacao.Text,0) > 0 then
    sql := sql + ' and p.idimportacao = '+edtImportacao.Text;

  if dtImportacao.Date > 0 then
    sql := sql + ' and cast(p.dtimportacao as date) = '+FormatDateSql(dtImportacao.Date);

  if ckHora.Checked then
  begin
     if (StrToTimeDef(edHoraIni.Text,-1) >= 0) and
        (StrToTimeDef(edHoraFim.Text,-1) >= 0) then
     begin
        sql := sql + ' and p.hora between '+QuotedStr(edHoraIni.Text+':00')+' and '+
          QuotedStr(edHoraFim.Text+':59');

     end;


  end;

  qrPesquisa.Close;
  cdsPesquisa.Close;
  qrPesquisa.sql.Clear;
  qrPesquisa.sql.Add(FSql + sql);

  cdsPesquisa.Open;
  cdsPesquisa.IndexFieldNames := 'idveiculo;data';

end;

procedure TFormListaProducao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SaveColumnsLayout(DBGridEhListProd);
end;

procedure TFormListaProducao.FormCreate(Sender: TObject);
var
  DiaAtual: Integer;
begin
  inherited;
  FSql := qrPesquisa.SQL.Text;
  RestoreColumnsLayout(DBGridEhListProd);

  DiaAtual := DayOf(Date);
  if DiaAtual <= 15 then
  begin
    dtIni.Date := StrToDate(FormatDateTime('01/mm/yyyy', Date));
    dtFim.Date := StrToDate(FormatDateTime('15/mm/yyyy', Date));
  end
  else
  begin
    dtIni.Date := StrToDate(FormatDateTime('15/mm/yyyy', Date));
    dtFim.Date := IncMonth(StrToDate(FormatDateTime('01/mm/yyyy', Date)), 1)
      - 1;
  end;

end;

procedure TFormListaProducao.FormShow(Sender: TObject);
begin
  inherited;
  pnSelecionar.Visible := True;
  ckHoraClick(nil);
end;

procedure TFormListaProducao.getRodapeText(Sender: TObject; var Text: string);
begin
  inherited;
  FormRelatorios.getRodapeText(Sender,Text);
end;

procedure TFormListaProducao.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  inherited;
    if (StrToFloatDef(VarToStr(ppDBCalcPeso.Value),0) > 0) and (StrToFloatDef(VarToStr(ppDBCalcViagens.Value),0) > 0) then
    pplbMedia.Caption := FormatFloat('#0.000', ppDBCalcPeso.Value / ppDBCalcViagens.Value)
  else
    pplbMedia.Caption := '0,000';
end;

end.

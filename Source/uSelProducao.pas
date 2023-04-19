unit uSelProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCloneSel, DB, DBClient, Provider, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ComCtrls, StdCtrls, Buttons, Grids,
  DBGrids, ExtCtrls, Mask, rxToolEdit, DBGridEhGrouping, GridsEh, DBGridEh,
  DBCtrls, Menus, DateUtils, ppDB, ppParameter, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe;

type
  TFormSelProducao = class(TFormCloneSelecao)
    GroupBox1: TGroupBox;
    dtIni: TDateEdit;
    Label1: TLabel;
    dtFim: TDateEdit;
    Label2: TLabel;
    btnBuscar: TBitBtn;
    edCliente: TLabeledEdit;
    edVeiculo: TLabeledEdit;
    BitBtn4: TBitBtn;
    ckData: TCheckBox;
    BitBtn5: TBitBtn;
    cdsPesquisapeso: TFloatField;
    cdsPesquisadata: TDateField;
    cdsPesquisaidveiculo: TIntegerField;
    cdsPesquisaplaca: TWideStringField;
    cdsPesquisacliente: TWideStringField;
    DBGridEhProducao: TDBGridEh;
    cdsPesquisaTotalGeral: TAggregateField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    cdsPesquisaTotalTonelada: TAggregateField;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cotas1: TMenuItem;
    cdsPesquisaminimo: TFloatField;
    cdsPesquisameta: TFloatField;
    cdsPesquisasuper: TFloatField;
    cdsPesquisastatus: TStringField;
    cdsAux: TClientDataSet;
    cdsAuxidveiculo: TIntegerField;
    cdsAuxdata: TDateField;
    cdsAuxminimo: TCurrencyField;
    cdsAuxcota: TCurrencyField;
    cdsAuxsuper: TCurrencyField;
    qrPesquisapeso: TFloatField;
    qrPesquisadata: TDateField;
    qrPesquisaidveiculo: TIntegerField;
    qrPesquisacliente: TWideStringField;
    qrPesquisaplaca: TWideStringField;
    cdsAuxplaca: TWideStringField;
    cdsAuxcliente: TWideStringField;
    GroupBox2: TGroupBox;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    cdsPesquisatminimo: TCurrencyField;
    cdsPesquisatcota: TCurrencyField;
    cdsPesquisatsuper: TCurrencyField;
    qrPesquisacodveiculo: TIntegerField;
    cdsPesquisacodveiculo: TIntegerField;
    qrPesquisavalor_total: TFloatField;
    cdsPesquisavalor_total: TFloatField;
    btnImprimir: TBitBtn;
    ppdbprod: TppDBPipeline;
    rpProducao: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBTextVTotal: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppDBCalcPeso: TppDBCalc;
    ppDBCalcTotal2: TppDBCalc;
    ppLine2: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppParameterList1: TppParameterList;
    cdsAuxcodveiculo: TIntegerField;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppLine1: TppLine;
    actImprimir: TAction;
    qrPesquisanum_viagens: TLargeintField;
    cdsPesquisanum_viagens: TLargeintField;
    cdsPesquisamedia_viagem: TFloatField;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    ppLabel13: TppLabel;
    ppDBText11: TppDBText;
    ppDBCalcViagens: TppDBCalc;
    pplbMedia: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalcPeso0: TppDBCalc;
    ppDBCalcViagens0: TppDBCalc;
    pplbMedia0: TppLabel;
    ppDBCalcTotal1: TppDBCalc;
    qrPesquisavalor_totalagregado: TFloatField;
    cdsPesquisavalor_totalagregado: TFloatField;
    ppShape1: TppShape;
    ppLine3: TppLine;
    ppLabel14: TppLabel;
    cdsPesquisaTotalAgregado: TAggregateField;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    pplbDesc: TppLabel;
    ppLabel35: TppLabel;
    ppLine9: TppLine;
    ppTitleBand1: TppTitleBand;
    procedure FormShow(Sender: TObject);
    procedure ckDataClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsPesquisaCalcFields(DataSet: TDataSet);
    procedure dsPesquisaDataChange(Sender: TObject; Field: TField);
    procedure actIncluirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure DBGridEhProducaoDblClick(Sender: TObject);
    procedure Cotas1Click(Sender: TObject);
    procedure cdsPesquisaAfterRefresh(DataSet: TDataSet);
    procedure DBGridEhProducaoGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnNovoClick(Sender: TObject);
    procedure cdsPesquisaBeforeRefresh(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edVeiculoKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimirClick(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure getRodapeText(Sender: TObject; var Text: string);
  private
    { Private declarations }
    FSql: String;
    FCodCliente, FCodVeiculo: Integer;
    procedure Filtrar;
    procedure CalcularMetas;
    procedure setStatus;
    procedure TotalMedia(ppDBCalcPeso, ppDBCalcViagens: TppDBCalc; ppLabel : TppLabel);
  public
    { Public declarations }
  end;

const
  s_abaixoMinimo = 'NÃO PAGOU A PRESTAÇÃO';
  s_minimo = 'FEZ O MÍMINO';
  s_cota = 'CUMPRIU A META';
  s_super = 'PARABÉNS SUPER META';

var
  FormSelProducao: TFormSelProducao;

implementation

uses FuncoesGerais, FuncoesGlobais, uSelCliente, uPrincipal, uCadProducao,
  uCadCota, uDM, uListaProducao, uConfigImpressao, uRelatorios;
{$R *.dfm}

procedure TFormSelProducao.actAlterarExecute(Sender: TObject);
begin
  inherited;
  //detalhar
  if (cdsPesquisaidveiculo.AsInteger > 0) and (cdsPesquisadata.AsDateTime > 0) then
  begin
    try
      Application.CreateForm(TFormListaProducao,FormListaProducao);
      FormListaProducao.dtIni.Date := cdsPesquisadata.AsDateTime;
      FormListaProducao.dtFim.Date := cdsPesquisadata.AsDateTime;
      FormListaProducao.edVeiculo.Text := cdsPesquisacodveiculo.AsString;
      FormListaProducao.FCodVeiculo := cdsPesquisacodveiculo.asInteger;
      FormListaProducao.Filtrar;
      FormListaProducao.ShowModal;
    finally
      FreeAndNil(FormListaProducao);
      if cdsPesquisa.Active then
        cdsPesquisa.Refresh;
    end;
  end;
end;

procedure TFormSelProducao.actImprimirExecute(Sender: TObject);
begin
  inherited;
  btnImprimirClick(nil);
end;

procedure TFormSelProducao.actIncluirExecute(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormCadProducao, FormCadProducao);
    FormCadProducao.Permissao := self.Permissao;

    if Sender = btnNovo then
      FormCadProducao.Tag := 1;
    FormCadProducao.ShowModal;

    if cdsPesquisa.Active then
      cdsPesquisa.Refresh;

  finally
    FreeAndNil(FormCadProducao);
  end;
end;

procedure TFormSelProducao.BitBtn4Click(Sender: TObject);
var
  desc: String;
begin
  inherited;
  FCodVeiculo := fLocalizar(13, desc);
  edVeiculo.Text := desc;
  if edVeiculo.Text <> '' then
    Filtrar;

end;

procedure TFormSelProducao.Filtrar;
var
  sql: String;
begin
  if (not ckData.Checked) then
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

  if sql <> '' then
    sql := ' where p.idveiculo > 0 ' + sql;
  sql := sql + ' group by p.idveiculo, p.data order by p.data, p.idveiculo';

  cdsPesquisa.Close;
  qrPesquisa.Close;
  qrPesquisa.sql.Clear;
  qrPesquisa.sql.Add(FSql + sql);

  cdsPesquisa.Open;
  cdsPesquisa.IndexFieldNames := 'idveiculo;data';
  CalcularMetas;

end;

procedure TFormSelProducao.BitBtn5Click(Sender: TObject);
begin
  inherited;
    Filtrar;
end;

procedure TFormSelProducao.btnImprimirClick(Sender: TObject);
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
           ppDBTextVTotal.DataField := 'valor_total';
           pplbDesc.Caption := 'Relatório TSJT';
        end;
        1 : begin
          ppDBTextVTotal.DataField := 'valor_totalagregado';
          pplbDesc.Caption := 'Relatório Agregado';
        end;
      end;
      ppDBCalcTotal1.DataField := ppDBTextVTotal.DataField;
      ppDBCalcTotal2.DataField := ppDBTextVTotal.DataField;

      if frmConfigImressao.ckpagina.Checked then
        rpProducao.Groups[0].NewPage := True;
      try
        DBGridEhProducao.DataSource := nil;
        cdsPesquisa.First;
        rpProducao.Print;
      finally
        DBGridEhProducao.DataSource := dsPesquisa;
      end;
    end;
    FreeAndNil(frmConfigImressao);
  end;
end;

procedure TFormSelProducao.btnBuscarClick(Sender: TObject);
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

procedure TFormSelProducao.btnNovoClick(Sender: TObject);
begin
  inherited;
  actIncluirExecute(Sender);
end;

procedure TFormSelProducao.setStatus;
begin
  if cdsPesquisavalor_total.AsCurrency > 0 then
  begin
    if not(cdsPesquisa.State in [dsEdit, dsInsert]) then
      cdsPesquisa.Edit;

    if cdsPesquisavalor_total.AsCurrency < cdsPesquisaminimo.Value then
      cdsPesquisastatus.Value := s_abaixoMinimo
    else if cdsPesquisavalor_total.AsCurrency < cdsPesquisameta.Value then
      cdsPesquisastatus.Value := s_minimo
    else if cdsPesquisavalor_total.AsCurrency < cdsPesquisasuper.Value then
      cdsPesquisastatus.Value := s_cota
    else if cdsPesquisavalor_total.AsCurrency >= cdsPesquisasuper.Value then
      cdsPesquisastatus.Value := s_super;

  end;

end;

procedure TFormSelProducao.CalcularMetas;
var
  TotalVeiculo, MinimoAux, CotaAux, SuperAux, Minimo1, Cota1, Super1: Currency;
  OldVeiculo, nDias: Integer;
  oldData: TDate;

  procedure psubCalcula(vnDias: Integer);
  begin
    if DM.qrMetadias_uteis.AsInteger - vnDias <= 0 then
    begin
      MinimoAux := Minimo1;
      CotaAux := Cota1;
      SuperAux := Super1;
    end
    else
    begin
      MinimoAux := ((DM.qrMetaminimo.Value - TotalVeiculo) /
          (DM.qrMetadias_uteis.AsInteger - vnDias));
      CotaAux := ((DM.qrMetacota.Value - TotalVeiculo) /
          (DM.qrMetadias_uteis.AsInteger - vnDias));
      SuperAux := ((DM.qrMetasuper.Value - TotalVeiculo) /
          (DM.qrMetadias_uteis.AsInteger - vnDias));
    end;

    if MinimoAux < 0 then
      MinimoAux := 0;
    if CotaAux < 0 then
      CotaAux := 0;
    if SuperAux < 0 then
      SuperAux := 0;

    { if MinimoAux < Minimo1 then
      MinimoAux := Minimo1;
      if CotaAux < Cota1 then
      CotaAux := Cota1;
      if SuperAux < Super1 then
      SuperAux := Super1; }
  end;

begin
  try
    DM.qrMeta.Close;
    cdsPesquisa.DisableControls;
    cdsPesquisa.First;
    OldVeiculo := 0;
    cdsAux.EmptyDataSet;
    TotalVeiculo := 0;

    while not cdsPesquisa.Eof do
    begin
      if getMeta(cdsPesquisadata.AsDateTime, cdsPesquisaidveiculo.AsInteger)
        then
      begin
        if (cdsPesquisaidveiculo.AsInteger <> OldVeiculo) or
          (cdsPesquisadata.AsDateTime = DM.qrMetadata_inicial.AsDateTime) then
        begin
          TotalVeiculo := 0;
          OldVeiculo := cdsPesquisaidveiculo.AsInteger;
          nDias := 0;

          Minimo1 := DM.qrMetaminimo.Value / DM.qrMetadias_uteis.AsInteger;
          Cota1 := DM.qrMetacota.Value / DM.qrMetadias_uteis.AsInteger;
          Super1 := DM.qrMetasuper.Value / DM.qrMetadias_uteis.AsInteger;
        end;

        try
          with DM do
          begin
            psubCalcula(nDias);

            TotalVeiculo := TotalVeiculo + cdsPesquisavalor_total.AsCurrency;
            nDias := nDias + 1;

            cdsPesquisa.Edit;
            cdsPesquisaminimo.Value := MinimoAux;
            cdsPesquisameta.Value := CotaAux;
            cdsPesquisasuper.Value := SuperAux;
            setStatus;
            cdsPesquisatminimo.Value := DM.qrMetaminimo.Value;
            cdsPesquisatcota.Value := DM.qrMetacota.Value;
            cdsPesquisatsuper.Value := DM.qrMetasuper.Value;
            cdsPesquisa.Post;
            oldData := cdsPesquisadata.AsDateTime;
            cdsPesquisa.Next;
            if (TotalVeiculo > 0) and ((cdsPesquisa.Eof) or
                (OldVeiculo <> cdsPesquisaidveiculo.AsInteger)) then
            begin
              if not cdsPesquisa.Eof then
                cdsPesquisa.Prior;

              cdsAux.Insert;
              cdsAuxidveiculo.Value := OldVeiculo;
              cdsAuxdata.Value := oldData + 1;
              psubCalcula(nDias);
              cdsAuxplaca.Value := cdsPesquisaplaca.AsString;
              cdsAuxcodveiculo.AsInteger := cdsPesquisacodveiculo.AsInteger;
              cdsAuxcliente.Value := cdsPesquisacliente.Value;
              cdsAuxminimo.Value := MinimoAux;
              cdsAuxcota.Value := CotaAux;
              cdsAuxsuper.Value := SuperAux;

              cdsAux.Post;

            end
            else if not cdsPesquisa.Eof then
              cdsPesquisa.Prior;
          end;
        except
          if cdsPesquisa.State in [dsEdit, dsInsert] then
            cdsPesquisa.Cancel;

          if cdsAux.State in [dsEdit, dsInsert] then
            cdsAux.Cancel;
        end;

      end;

      cdsPesquisa.Next;
    end;

    if cdsAux.RecordCount > 0 then
    begin
      cdsAux.First;
      while not cdsAux.Eof do
      begin
        try
          cdsPesquisa.Insert;
          cdsPesquisaidveiculo.Value := cdsAuxidveiculo.Value;
          // cdsPesquisaidcliente.Value := 0;
          cdsPesquisadata.Value := cdsAuxdata.Value;
          cdsPesquisaminimo.Value := cdsAuxminimo.Value;
          cdsPesquisameta.Value := cdsAuxcota.Value;
          cdsPesquisasuper.Value := cdsAuxsuper.Value;
          cdsPesquisacliente.Value := cdsAuxcliente.Value;
          cdsPesquisaplaca.Value := cdsAuxplaca.Value;
          cdsPesquisacodveiculo.Value := cdsAuxcodveiculo.AsInteger;
          setStatus;
          cdsPesquisa.Post;
        except
          if cdsPesquisa.State in [dsEdit, dsInsert] then
            cdsPesquisa.Cancel;
        end;

        cdsAux.Next;
      end;

    end;

  finally
    cdsPesquisa.First;
    cdsPesquisa.EnableControls;
  end;
end;

procedure TFormSelProducao.cdsPesquisaAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  CalcularMetas;
end;

procedure TFormSelProducao.cdsPesquisaBeforeRefresh(DataSet: TDataSet);
begin
  inherited;
  cdsPesquisa.CancelUpdates;
end;

procedure TFormSelProducao.cdsPesquisaCalcFields(DataSet: TDataSet);
begin
  inherited;
  { if (cdsPesquisapeso.Value > 0) and (cdsPesquisavalor_tonelada.Value > 0) then
    begin
    cdsPesquisavalor_total.Value := cdsPesquisapeso.Value * cdsPesquisavalor_tonelada.Value;
    end; }
  if (cdsPesquisapeso.Value > 0) and (cdsPesquisanum_viagens.Value > 0) then begin
    cdsPesquisamedia_viagem.Value := cdsPesquisapeso.Value / cdsPesquisanum_viagens.Value;
  end;
end;

procedure TFormSelProducao.ckDataClick(Sender: TObject);
begin
  inherited;
  dtIni.Enabled := not ckData.Checked;
  dtFim.Enabled := not ckData.Checked;
end;

procedure TFormSelProducao.Cotas1Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormCadCota, FormCadCota);
    FormCadCota.Permissao := RetornaPermissao(19);
    if not FormCadCota.Permissao.Visualizar then
      AcessoNegado(Negado_visualizar)
    else
      FormCadCota.ShowModal;
  finally
    FreeAndNil(FormCadCota);
  end;
end;

procedure TFormSelProducao.DBGridEhProducaoDblClick(Sender: TObject);
begin
  inherited;
  actIncluirExecute(nil);
end;

procedure TFormSelProducao.DBGridEhProducaoGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if lowercase(Column.FieldName) = 'status' then
  begin
    if cdsPesquisastatus.Value = s_abaixoMinimo then
      Background := clRed
    else if cdsPesquisastatus.Value = s_minimo then
      Background := $0000F9F9
    else if cdsPesquisastatus.Value = s_cota then
      Background := $00FFCD9B
    else if cdsPesquisastatus.Value = s_super then
      Background := $0000C400;
  end;

  if cdsPesquisavalor_total.AsCurrency = 0 then
    Background := $0048A4FF;

  if ((cdsPesquisaminimo.AsCurrency = 0) and (lowercase(Column.FieldName)
        = 'minimo')) or ((cdsPesquisameta.AsCurrency = 0) and
      (lowercase(Column.FieldName) = 'meta')) or
    ((cdsPesquisasuper.AsCurrency = 0) and (lowercase(Column.FieldName)
        = 'super')) then
    AFont.Color := clRed;
end;

procedure TFormSelProducao.dsPesquisaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  // BitBtn1.Enabled := (cdsPesquisaidproducao.AsInteger > 0);
end;

procedure TFormSelProducao.edVeiculoKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormSelProducao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsPesquisa.Close;
  qrPesquisa.Close;
  SaveColumnsLayout(DBGridEhProducao);
end;

procedure TFormSelProducao.FormCreate(Sender: TObject);
begin
  inherited;
  FSql := qrPesquisa.sql.Text;
  cdsAux.CreateDataSet;
  RestoreColumnsLayout(DBGridEhProducao);
end;

procedure TFormSelProducao.FormShow(Sender: TObject);
var
  DiaAtual: Integer;
begin
  inherited;
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

  // ShowWindow(self.Handle,SW_SHOWMAXIMIZED);
  pnSelecionar.Visible := True;
end;

procedure TFormSelProducao.getRodapeText(Sender: TObject; var Text: string);
begin
  inherited;
  FormRelatorios.getRodapeText(Sender,Text);
end;

procedure TFormSelProducao.TotalMedia(ppDBCalcPeso, ppDBCalcViagens : TppDBCalc; ppLabel : TppLabel);
begin
  pplbMedia.Caption := '';
  try
    if (VarToStr(ppDBCalcPeso.Value) <> '') and (VarToStr(ppDBCalcViagens.Value) <> '') then
    begin
      ppLabel.Caption := FormatFloat('#0.000',ppDBCalcPeso.Value / ppDBCalcViagens.Value);
    end;
  except
  end;
end;

procedure TFormSelProducao.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  inherited;
  TotalMedia(ppDBCalcPeso0,ppDBCalcViagens0,pplbMedia0);
end;

procedure TFormSelProducao.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  inherited;
  TotalMedia(ppDBCalcPeso,ppDBCalcViagens,pplbMedia);
end;

end.

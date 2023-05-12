unit uSelCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCloneSel, DBActns, DB, DBClient, Provider, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, StdCtrls, Buttons, Grids, DBGrids,
  ExtCtrls, ComCtrls, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppPrnabl, ppCache, ppParameter, ppVar, ppStrtch,
  ppRegion, ppMemo, ppPageBreak, ppDesignLayer, System.Actions;

type
  TFormSelCliente = class(TFormCloneSelecao)
    edPesquisa: TLabeledEdit;
    rgbusca: TRadioGroup;
    btnBuscar: TBitBtn;
    cdsPesquisacodcliente: TIntegerField;
    cdsPesquisanome: TWideStringField;
    cdsPesquisatelefone: TWideStringField;
    cdsPesquisaemail: TWideStringField;
    cdsPesquisacelular: TWideStringField;
    cdsPesquisadocumento: TWideStringField;
    cdsPesquisafantasia: TWideStringField;
    btnImprimir: TBitBtn;
    ppDBCliente: TppDBPipeline;
    rpCliente: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel31: TppLabel;
    ppLine10: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    qrFichaCliente: TZQuery;
    ppDBFicha: TppDBPipeline;
    dsFicha: TDataSource;
    rpFicha: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLine4: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText5: TppDBText;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    ppLabel13: TppLabel;
    ppDBText10: TppDBText;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppLabel15: TppLabel;
    ppDBText12: TppDBText;
    ppLabel16: TppLabel;
    ppDBText13: TppDBText;
    ppLabel17: TppLabel;
    ppDBText14: TppDBText;
    ppLabel18: TppLabel;
    ppDBText15: TppDBText;
    ppLabel19: TppLabel;
    ppDBText16: TppDBText;
    ppLabel20: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText19: TppDBText;
    ppLabel25: TppLabel;
    ppDBText20: TppDBText;
    ppLabel26: TppLabel;
    ppDBText21: TppDBText;
    ppLabel27: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLabel28: TppLabel;
    ppShape3: TppShape;
    ppLabel29: TppLabel;
    ppShape4: TppShape;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppDBText24: TppDBText;
    ppLabel33: TppLabel;
    ppDBText25: TppDBText;
    ppLabel34: TppLabel;
    ppDBText26: TppDBText;
    ppLabel35: TppLabel;
    ppDBText27: TppDBText;
    ppLabel36: TppLabel;
    ppDBText28: TppDBText;
    ppLabel37: TppLabel;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppLabel39: TppLabel;
    ppLabel38: TppLabel;
    ppDBText31: TppDBText;
    ppLabel40: TppLabel;
    ppDBText32: TppDBText;
    ppLabel41: TppLabel;
    ppDBText33: TppDBText;
    ppLabel42: TppLabel;
    ppDBText34: TppDBText;
    ppLabel43: TppLabel;
    ppDBText35: TppDBText;
    ppLabel44: TppLabel;
    ppDBText36: TppDBText;
    ppLabel45: TppLabel;
    ppDBText37: TppDBText;
    BitBtn4: TBitBtn;
    ppDBMemo1: TppDBMemo;
    ppLabel46: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppTitleBand1: TppTitleBand;
    ppImage2: TppImage;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBConfigs: TppDBPipeline;
    ppTitleBand2: TppTitleBand;
    ppImage1: TppImage;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppLabel47: TppLabel;
    ppDBText42: TppDBText;
    ppLabel48: TppLabel;
    ppDBText43: TppDBText;
    ppLabel49: TppLabel;
    ppDBText44: TppDBText;
    ppLabel50: TppLabel;
    ppDBText45: TppDBText;
    ppLabel51: TppLabel;
    ppDBText46: TppDBText;
    ppLabel52: TppLabel;
    ppDBText47: TppDBText;
    ppLabel53: TppLabel;
    ppDBText48: TppDBText;
    cdsPesquisacodgarra: TWideStringField;
    cdsPesquisaprefeitura: TWideStringField;
    procedure btnBuscarClick(Sender: TObject);
    procedure rgbuscaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridPesquisaDblClick(Sender: TObject);
    procedure dsPesquisaDataChange(Sender: TObject; Field: TField);
    procedure actIncluirExecute(Sender: TObject);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actAlterarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cdsPesquisaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure edPesquisaChange(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure getRodapeText(Sender: TObject; var Text: string);
    procedure ppDBText3GetText(Sender: TObject; var Text: string);
    procedure ppDBText6GetText(Sender: TObject; var Text: string);
    procedure BitBtn4Click(Sender: TObject);
    procedure ppDBText27GetText(Sender: TObject; var Text: string);
    procedure ppDBText10GetText(Sender: TObject; var Text: string);
    procedure cdsPesquisatelefoneGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsPesquisatelefoneSetText(Sender: TField; const Text: string);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure ppDBText89GetText(Sender: TObject; var Text: string);
    procedure ppDBText90GetText(Sender: TObject; var Text: string);
    procedure ppDBText91GetText(Sender: TObject; var Text: string);
    procedure ppTitleBand2BeforePrint(Sender: TObject);
    procedure ppDBText17GetText(Sender: TObject; var Text: string);
    procedure cdsPesquisaprefeituraGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    CampoFiltro : string;
    FFiltro : String;
    procedure ChamaCadastro(CodCliente: Integer);
    { Private declarations }
  public
    { Public declarations }
    vIndex : SmallInt;
    FiltroExtra : String;
  end;

var
  FormSelCliente: TFormSelCliente;

implementation

uses FuncoesGlobais, uCadCliente, uDM, FuncoesGerais, uRelatorios;

{$R *.dfm}

procedure TFormSelCliente.ChamaCadastro(CodCliente : Integer);
begin
  if (not self.Permissao.Incluir) and (CodCliente = 0) then
    AcessoNegado(Negado_incluir)
  else
    try
      Application.CreateForm(TformCadCliente,formCadCliente);
      formCadCliente.CodCliente := CodCliente;
      formCadCliente.Permissao := self.Permissao;
      if CodCliente = 0 then
        formCadCliente.Tag := 1;
      formCadCliente.ShowModal;
    finally
      FreeAndNil(formCadCliente);
      //não dá refresh com muitos registros para não agarrar
      if (cdsPesquisa.Active) and (cdsPesquisa.RecordCount <= 10) then
        cdsPesquisa.Refresh;
    end;

end;

procedure TFormSelCliente.actAlterarExecute(Sender: TObject);
begin
  inherited;
  if cdsPesquisacodcliente.AsInteger > 0 then
    ChamaCadastro(cdsPesquisacodcliente.AsInteger);
end;

procedure TFormSelCliente.actIncluirExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro(0);
end;

procedure TFormSelCliente.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if (cdsPesquisa.Active) and (cdsPesquisa.RecordCount > 0) then
  begin
    if Pergunta('Deseja imprimir a ficha de todos os clientes listados?')= ID_YES then begin
      setQuery(qrFichaCliente,'select * from tbcliente where codcliente > 0 '+FFiltro+' order by nome');
    
    end
    else
      setQuery(qrFichaCliente,'select * from tbcliente where codcliente = '+cdsPesquisacodcliente.AsString);
    rpFicha.Print;
  end
  else
    Informa('Sem dados para geração do relatório.');
end;

procedure TFormSelCliente.btnBuscarClick(Sender: TObject);
begin
  inherited;
  FFiltro := '';
  if Trim(edPesquisa.Text) = '' then
    if Pergunta('Nenhum critério de busca informado, isso retornará'+#13+
                'todos os clientes cadastrados, que pode demorar.'+#13+
                'Deseja continuar?') = id_no then
     Exit;

  if edPesquisa.Text <> '' then begin
    case rgbusca.ItemIndex of
      0 : begin
        Ffiltro := '(nome like _utf8 '+QuotedStr(edPesquisa.Text[1] + '%')+
                  'or fantasia like _utf8 '+QuotedStr(edPesquisa.Text[1] + '%')+  ' COLLATE utf8_unicode_ci) ';
        CampoFiltro := 'nome';
      end;
      1 : begin
           Ffiltro := 'documento like '+QuotedStr(edPesquisa.Text[1]+'%');
           CampoFiltro := 'documento';
      end;
      2 :begin Ffiltro := '(telefone like '+QuotedStr('%'+edPesquisa.Text[1] + '%')+
                    ' or celular like '+QuotedStr('%'+edPesquisa.Text[1] + '%')+')';
          CampoFiltro := 'telefone';
      end;
      3 :begin Ffiltro := 'codgarra = '+ApenasNumerosStr(edPesquisa.Text);
          CampoFiltro := '';
      end;
    end;

  end;

  if Ffiltro <> '' then
    Ffiltro := ' and '+Ffiltro;

  if FiltroExtra <> '' then
    Ffiltro := ' and '+ FiltroExtra+' '+FFiltro;

  cdsPesquisa.Close;
  cdsPesquisa.CommandText := 'select codcliente, codgarra, nome, telefone, email, celular, documento, fantasia, prefeitura from tbcliente where codcliente > 0'+ Ffiltro;
  cdsPesquisa.Open;

  cdsPesquisa.Filtered := False;
  cdsPesquisa.Filtered := True;
end;

procedure TFormSelCliente.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if (cdsPesquisa.Active) and (cdsPesquisa.RecordCount > 0) then
  begin
    cdsPesquisa.First;
    rpCliente.Print;
  end
  else
    Informa('Sem dados para geração do relatório.');
end;

procedure TFormSelCliente.cdsPesquisaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  if (CampoFiltro <> '') and (edPesquisa.Text <> '') then begin
    if CampoFiltro = 'telefone' then begin
      Accept :=  (pos(UpperCase(ApenasNumerosStr(edPesquisa.Text)), UpperCase(ApenasNumerosStr(cdsPesquisa.FieldByName('celular').AsString))) > 0) or
                 (pos(UpperCase(ApenasNumerosStr(edPesquisa.Text)), UpperCase(ApenasNumerosStr(cdsPesquisa.FieldByName('telefone').AsString))) > 0);
    end
    else if CampoFiltro = 'documento' then
    begin
      Accept :=  (pos(UpperCase(ApenasNumerosStr(edPesquisa.Text)), UpperCase(ApenasNumerosStr(cdsPesquisa.FieldByName('documento').AsString))) > 0);
    end
    else if CampoFiltro = 'nome' then begin
      Accept := (pos(UpperCase(RemoveAcento(edPesquisa.Text)), UpperCase(RemoveAcento(cdsPesquisa.FieldByName(CampoFiltro).AsString))) > 0) or
                (pos(UpperCase(RemoveAcento(edPesquisa.Text)), UpperCase(RemoveAcento(cdsPesquisa.FieldByName('fantasia').AsString))) > 0);
    end;


  end
  else
    Accept := True;
end;

procedure TFormSelCliente.cdsPesquisaprefeituraGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'T' then
    Text := 'SIM'
  else
    Text := 'NÃO';
end;

procedure TFormSelCliente.cdsPesquisatelefoneGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  DM.GetTextTelefone(Sender,Text,DisplayText);
end;

procedure TFormSelCliente.cdsPesquisatelefoneSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  DM.SetTextTelefone(Sender,Text);
end;

procedure TFormSelCliente.DBGridPesquisaDblClick(Sender: TObject);
begin
  inherited;
  if not Localizando then
  begin
    if (cdsPesquisa.Active) and (cdsPesquisa.RecordCount > 0) then
       ChamaCadastro(cdsPesquisa.FieldByName('codcliente').AsInteger);
  end
  else
    ModalResult := mrOk;
end;

procedure TFormSelCliente.dsPesquisaDataChange(Sender: TObject;
  Field: TField);
begin
  //inherited;
  btnNovo.Enabled := True;
end;

procedure TFormSelCliente.edPesquisaChange(Sender: TObject);
begin
  inherited;
  if edPesquisa.Text <> '' then
    btnBuscarClick(nil);
end;

procedure TFormSelCliente.edPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_RETURN) and (shift = [ssCtrl]) then
  begin
    if (not Localizando) and (cdsPesquisa.Active) and (cdsPesquisacodcliente.AsInteger > 0) then
      ChamaCadastro(cdsPesquisacodcliente.AsInteger)
    else
      ModalResult := mrOk;
    key := 0;
  end
  else if (key = VK_RETURN) then
  begin
    btnBuscar.Click;
    key := 0;
  end
  else
    NavegaRegistros(cdsPesquisa,Key);
end;

procedure TFormSelCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CodLocalizado := cdsPesquisacodcliente.AsInteger;
end;

procedure TFormSelCliente.FormCreate(Sender: TObject);
begin
  inherited;
  vIndex := 0;
  FormRelatorios.ConfigPrint(rpCliente,'Clientes.pdf');
  FormRelatorios.ConfigPrint(rpFicha,'Ficha.pdf');
  FiltroExtra := '';
end;

procedure TFormSelCliente.FormShow(Sender: TObject);
begin
  inherited;
  rgbusca.ItemIndex := vIndex;
  edPesquisa.SetFocus;
  if edPesquisa.Text <> '' then
    btnBuscar.Click;

end;

procedure TFormSelCliente.getRodapeText(Sender: TObject; var Text: string);
begin
  inherited;
  FormRelatorios.getRodapeText(Sender,Text);
end;

procedure TFormSelCliente.ppDBText10GetText(Sender: TObject; var Text: string);
begin
  inherited;
  text := FormataDocumento(Text);
end;

procedure TFormSelCliente.ppDBText17GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text :=  FormataCep(Text);
end;

procedure TFormSelCliente.ppDBText27GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := FormataTelefone(Text);
end;

procedure TFormSelCliente.ppDBText3GetText(Sender: TObject; var Text: string);
begin
  inherited;
  if Text <> '' then
    Text := FormataDocumento(Text);
end;

procedure TFormSelCliente.ppDBText6GetText(Sender: TObject; var Text: string);
begin
  inherited;
  if Text <> '' then
    Text := FormataTelefone(Text);
end;

procedure TFormSelCliente.ppDBText89GetText(Sender: TObject; var Text: string);
begin
  inherited;
  FormRelatorios.EnderecoGetText(Sender,Text);
end;

procedure TFormSelCliente.ppDBText90GetText(Sender: TObject; var Text: string);
begin
  inherited;
  FormRelatorios.BairroGetText(Sender,Text);
end;

procedure TFormSelCliente.ppDBText91GetText(Sender: TObject; var Text: string);
begin
  inherited;
  FormRelatorios.TelefoneRelGetText(Sender,Text);
end;

procedure TFormSelCliente.ppTitleBand1BeforePrint(Sender: TObject);
begin
  inherited;
  FormRelatorios.LoadLogoPadrao(ppImage2);
end;

procedure TFormSelCliente.ppTitleBand2BeforePrint(Sender: TObject);
begin
  inherited;
  FormRelatorios.LoadLogoPadrao(ppImage1);
end;

procedure TFormSelCliente.rgbuscaClick(Sender: TObject);
begin
  inherited;
  edPesquisa.SetFocus;
  edPesquisa.SelectAll;
  if edPesquisa.Text <> '' then
    btnBuscarClick(nil);
end;

end.

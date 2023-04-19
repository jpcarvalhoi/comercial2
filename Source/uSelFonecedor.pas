unit uSelFonecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCloneSel, DB, DBClient, Provider, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, StdCtrls, Buttons, Grids, DBGrids,
  ExtCtrls, ComCtrls, ppDB, ppDBPipe, ppParameter, ppBands, ppClass, ppStrtch,
  ppMemo, ppCtrls, ppPrnabl, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TFormSelFornecedor = class(TFormCloneSelecao)
    edPesquisa: TLabeledEdit;
    btnBuscar: TBitBtn;
    rgbusca: TRadioGroup;
    cdsPesquisaidfornecedor: TIntegerField;
    cdsPesquisarazao: TWideStringField;
    cdsPesquisatel: TWideStringField;
    cdsPesquisatel2: TWideStringField;
    cdsPesquisaemail: TWideStringField;
    BitBtn4: TBitBtn;
    btnImprimir: TBitBtn;
    rpFicha: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel6: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppDBText5: TppDBText;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
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
    ppDBMemo1: TppDBMemo;
    ppLabel46: TppLabel;
    ppFooterBand2: TppFooterBand;
    ppLine4: TppLine;
    ppLabel9: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppParameterList2: TppParameterList;
    rpFornecedor: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel5: TppLabel;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel31: TppLabel;
    ppLine10: TppLine;
    ppParameterList1: TppParameterList;
    ppDBFicha: TppDBPipeline;
    ppDBFornecedor: TppDBPipeline;
    qrFichaFornecedor: TZQuery;
    dsFicha: TDataSource;
    cdsPesquisacnpj: TWideStringField;
    ppDBConfigs: TppDBPipeline;
    ppTitleBand1: TppTitleBand;
    ppImage2: TppImage;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppTitleBand2: TppTitleBand;
    ppImage1: TppImage;
    ppDBText9: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    procedure btnBuscarClick(Sender: TObject);
    procedure rgbuscaClick(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGridPesquisaDblClick(Sender: TObject);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPesquisatelGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsPesquisatelSetText(Sender: TField; const Text: string);
    procedure GetRodape(Sender: TObject; var Text: string);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppDBText6GetText(Sender: TObject; var Text: string);
    procedure ppDBText3GetText(Sender: TObject; var Text: string);
    procedure BitBtn4Click(Sender: TObject);
    procedure ppDBText27GetText(Sender: TObject; var Text: string);
    procedure ppDBText10GetText(Sender: TObject; var Text: string);
    procedure ppLabel9GetText(Sender: TObject; var Text: string);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure ppDBText89GetText(Sender: TObject; var Text: string);
    procedure ppDBText90GetText(Sender: TObject; var Text: string);
    procedure ppDBText91GetText(Sender: TObject; var Text: string);
    procedure ppTitleBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
    FFiltro : String;

    procedure ChamaCadastro(Cod : Integer);
  public
    { Public declarations }
  end;

var
  FormSelFornecedor: TFormSelFornecedor;

implementation

uses FuncoesGlobais, uCadFornecedor, FuncoesGerais, uDM, uRelatorios;

{$R *.dfm}

procedure TFormSelFornecedor.actIncluirExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro(0);
end;

procedure TFormSelFornecedor.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if cdsPesquisaidfornecedor.AsInteger > 0 then
    ChamaCadastro(cdsPesquisaidfornecedor.AsInteger);
end;

procedure TFormSelFornecedor.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if (cdsPesquisa.Active) and (cdsPesquisa.RecordCount > 0) then
  begin
    if Pergunta('Deseja imprimir a ficha de todos os fornecedores listados?')= ID_YES then begin
      setQuery(qrFichaFornecedor,'select * from tbfornecedor where idfornecedor > 0 '+FFiltro+' order by razao');

    end
    else
      setQuery(qrFichaFornecedor,'select * from tbfornecedor where idfornecedor = '+cdsPesquisaidfornecedor.AsString);
    rpFicha.Print;
  end
  else
    Informa('Sem dados para geração do relatório.');
end;

procedure TFormSelFornecedor.btnBuscarClick(Sender: TObject);
var
  filtro : String;
begin
  inherited;
  if Trim(edPesquisa.Text) = '' then
    if Pergunta('Nenhum critério de busca informado, isso retornará'+#13+
                'todos os registros cadastrados, que pode demorar.'+#13+
                'Deseja continuar?') = id_no then
     Exit;

  case rgbusca.ItemIndex of
    0 : filtro := 'razao like '+QuotedStr(edPesquisa.Text + '%');
    1 : filtro := 'cnpj = '+QuotedStr(ApenasNumerosStr(edPesquisa.Text));
    2 : filtro := 'tel like '+QuotedStr('%'+ApenasNumerosStr(edPesquisa.Text) + '%')+
                  ' or tel2 like '+QuotedStr('%'+ApenasNumerosStr(edPesquisa.Text) + '%');
  end;

  if filtro <> '' then
    filtro := ' and '+filtro;

  cdsPesquisa.Close;
  cdsPesquisa.CommandText := 'select idfornecedor, razao, tel, tel2, email, cnpj from tbfornecedor where idfornecedor > 0'+filtro;
  cdsPesquisa.Open;

  FFiltro := filtro;

end;

procedure TFormSelFornecedor.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if cdsPesquisa.Active and (cdsPesquisa.RecordCount > 0) then
  begin
    rpFornecedor.Print;
  end
  else
    Informa('Sem dados para geração do relatório.');
end;

procedure TFormSelFornecedor.cdsPesquisatelGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  DM.GetTextTelefone(Sender,Text,DisplayText);
end;

procedure TFormSelFornecedor.cdsPesquisatelSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  dm.SetTextTelefone(Sender,Text);
end;

procedure TFormSelFornecedor.ChamaCadastro(Cod: Integer);
begin
  if (Cod = 0) and (not self.Permissao.Incluir) then
    AcessoNegado(Negado_incluir)
  else
    try
      Application.CreateForm(TFormCadFornecedor,FormCadFornecedor);
      FormCadFornecedor.Permissao := self.Permissao;
      FormCadFornecedor.CodFornecedor := cod;
      if Cod = 0 then
        FormCadFornecedor.Tag := 1; //incluir
      FormCadFornecedor.ShowModal;
    finally
      FreeAndNil(FormCadFornecedor);
      if cdsPesquisa.Active and (cdsPesquisa.RecordCount <= 10) then
        cdsPesquisa.Refresh;
    end;

end;

procedure TFormSelFornecedor.DBGridPesquisaDblClick(Sender: TObject);
begin
  inherited;
  if not Localizando then
  begin
    if cdsPesquisaidfornecedor.AsInteger > 0 then
      ChamaCadastro(cdsPesquisaidfornecedor.AsInteger);
  end
  else begin

    ModalResult := mrOk;
  end;

end;

procedure TFormSelFornecedor.edPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if (key = VK_RETURN) and (shift = [ssCtrl]) then
    begin
      if (not Localizando) and (cdsPesquisa.Active) and (cdsPesquisaidfornecedor.AsInteger > 0) then
        ChamaCadastro(cdsPesquisaidfornecedor.AsInteger)
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

procedure TFormSelFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CodLocalizado := cdsPesquisaidfornecedor.AsInteger;
end;

procedure TFormSelFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
  FormRelatorios.ConfigPrint(rpFornecedor,'Fornecedores.pdf');
  FormRelatorios.ConfigPrint(rpFicha,'Fornecedor.pdf');

end;

procedure TFormSelFornecedor.GetRodape(Sender: TObject; var Text: string);
begin
  inherited;
  FormRelatorios.getRodapeText(Sender,Text);
end;

procedure TFormSelFornecedor.ppDBText10GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := FormataDocumento(Text);
end;

procedure TFormSelFornecedor.ppDBText27GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := FormataTelefone(Text);
end;

procedure TFormSelFornecedor.ppDBText3GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := FormataDocumento(Text);
end;

procedure TFormSelFornecedor.ppDBText6GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := FormataTelefone(Text);
end;

procedure TFormSelFornecedor.ppDBText89GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  FormRelatorios.EnderecoGetText(Sender,Text);
end;

procedure TFormSelFornecedor.ppDBText90GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  FormRelatorios.BairroGetText(Sender,Text);
end;

procedure TFormSelFornecedor.ppDBText91GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  FormRelatorios.TelefoneRelGetText(Sender,Text);
end;

procedure TFormSelFornecedor.ppLabel9GetText(Sender: TObject; var Text: string);
begin
  inherited;
  FormRelatorios.getRodapeText(Sender,Text);
end;

procedure TFormSelFornecedor.ppTitleBand1BeforePrint(Sender: TObject);
begin
  inherited;
  FormRelatorios.LoadLogoPadrao(ppImage2);
end;

procedure TFormSelFornecedor.ppTitleBand2BeforePrint(Sender: TObject);
begin
  inherited;
  FormRelatorios.LoadLogoPadrao(ppImage1);
end;

procedure TFormSelFornecedor.rgbuscaClick(Sender: TObject);
begin
  inherited;
  if edPesquisa.CanFocus then
    edPesquisa.SetFocus;
end;

end.

unit uCadCota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, rxToolEdit, RXDBCtrl, RxLookup, StdCtrls, Mask, DBCtrls,
  DBActns, ActnList, DB, ComCtrls, Buttons, ExtCtrls, DBGridEhGrouping,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, GridsEh, DBGridEh;

type
  TFormCadCota = class(TfrmClone)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    dsVeiculo: TDataSource;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    dtIni: TDateEdit;
    Label11: TLabel;
    btnBuscar: TBitBtn;
    qrPesMeta: TZQuery;
    qrPesMetaidmeta: TIntegerField;
    qrPesMetaidveiculo: TIntegerField;
    qrPesMetadata_inicial: TDateField;
    qrPesMetadata_final: TDateField;
    qrPesMetaminimo: TFloatField;
    qrPesMetacota: TFloatField;
    qrPesMetasuper: TFloatField;
    qrPesMetadias_uteis: TSmallintField;
    qrPesMetaplaca: TWideStringField;
    qrPesMetanome: TWideStringField;
    dsPesMeta: TDataSource;
    rxdbVeiculo: TRxDBLookupCombo;
    BitBtn4: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit7Enter(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsNavegacaoStateChange(Sender: TObject);
    procedure dsPesMetaDataChange(Sender: TObject; Field: TField);
    procedure DBGridEh1Enter(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure rxdbVeiculoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    FSql : string;
    oldCodigo : Integer;
    procedure SelectMeta;
    procedure pDiasUteis;
  public
    { Public declarations }
  end;

var
  FormCadCota: TFormCadCota;

implementation

uses uDM, FuncoesGerais, FuncoesGlobais;

{$R *.dfm}

procedure TFormCadCota.actExcluirExecute(Sender: TObject);
begin
  inherited;
  if qrPesMeta.Active then
    qrPesMeta.Refresh;
end;

procedure TFormCadCota.actGravarExecute(Sender: TObject);
var
  i : Integer;
  Incompleto : Boolean;
  DI, DF : String;
begin
  ActiveControl := nil;
  with DM do begin
    Incompleto := False;
    for i := 0 to cdsCadMeta.FieldCount - 1 do
    begin
      if (cdsCadMeta.Fields[i].Required) and (cdsCadMeta.Fields[i].IsNull) then
      begin
        Informa('Todos os campos devem ser preenchidos.');
        Incompleto := True;
        Break
      end;
    end;

    if not Incompleto then
    begin
      if (cdsCadMetadata_inicial.AsDateTime <= 0) then
      begin
        Informa('Informe a Data Inicial');
        Incompleto := True;
      end
      else if cdsCadMetadata_final.AsDateTime < cdsCadMetadata_inicial.AsDateTime then
      begin
        Informa('A data final deve ser maior que a data inicial.');
        Incompleto := True;
      end;

      DI := FormatDateSql(cdsCadMetadata_inicial.AsDateTime);
      DF := FormatDateSql(cdsCadMetadata_final.AsDateTime);
      setQuery(DM.qrComando,'select idmeta from tbmeta where (idveiculo = '+cdsCadMetaidveiculo.AsString+') and (('+
                DI+ ' >= data_inicial and '+ 'data_final >= ' + DI + ') or ('+DF+
                ' >= data_inicial and data_final >= '+ DF +')) and (idmeta <> '+IntToStr(cdsCadMetaidmeta.AsInteger)+')');

      if dm.qrComando.Fields[0].AsInteger > 0 then
      begin
        Informa('Já existe uma cota configurada para o período e veículo selecionado.');
        Incompleto := True;
      end;
    end;
  end;

  if not Incompleto then begin
    inherited;

    if qrPesMeta.Active then
      qrPesMeta.Refresh;

  end;


end;

procedure TFormCadCota.BitBtn4Click(Sender: TObject);
var
  FCodVeiculo : Integer;
begin
  inherited;
  FCodVeiculo := fLocalizar(12);
  if FCodVeiculo > 0 then
  begin
    if DataSetInEdicao(DM.cdsCadMeta,True) then
      dm.cdsCadMetaidveiculo.Value := FCodVeiculo;

  end;
end;

procedure TFormCadCota.btnBuscarClick(Sender: TObject);
var
  vsql : String;
begin
  inherited;
  with qrPesMeta do begin
     if dtIni.Date > 0 then
       vsql := ' and m.data_inicial >= '+FormatDateSql(dtIni.Date) ;

     if rxdbVeiculo.Text <> '' then
       vsql := vsql + ' and m.idveiculo = '+IntToStr(rxdbVeiculo.KeyValue);

     Close;
     SQL.Clear;
     SQL.Add(FSql + vsql);
     Open;
  end;
end;

procedure TFormCadCota.pDiasUteis;
begin
  if (dm.cdsCadMeta.State in [dsEdit,dsInsert]) and
     (DM.cdsCadMetadata_inicial.AsDateTime > 0) and (DM.cdsCadMetadata_final.AsDateTime > 0) then
    if DM.cdsCadMetadias_uteis.AsInteger = 0 then
      DM.cdsCadMetadias_uteis.Value := DiasUteis(DM.cdsCadMetadata_inicial.AsDateTime, DM.cdsCadMetadata_final.AsDateTime);
end;

procedure TFormCadCota.rxdbVeiculoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_DELETE) or (key = VK_BACK) then
    rxdbVeiculo.KeyValue := null;
end;

procedure TFormCadCota.DBEdit7Enter(Sender: TObject);
begin
  inherited;
  EditEnter(Sender);
  pDiasUteis;
end;

procedure TFormCadCota.DBGridEh1Enter(Sender: TObject);
begin
  inherited;
    SelectMeta;
end;

procedure TFormCadCota.dsNavegacaoStateChange(Sender: TObject);
begin
  inherited;
  if (not DBGridEh1.Enabled) and (DM.cdsCadMeta.State in [dsBrowse]) then
    DBGridEh1.Enabled := True
  else if (DM.cdsCadMeta.State in [dsEdit,dsInsert]) then
     DBGridEh1.Enabled := False;

end;

procedure TFormCadCota.dsPesMetaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  SelectMeta;
end;

procedure TFormCadCota.SelectMeta;
begin
  if DM.cdsCadMeta.State in [dsBrowse] then
  begin
    if oldCodigo <> qrPesMetaidmeta.AsInteger then begin
      DM.cdsCadMeta.Close;
      DM.cdsCadMeta.Params[0].Value := qrPesMetaidmeta.AsInteger;
      oldCodigo := qrPesMetaidmeta.AsInteger;
      DM.cdsCadMeta.Open;
    end;
  end;
end;

procedure TFormCadCota.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DM.cdsCadMeta.Close;
  qrPesMeta.Close;
end;

procedure TFormCadCota.FormCreate(Sender: TObject);
begin
  inherited;
  FSql := qrPesMeta.SQL.Text;
end;

procedure TFormCadCota.FormShow(Sender: TObject);
begin
  inherited;
  DM.cdsCadVeiculo.Open;
  DM.cdsCadMeta.Open;
end;

end.

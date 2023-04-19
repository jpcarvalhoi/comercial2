unit uListaParcelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList;

type
  TFormListaParcelas = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    btnConfirmar: TBitBtn;
    BitBtn2: TBitBtn;
    qrParcelas: TZQuery;
    qrParcelasidconta: TIntegerField;
    qrParcelasdata_lancamento: TDateField;
    qrParcelasdata_vencimento: TDateField;
    qrParcelasdata_pagamento: TDateField;
    qrParcelasvalor: TFloatField;
    qrParcelasdesconto: TFloatField;
    qrParcelasacrescimo: TFloatField;
    qrParcelasparcela: TWideStringField;
    qrParcelasidconta_grupo: TIntegerField;
    dsParcelas: TDataSource;
    BitBtn1: TBitBtn;
    qrParcelasvalor_pago: TFloatField;
    qrParcelasTotalpagar: TCurrencyField;
    qrParcelasconta: TWideStringField;
    qrParcelasbanco: TWideStringField;
    qrParcelasagencia: TWideStringField;
    qrParcelasnumcheque: TWideStringField;
    BitBtn4: TBitBtn;
    qrParcelasforma_pagamento: TWideStringField;
    qrParcelasidcliente: TIntegerField;
    qrParcelasidvenda: TIntegerField;
    qrParcelasidfornecedor: TIntegerField;
    qrParcelasdescricao: TWideStringField;
    qrParcelasobs: TWideStringField;
    qrParcelastipo: TWideStringField;
    qrParcelasusuario_cadastro: TIntegerField;
    qrParcelasusuario_pagamento: TIntegerField;
    qrParcelasidcartao: TIntegerField;
    qrParcelasautomatica: TWideStringField;
    qrParcelasidgrupoconta: TIntegerField;
    qrParcelasdocumento: TWideStringField;
    ActionList1: TActionList;
    actConfirmar: TAction;
    actCancelar: TAction;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actConfirmarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }

  public
    sql : string;
    Forma_Pagamento : string;
    { Public declarations }
  end;

var
  FormListaParcelas: TFormListaParcelas;

implementation

uses uDM, uParcelaCheque, FuncoesGlobais, FuncoesGerais;

{$R *.dfm}

procedure TFormListaParcelas.actCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFormListaParcelas.actConfirmarExecute(Sender: TObject);
begin
  if Pergunta('Deseja realmente salvar as alterações realizadas.') = id_yes then
  begin
    if qrParcelas.UpdatesPending  then
    begin
      try
        qrParcelas.ApplyUpdates;
      except
        Informa('Erro ao salvar alterações.');
      end;
    end;

    ModalResult := mrOK;
  end
  else begin
    qrParcelas.CancelUpdates;
    ModalResult := mrCancel;
  end;
end;

procedure TFormListaParcelas.BitBtn1Click(Sender: TObject);
var
  Parcela, i : Integer;
begin
  try
    Application.CreateForm(TFormParcelaCheque,FormParcelaCheque);
    FormParcelaCheque.edTotalCheque.ReadOnly := False;
    FormParcelaCheque.Caption := 'Lançamento de parcelas';
    if Forma_Pagamento <> fpg_cheque then
    begin
      with FormParcelaCheque do begin
        Label2.Visible := False;
        BitBtn1.Visible := False;
        for i := 0 to DBGridEh1.Columns.Count - 1 do
          if DBGridEh1.Columns[i].Tag = 1 then
             DBGridEh1.Columns[i].Visible := False;
        FormParcelaCheque.Width := 555;
      end;
    end;
    FormParcelaCheque.DateEditCheque.Date := Date;


    if (FormParcelaCheque.ShowModal = mrOK) and (DM.memcheque.RecordCount > 0) then
    begin
      with DM do begin
        memcheque.First;
        Parcela := qrParcelas.RecordCount ;

        if qrParcelas.Locate('idconta',DM.cdsCadContaidconta.AsInteger,[]) then
        begin
          qrParcelas.Edit;
          qrParcelasidconta_grupo.Value := DM.cdsCadContaidconta.AsInteger;
          qrParcelas.Post;
        end;

        while not memcheque.Eof  do
        begin
          Inc(Parcela);
          qrParcelas.Insert;

          //pega as informações gerais da conta
          qrParcelasforma_pagamento.Value := DM.cdsCadContaforma_pagamento.Value;
          qrParcelastipo.Value := DM.cdsCadContatipo.Value;
          qrParcelasidconta_grupo.AsInteger := DM.cdsCadContaidconta.AsInteger;
          qrParcelasidfornecedor.AsVariant := DM.cdsCadContaidfornecedor.AsVariant;
          qrParcelasidcliente.AsVariant := DM.cdsCadContaidcliente.AsVariant;
          qrParcelasidcartao.AsVariant := DM.cdsCadContaidcartao.AsVariant;
          qrParcelasidgrupoconta.AsVariant := dm.cdsCadContaidgrupoconta.AsVariant;

          qrParcelasidconta.AsVariant := Null;
          qrParcelasdata_lancamento.Value := Date;
          qrParcelasdata_vencimento.Value := memchequedtvencimento.AsDateTime;
          qrParcelasvalor.Value := memchequevalor.AsCurrency;
          qrParcelasconta.Value := memchequeconta.Value;
          qrParcelasbanco.Value := memchequebanco.Value;
          qrParcelasnumcheque.Value := memchequenumchque.Value;
          qrParcelasagencia.Value := memchequeagencia.Value;
          qrParcelasparcela.Value := IntToStr(Parcela);
          qrParcelas.Post;
          memcheque.next;
        end;

      end;
    end;
  finally
    FreeAndNil(FormParcelaCheque);
  end;
end;

procedure TFormListaParcelas.BitBtn4Click(Sender: TObject);
begin
  if (qrParcelasidconta.AsInteger > 0) and (DM.cdsCadContaidconta.AsInteger <> qrParcelasidconta.AsInteger) then
  begin
    DM.cdsCadConta.Close;
    dm.cdsCadConta.Params.ParamByName('pidconta').Value := qrParcelasidconta.AsInteger;
    dm.cdsCadConta.Open;

    ModalResult := mrCancel;
  end;
end;

procedure TFormListaParcelas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    qrParcelas.Close;
end;

procedure TFormListaParcelas.FormCreate(Sender: TObject);
begin
  sql := qrParcelas.SQL.Text;
end;

end.

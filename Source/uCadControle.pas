unit uCadControle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UClone, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, RxToolEdit, RxDBCtrl, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmCadControle = class(TfrmClone)
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    Label9: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label10: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label11: TLabel;
    btnCliente: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label12: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    BitBtn3: TBitBtn;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    Label16: TLabel;
    DBDateEdit4: TDBDateEdit;
    Label17: TLabel;
    DBEdit9: TDBEdit;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    btnNovo2: TBitBtn;
    btnAlterar2: TBitBtn;
    btnExcluir2: TBitBtn;
    dsPagamento: TDataSource;
    qrAux: TZQuery;
    Label18: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    DBDateEdit5: TDBDateEdit;
    Label23: TLabel;
    DBEdit13: TDBEdit;
    DBLookupComboBox6: TDBLookupComboBox;
    Label24: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actGravarExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovo2Click(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);

  private
    procedure setPagamentos;
    { Private declarations }
  public
    { Public declarations }
    CodLocalizar : Integer;
  end;

var
  frmCadControle: TfrmCadControle;

implementation

uses
  uDM, FuncoesGerais, FuncoesGlobais, uSelProduto, uLancaPagamento;

{$R *.dfm}

procedure TfrmCadControle.actCancelarExecute(Sender: TObject);
begin
  inherited;
  setPagamentos();
end;

procedure TfrmCadControle.actExcluirExecute(Sender: TObject);
begin
  inherited;
  setPagamentos();
end;

procedure TfrmCadControle.actGravarExecute(Sender: TObject);
begin
  if DM.cdsControlenpedido.AsString = '' then
  begin
    Erro('Informe o número do pedido.');
    if DBEdit1.CanFocus then
      DBEdit1.SetFocus;
    exit;
  end;

   if DM.cdsControleidproduto.AsInteger <= 0 then
   begin
     Erro('Informe o produto.');
     exit;
   end;

   if dm.cdsControleidcliente.AsInteger <= 0 then
   begin
     Erro('Informe a empresa.');
     exit;
   end;
  DM.cdsControlevalor_total.AsCurrency := DM.cdsControleqtde_enviada.Value * DM.cdsControlepreco_unit.AsCurrency;
  inherited;
  setPagamentos();
end;

procedure TfrmCadControle.actLocalizarExecute(Sender: TObject);
begin
  inherited;
  setPagamentos();
end;

procedure TfrmCadControle.BitBtn1Click(Sender: TObject);
var
  cod : Integer;
begin
  inherited;
  if DataSetInEdicao(dm.cdsControle) then
  begin
    cod := fLocalizar(17);
    if cod > 0 then
    begin
      DM.cdsControleidcliente.AsInteger := cod;
    end;
  end;

end;

procedure TfrmCadControle.BitBtn2Click(Sender: TObject);
var
  cod : integer;
begin
  inherited;
  if DataSetInEdicao(DM.cdsControle) then
  begin
    cod := fLocalizar(3);
    if cod > 0 then
      DM.cdsControleidfornecedor.AsInteger := cod;
  end;


end;

procedure TfrmCadControle.BitBtn3Click(Sender: TObject);
var
  cod : Integer;
begin
  inherited;
  if DataSetInEdicao(dm.cdsControle) then
  begin
    cod := fLocalizar(17);
    if cod > 0 then
    begin
      DM.cdsControleiddestino.AsInteger := cod;
    end;
  end;

end;

procedure TfrmCadControle.setPagamentos();
begin
  DM.cdsControlePg.Close;
  DM.cdsControlePg.Params.ParamByName('idtbsistema').Value := DM.cdsControleid.AsInteger;
  DM.cdsControlePg.Open;
end;

procedure TfrmCadControle.btnNovo2Click(Sender: TObject);
var
  aux : Currency;
begin
  inherited;
  if dm.cdsControleid.AsInteger <= 0 then
  begin
    Informa('Primeiro salve o registro.');
    Exit;
  end;

  Application.CreateForm(TfrmLancaPagamento, frmLancaPagamento);
  frmLancaPagamento.Permissao := RetornaPermissao(24);

  frmLancaPagamento.idTbsistema := DM.cdsControleid.AsInteger;

  if sender = btnNovo2 then
  begin
    DM.cdsControlepg.Insert;
    DM.cdsControlePgidtbsistema.Value := DM.cdsControleid.AsInteger;
  end;

  frmLancaPagamento.ShowModal;

  if frmLancaPagamento.AlterouValor then
  begin
    setQuery(qrAux, 'select sum(valor) from tbsistema_pagamento where idtbsistema = '+IntToStr(DM.cdsControleid.AsInteger));
    aux := qrAux.Fields[0].AsCurrency;
    if aux <> DM.cdsControlevalor_pago.AsCurrency then
    begin
      if Pergunta('Deseja atualizar o valor pago para '+FormataCurrency(aux)) = idyes then
      begin
        DM.cdsControle.Edit;
        DM.cdsControlevalor_pago.Value := aux;
        actGravarExecute(nil);
      end;
    end;
  end;

  FreeAndNil(frmLancaPagamento);
end;

procedure TfrmCadControle.btnClienteClick(Sender: TObject);
var
  cod : Integer;
  b : Boolean;
begin
  inherited;
  if DataSetInEdicao(DM.cdsControle) then
  begin
    try
      Application.CreateForm(TFormSelPoduto,FormSelPoduto);
      FormSelPoduto.Permissao := RetornaPermissao(6);
      FormSelPoduto.Localizando := True;
        if (FormSelPoduto.ShowModal = mrOK) and (FormSelPoduto.CodLocalizado > 0) then
        begin

          dm.cdsControleidproduto.AsInteger := FormSelPoduto.CodLocalizado;
          b := True;
          if dm.cdsControlepreco_unit.AsCurrency > 0 then
            if Pergunta('Deseja atualizar o valor unitário para '+ FormataCurrency(FormSelPoduto.cdsPesquisavalor_varejo.AsCurrency)+'?') = idNo then
              b := False;
          DM.cdsControlepreco_unit.Value := FormSelPoduto.cdsPesquisavalor_varejo.AsCurrency;
          if DBEdit3.CanFocus then
            DBEdit3.SetFocus;
        end;

    finally
      FreeAndNil(FormSelPoduto);
    end;
  end;

end;

procedure TfrmCadControle.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  LookupKeyDown(Sender, Key, Shift);
end;

procedure TfrmCadControle.FormCreate(Sender: TObject);
begin
  inherited;
  CodLocalizar := 0;
end;

procedure TfrmCadControle.FormShow(Sender: TObject);
begin
  inherited;
  OpenOrRefresh(DM.dslkcliente.DataSet);
  OpenOrRefresh(dm.cdsLKProduto);
  OpenOrRefresh(dm.dslkfornecedor.DataSet);
  OpenOrRefresh(dm.cdsStatus);
  OpenOrRefresh(dm.cdsSetor);
  OpenOrRefresh(dm.cdsUsuario);

  if CodLocalizar > 0 then
  begin
    DM.setControle(CodLocalizar);
  end;
  if not DM.cdsControle.Active then
    DM.cdsControle.Open;

  setPagamentos();


end;




end.

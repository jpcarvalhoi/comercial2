unit uCadConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons,
  ExtCtrls, DBCtrls, Mask, rxToolEdit, RXDBCtrl, RxDBComb, sSkinProvider, Spin,
  rxCurrEdit;

type
  TFormCadConta = class(TfrmClone)
    Label1: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label2: TLabel;
    DBEditValor: TDBEdit;
    Label3: TLabel;
    dbrgTipo: TDBRadioGroup;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    lbCliente: TLabel;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEditDocumento: TDBEdit;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    cbPagamento: TRxDBComboBox;
    dsGrupoConta: TDataSource;
    btnCliente: TBitBtn;
    Label9: TLabel;
    Label15: TLabel;
    btnParcelas: TBitBtn;
    sSkinProvider1: TsSkinProvider;
    pnCartao: TPanel;
    Label16: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    btnConfirmar: TBitBtn;
    actConfirmar: TAction;
    dsCartao: TDataSource;
    btnCheques: TBitBtn;
    dblkcliente_fornecedor: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    gbParcelas: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    ckParcelado: TCheckBox;
    edValorTotal: TCurrencyEdit;
    edNumParcelas: TSpinEdit;
    edValorEntrada: TCurrencyEdit;
    edValorParcela: TCurrencyEdit;
    edPeriodicidade: TSpinEdit;
    Label21: TLabel;
    edPrimeiroVcto: TDateEdit;
    Label22: TLabel;
    dblkfuncionario: TDBLookupComboBox;
    lbfuncionario: TLabel;
    btnfuncionario: TBitBtn;
    dblkVeiculo: TDBLookupComboBox;
    btnveiculo: TBitBtn;
    lbveiculo: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label23: TLabel;
    dsSubGrupo: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbrgTipoClick(Sender: TObject);
    procedure dsNavegacaoDataChange(Sender: TObject; Field: TField);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure btnClienteClick(Sender: TObject);
    procedure dsNavegacaoStateChange(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure btnParcelasClick(Sender: TObject);
    procedure cbPagamentoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure sSkinProvider1SkinItem(Item: TComponent;
      var CanBeAdded: Boolean; var SkinSection: string);
    procedure actConfirmarExecute(Sender: TObject);
    procedure btnChequesClick(Sender: TObject);
    procedure ckParceladoClick(Sender: TObject);
    procedure edValorTotalChange(Sender: TObject);
    procedure btnfuncionarioClick(Sender: TObject);
    procedure btnveiculoClick(Sender: TObject);
    procedure DBLookupComboBox5Enter(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
  private
    procedure Controles;
    procedure CalculaValorParcela;
    function Validaparcelas: boolean;
    { Private declarations }
  public
    { Public declarations }
    IDConta : Integer;
    Deb_Cred : String;
  end;

var
  FormCadConta: TFormCadConta;

implementation

uses uDM, FuncoesGlobais, uSelCliente, uSelFonecedor, uParcelaCheque,
  uListaParcelas, uContas, FuncoesGerais, uControlaCheques;

{$R *.dfm}

procedure TFormCadConta.actCancelarExecute(Sender: TObject);
begin
  inherited;
  Controles;
end;

procedure TFormCadConta.actConfirmarExecute(Sender: TObject);
begin
  inherited;
  actGravarExecute(nil);
  if DM.cdsCadConta.State in [dsBrowse] then
  begin
     FormContas.actConfirmarExecute(nil);
  end;
end;

procedure TFormCadConta.actExcluirExecute(Sender: TObject);
begin
  inherited;
  Controles;
end;

function TFormCadConta.Validaparcelas : boolean;
begin
  Result := True;
  if ckParcelado.Checked then
  begin
    if edValorTotal.Value <= 0 then
    begin
      Informa('Informe o valor total do parcelamento.');
      if edValorTotal.CanFocus  then
        edValorTotal.SetFocus;
      Result := False;
    end
    else if (edNumParcelas.Text = '') or (edNumParcelas.Value <= 0) then
    begin
      Informa('Informe o número de parcelas');
      if edNumParcelas.CanFocus then
        edNumParcelas.SetFocus;
      Result := false;
    end
    else if edValorEntrada.Value < 0 then
    begin
       Informa('Valor da entrada inválido');
       Result := false;
    end
    else if edPeriodicidade.Value <= 0 then
    begin
      Informa('Informe a periodicidade.');
      if edPeriodicidade.CanFocus then
        edPeriodicidade.SetFocus;
    end
    else if edPrimeiroVcto.Date <= 0 then
    begin
      Informa('Informe a data do primeiro vencimento.');
      if edPrimeiroVcto.CanFocus then
        edPrimeiroVcto.SetFocus;
    end
    else begin
      CalculaValorParcela;
      if edValorParcela.Value < 0 then
      begin
        Informa('Valor da parcela inválido.');
        Result := False;
      end;
    end;

    if Result then
    begin
      if Pergunta('Confira o lançamento parcelado: '+#13+
         IntToStr(edNumParcelas.Value)+' parcelas no valor de '+FormataCurrency(edValorParcela.Value)+#13+
         'Entrada: '+FormataCurrency(edValorEntrada.Value)) = id_no then
       Result := False
      else begin
        DM.cdsCadContadata_vencimento.Value := edPrimeiroVcto.Date;
        if edValorEntrada.Value > 0 then
          DM.cdsCadContavalor.Value := edValorEntrada.Value
        else
          DM.cdsCadContavalor.Value := edValorParcela.Value;
      end;
    end;

  end;
end;

procedure TFormCadConta.actGravarExecute(Sender: TObject);
var
  Invalido : Boolean;
  i, j, parcelas, parcelasaux, idconta : Integer;
  DataIni : TDate;
begin
  ActiveControl := nil;
  Invalido := False;

  with DM do begin
     if (DBLookupComboBox1.Text = 'ALIMINTAÇÃO') and (DBMemo1.Text = '') then
       DBMemo1.Text := 'ALIMINTAÇÃO';


     if not Validaparcelas then
     begin
       Invalido := True;
     end
     else if cdsCadContadata_vencimento.AsDateTime <= 0  then
     begin
       Informa('Informe a data de vencimento.');
       DBDateEdit1.SetFocus;
       Invalido := True;
     end
     else if cdsCadContavalor.AsCurrency <= 0 then
     begin
       Informa('Informe o valor do lançamento.');
       DBEditValor.SetFocus;
       Invalido := True;
     end
     else if cdsCadContaforma_pagamento.AsString = '' then
     begin
       Informa('Informe a Data de Pagamento');
       cbPagamento.SetFocus;
       Invalido := True;
     end
     else if cdsCadContaidgrupoconta.AsInteger <= 0 then
     begin
       Informa('Informe o grupo da conta.');
       DBLookupComboBox1.SetFocus;
       Invalido := True;
     end
     else if cdsCadContadescricao.AsString = '' then
     begin
       Informa('Informe a descrição');
       DBMemo1.SetFocus;
       Invalido := True;
     end;

  end;


  if not Invalido then begin
    DM.cdsCadContaparcela.Value := '1 de 1';
    if ckParcelado.Checked then
    begin
      parcelas := edNumParcelas.Value;
      parcelasaux := parcelas;
      if edValorEntrada.Value > 0 then begin
        parcelasaux := parcelas + 1;
        DM.cdsCadContaparcela.Value := '1 de '+IntToStr(parcelasaux);
      end
      else
        DM.cdsCadContaparcela.Value := '1 de '+IntToStr(parcelas);
    end;

    inherited;

    DM.cdsCadConta.ApplyUpdates;

    if ckParcelado.Checked then
    begin //
      idconta := DM.cdsCadContaidconta.AsInteger;

      if DM.ExecutaComando('update tbconta set idconta_grupo = '+IntToStr(idconta)+' where idconta = '+IntToStr(idconta)) then
      begin
        DM.cdsCadConta.DisableControls;
        Screen.Cursor := crHourGlass;
        self.Enabled := False;
        try
          if edValorEntrada.Value <= 0 then
            parcelas := parcelas - 1;

          DataIni := edPrimeiroVcto.Date;
          with DM do begin
            qrPesConta.Close;
            qrPesConta.SQL.Clear;
            qrPesConta.SQL.Add('select * from tbconta where idconta = '+DM.cdsCadContaidconta.asString);
            qrPesConta.Open;
            if qrPesConta.FieldByName('idconta').AsInteger = DM.cdsCadContaidconta.AsInteger then
            begin
              for i := 1 to parcelas do begin
                DM.cdsCadConta.Insert;
                for j := 0 to DM.cdsCadConta.FieldCount - 1 do
                begin
                  if qrPesConta.FindField(cdsCadConta.Fields[j].FieldName) <> nil then
                    cdsCadConta.Fields[j].AsVariant := qrPesConta.FieldByName(cdsCadConta.Fields[j].FieldName).AsVariant;
                end;
                DM.cdsCadContaidconta.Value := 0;
                DM.cdsCadContaidconta_grupo.Value := idconta;
                if edPeriodicidade.Value = 30 then
                  DataIni := IncMonth(DataIni,1)
                else
                  DataIni := DataIni + edPeriodicidade.Value;
                DM.cdsCadContadata_vencimento.Value := DataIni;
                DM.cdsCadContavalor.Value := edValorParcela.Value;
                DM.cdsCadContaparcela.Value := IntToStr(i+1) + ' de '+IntToStr(parcelasaux);
                DM.cdsCadConta.Post;


              end;

            end;

          end;

        finally
          DM.cdsCadConta.EnableControls;
          DM.cdsCadConta.Close;
          DM.cdsCadConta.Params.ParamByName('pidconta').Value := idconta;
          DM.cdsCadConta.Open;
          Screen.Cursor := crDefault;
          self.Enabled := true;
        end;
      end;
      ckParcelado.Checked := False;
      edValorTotal.Value  := 0;
      edNumParcelas.Value := 0;
    end;

  end;

  Controles;
end;

procedure TFormCadConta.actIncluirExecute(Sender: TObject);
begin
  inherited;
  DM.cdsCadContatipo.Value := Deb_Cred;
  if DM.cdsCadContatipo.Value = _Credito then
     DM.cdsCadContaidgrupoconta.Value := 3
  else
     DM.cdsCadContaidgrupoconta.Value := 2;

  DBDateEdit1.SetFocus;
  Controles;
  edPrimeiroVcto.Date := Date;
end;

procedure TFormCadConta.btnfuncionarioClick(Sender: TObject);
var
  Cod : Integer;
begin
  inherited;
  cod := fLocalizar(11);
  if cod > 0 then
  begin
    if DataSetInEdicao(dm.cdsCadConta) then
      dm.cdsCadContaidfuncionario.AsInteger := cod;
  end;
end;

procedure TFormCadConta.btnveiculoClick(Sender: TObject);
var
  cod : Integer;
  Desc : String;
begin
  inherited;
  cod := fLocalizar(14);
  if cod > 0 then
    if DataSetInEdicao(dm.cdsCadConta,True) then
      dm.cdsCadContaidveiculo.Value := cod;

end;

procedure TFormCadConta.btnChequesClick(Sender: TObject);
begin
  inherited;
  if DM.cdsCadContaidconta.AsInteger <= 0 then
  begin
    Informa('A conta deve estar salva pora exibir esta opção.');
    Exit;
  end;
  try
    Application.CreateForm(TFormControlaCheque,FormControlaCheque);
    FormControlaCheque.Permissao := RetornaPermissao(14);
    FormControlaCheque.IDConta := DM.cdsCadContaidconta.AsInteger;
    FormControlaCheque.Filtrar;
    FormControlaCheque.ShowModal;
  finally
    FreeAndNil(FormControlaCheque);
  end;
end;

procedure TFormCadConta.btnParcelasClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  try
    if DM.cdsCadContaidconta.AsInteger <= 0 then
    begin
      if Pergunta('Deseja lançar um novo movimento parcelado') = id_yes then
      begin

      end;
      Exit;
    end;

    with FormListaParcelas do begin
        qrParcelas.Close;
        qrParcelas.SQL.Clear;
        qrParcelas.SQL.Add(sql);

        if DM.cdsCadContaidconta_grupo.AsInteger > 0 then begin
          qrParcelas.SQL.Add('where idconta_grupo = '+DM.cdsCadContaidconta_grupo.AsString);
        end
        else begin
          qrParcelas.SQL.Add('where idconta = '+DM.cdsCadContaidconta.AsString);
        end;
        qrParcelas.Open;

    end;
    FormListaParcelas.Forma_Pagamento := DM.cdsCadContaforma_pagamento.AsString;

    try
      self.Hide;
      if FormListaParcelas.ShowModal = mrOK then
        if DM.cdsCadConta.Active then
          DM.cdsCadConta.Refresh;
    finally
      self.Show;
    end;
  except
     Informa('Erro na geração das parcelas.');
  end;
end;

procedure TFormCadConta.btnClienteClick(Sender: TObject);
begin
  inherited;
  if DM.cdsCadContatipo.AsString = _Credito then //chama localização de clientes
  begin
    try
      Application.CreateForm(TFormSelCliente,FormSelCliente);
      FormSelCliente.Permissao := RetornaPermissao(3);
      FormSelCliente.Localizando := True;
      if FormSelCliente.Permissao.Visualizar then begin
        if (FormSelCliente.ShowModal = mrOK) and (FormSelCliente.CodLocalizado > 0) then
        begin
          if not (DM.cdsCadConta.State in [dsEdit,dsInsert]) then
            DM.cdsCadConta.Edit;

          DM.cdsCadContaidcliente.Value := FormSelCliente.CodLocalizado;
          //DM.cdsCadContanome.AsString := FormSelCliente.cdsPesquisanome.AsString;
        end;
      end
      else
        AcessoNegado(Negado_visualizar);
    finally
      FreeAndNil(FormSelCliente);
    end;

  end
  else begin
    try
      Application.CreateForm(TFormSelFornecedor,FormSelFornecedor);
      FormSelFornecedor.Permissao := RetornaPermissao(4);
      FormSelFornecedor.Localizando := True;
      if FormSelFornecedor.Permissao.Visualizar then begin
        if (FormSelFornecedor.ShowModal = mrOK) and (FormSelFornecedor.CodLocalizado > 0) then
        begin
          if not (DM.cdsCadConta.State in [dsEdit,dsInsert]) then
            DM.cdsCadConta.Edit;

          DM.cdsCadContaidfornecedor.Value := FormSelFornecedor.CodLocalizado;
          //DM.cdsCadContarazao.AsString := FormSelFornecedor.cdsPesquisarazao.AsString;
        end;
      end
      else
        AcessoNegado(Negado_visualizar);
    finally
      FreeAndNil(FormSelFornecedor);
    end;

  end;

end;

procedure TFormCadConta.DBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
  EditEnter(Sender);
  if DM.cdsCadContatipo.AsString <> '' then
    DM.cdsGrupoConta.Filter := 'tipo = '+QuotedStr(DM.cdsCadContatipo.AsString);
  DM.cdsGrupoConta.Filtered := True;
end;

procedure TFormCadConta.DBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
  EditExit(Sender);
  LimpaFilter(dm.cdsGrupoConta);
end;

procedure TFormCadConta.DBLookupComboBox5Enter(Sender: TObject);
begin
  inherited;
  EditEnter(Sender);
  if DM.cdsCadContatipo.AsString <> '' then
    DM.cdsSubGrupo.Filter := 'tipo = '+QuotedStr(DM.cdsCadContatipo.AsString);
  DM.cdsSubGrupo.Filtered := True;
end;

procedure TFormCadConta.DBLookupComboBox5Exit(Sender: TObject);
begin
  inherited;
  EditExit(Sender);
  LimpaFilter(dm.cdsSubGrupo);
end;

procedure TFormCadConta.DBMemo1KeyPress(Sender: TObject; var Key: Char);
var
  aux : String;
begin
  inherited;
  aux := AnsiUpperCase(Key);
  if aux <> '' then
    Key := aux[1];
end;

procedure TFormCadConta.dbrgTipoClick(Sender: TObject);
var
  aux : string;
begin
  inherited;
  if DM.cdsCadConta.State in [dsEdit,dsInsert] then
  begin
    case dbrgTipo.ItemIndex of
      0 : aux := _Credito;
      1 : aux := _Debito;
    end;
    if (DM.cdsCadContatipo.AsString <> Aux) then //mudança no tipo de lançamento
    begin
      DM.cdsCadContaidgrupoconta.AsVariant := null;
    end;
  end;
end;

procedure TFormCadConta.dsNavegacaoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  case dbrgTipo.ItemIndex of
    0 : begin
      lbCliente.Caption := 'Cliente';
      dblkcliente_fornecedor.DataField := '';
       dblkcliente_fornecedor.ListSource := nil;
      dblkcliente_fornecedor.ListField := 'nome';
      dblkcliente_fornecedor.KeyField := 'codcliente';
      dblkcliente_fornecedor.DataField := 'idcliente';
      dblkcliente_fornecedor.ListSource := DM.dslkcliente;
    end;
    1 : begin
      lbCliente.Caption := 'Fornecedor';
      dblkcliente_fornecedor.DataField := '';
      dblkcliente_fornecedor.ListSource := nil;

      dblkcliente_fornecedor.ListField := 'razao';
      dblkcliente_fornecedor.KeyField := 'idfornecedor';
      dblkcliente_fornecedor.DataField := 'idfornecedor';
      dblkcliente_fornecedor.ListSource := DM.dslkfornecedor;
    end;
  end;
  cbPagamentoChange(nil);
end;

procedure TFormCadConta.dsNavegacaoStateChange(Sender: TObject);
begin
  inherited;
  Controles;
  btnParcelas.Enabled := not (DM.cdsCadConta.State in [dsInsert]);
  ckParcelado.Enabled := DM.cdsCadConta.State in [dsInsert];
end;

procedure TFormCadConta.CalculaValorParcela;
begin
  edValorParcela.Value := 0;
  if (edNumParcelas.Text <> '') and (edValorTotal.Value > 0) and (edNumParcelas.Value > 0) then
  begin
    edValorParcela.Value := (edValorTotal.Value - edValorEntrada.Value) / edNumParcelas.Value;

    //Correcao :=
  end;

end;

procedure TFormCadConta.edValorTotalChange(Sender: TObject);
begin
  inherited;
  CalculaValorParcela;
end;

procedure TFormCadConta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  LimpaFilter(dm.cdsGrupoConta);
  LimpaFilter(dm.cdsSubGrupo);
  dm.qrlkCliente.close;
  dm.qrlkFornecedor.close;
  dm.qrlkusuario.Open;
  dm.qrlkFuncionario.Close;
  dm.cdsCadVeiculo.Close;
end;

procedure TFormCadConta.FormCreate(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormListaParcelas,FormListaParcelas);
  Deb_Cred := _Debito;
end;

procedure TFormCadConta.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(FormListaParcelas) then
    FreeAndNil(FormListaParcelas);
end;

procedure TFormCadConta.ckParceladoClick(Sender: TObject);
begin
  inherited;
  gbParcelas.Enabled := (ckParcelado.Checked) and (DM.cdsCadConta.State in [dsInsert]);
  if ckParcelado.Checked then
  begin
    if dm.cdsCadContavalor.AsCurrency > 0 then
      edValorTotal.Value := dm.cdsCadContavalor.AsCurrency;
  end;
end;

procedure TFormCadConta.Controles;
var
  Estado : Boolean;
begin
  if (DM.cdsCadContadata_pagamento.AsDateTime > 0) or (DM.cdsCadContaidvenda.AsInteger > 0) then
    Estado := False
  else
    Estado := True;

  Campos(self,Estado);
  DBMemo1.Enabled := True;
  DBEditDocumento.Enabled := True;
  btnCliente.Enabled := Estado;
  if dbrgTipo.Tag = 1 then
    dbrgTipo.Enabled := False;

end;

procedure TFormCadConta.FormShow(Sender: TObject);
begin
  inherited;
  if not LiberaVeiculos then
  begin
    dblkVeiculo.Visible := False;
    btnveiculo.Visible := False;
    lbveiculo.Visible := false;
  end;

  if not LiberaFuncionarios then
  begin
    dblkfuncionario.Visible := false;
    btnfuncionario.Visible := false;
    lbfuncionario.Visible := false;
  end;

  dm.qrlkCliente.Open;
  dm.qrlkFornecedor.Open;
  dm.qrlkusuario.Open;
  dm.qrlkFuncionario.Open;
  dm.cdsCadVeiculo.Open;
  DM.cdsSubGrupo.Open;

  dsNavegacao.DataSet := dm.CdsCadConta;
  if (not DM.cdsCadConta.Active) or (dm.cdsCadContaidconta.AsInteger <> IDConta) then
  begin
    DM.cdsCadConta.Close;
    if IDConta = 0 then
      dm.cdsCadConta.Params.ParamByName('pidconta').Value := null
    else
      dm.cdsCadConta.Params.ParamByName('pidconta').Value := IDConta;
    dm.cdsCadConta.Open;
  end;

  if not DM.cdsGrupoConta.Active then
    DM.cdsGrupoConta.Open;

  if not dm.cdsCartao.Active then
    dm.cdsCartao.Open;

  if self.Tag = 1 then
    actIncluirExecute(nil);

  Controles;
  self.OnShow := nil; //remove o enveto para poder esconder a tela
end;

procedure TFormCadConta.sSkinProvider1SkinItem(Item: TComponent;
  var CanBeAdded: Boolean; var SkinSection: string);
begin
  inherited;
  if Item.Tag = 1 then
    CanBeAdded := False;
end;

procedure TFormCadConta.cbPagamentoChange(Sender: TObject);
begin
  inherited;
  pnCartao.Enabled := (cbPagamento.ItemIndex = 1) or (cbPagamento.ItemIndex = 2);
  btnCheques.Enabled := cbPagamento.ItemIndex = 3;
end;

end.

unit uControlaCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCloneSel, StdCtrls, ExtCtrls, DB, DBClient, Provider, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, ComCtrls, Buttons, Grids, DBGrids, Mask, rxToolEdit, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TFormControlaCheque = class(TFormCloneSelecao)
    edCliente: TLabeledEdit;
    btnBuscar: TBitBtn;
    RadioGroup1: TRadioGroup;
    edDocumento: TLabeledEdit;
    edNumcheque: TLabeledEdit;
    cbStatus: TComboBox;
    Label1: TLabel;
    BitBtn4: TBitBtn;
    GroupBox1: TGroupBox;
    DateEdit1: TDateEdit;
    cbData: TComboBox;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    cdsPesquisaidtbcheque: TIntegerField;
    cdsPesquisanumcheque: TWideStringField;
    cdsPesquisabanco: TWideStringField;
    cdsPesquisaagencia: TWideStringField;
    cdsPesquisaconta: TWideStringField;
    cdsPesquisadocumento_terceiro: TWideStringField;
    cdsPesquisavalor: TFloatField;
    cdsPesquisadata_vencimento: TDateField;
    cdsPesquisadata_lancamento: TDateField;
    cdsPesquisaidcliente: TIntegerField;
    cdsPesquisanome_terceiro: TWideStringField;
    cdsPesquisaidfornecedor: TIntegerField;
    cdsPesquisatipo_chque: TWideStringField;
    cdsPesquisastatus: TWideStringField;
    cdsPesquisanome: TWideStringField;
    cdsPesquisadocumento: TWideStringField;
    cdsPesquisatelefone: TWideStringField;
    cdsPesquisacelular: TWideStringField;
    cdsPesquisarazao: TWideStringField;
    cdsPesquisacnpj: TWideStringField;
    cdsPesquisatel: TWideStringField;
    cdsPesquisatel2: TWideStringField;
    DBGridEhControleCheque: TDBGridEh;
    cdsPesquisaStatusCalc: TStringField;
    cdsPesquisaMarcado: TBooleanField;
    BitBtn5: TBitBtn;
    LabeledEditTotal: TLabeledEdit;
    BitBtn6: TBitBtn;
    cdsPesquisaMarcadoCalc: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edClienteKeyPress(Sender: TObject; var Key: Char);
    procedure cbDataChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdsPesquisaCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure dsPesquisaDataChange(Sender: TObject; Field: TField);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGridEhControleChequeCellClick(Column: TColumnEh);
    procedure BitBtn6Click(Sender: TObject);
  private
    Sql : String;
    procedure ControleRepassar(b: Boolean);
    procedure SomaMarcados;



    { Private declarations }
  public
    { Public declarations }
    CodLoc, IDConta : Integer;
    procedure Filtrar;
  end;

var
  FormControlaCheque: TFormControlaCheque;

implementation

uses FuncoesGerais, FuncoesGlobais, uSelCliente, ualteracheque, uDM;

{$R *.dfm}

procedure TFormControlaCheque.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if not self.Permissao.Alterar then begin
    AcessoNegado(Negado_alterar);
    Exit;
  end;

  if LabeledEditTotal.Visible then begin
    Informa('Antes de alterar os cheques você deve concluir a opção de repassar.');
    Exit;
  end;


  if cdsPesquisaidtbcheque.AsInteger > 0 then
  begin
    try
      Application.CreateForm(TFormAlteraCheque,FormAlteraCheque);
      FormAlteraCheque.Permissao := self.Permissao;
      FormAlteraCheque.idCheque := cdsPesquisaidtbcheque.AsInteger;
      FormAlteraCheque.ShowModal;
      cdsPesquisa.Refresh;
    finally
      FreeAndNil(FormAlteraCheque);
    end;
  end
  else
  begin
    Informa('Nenhum cheque selecionado.');
  end;
end;

procedure TFormControlaCheque.BitBtn4Click(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFormControlaCheque.ControleRepassar(b : Boolean);
begin
  DBGridEhControleCheque.Columns[0].Visible := b;
  LabeledEditTotal.Visible := b;
  pnSelecionar.Visible := b;
end;

procedure TFormControlaCheque.BitBtn5Click(Sender: TObject);
begin
  inherited;
  if BitBtn5.Caption <> 'Cancelar' then
  begin
    ControleRepassar(True);
    BitBtn5.Caption := 'Cancelar';
  end
  else begin
    ControleRepassar(False);
    BitBtn5.Caption := 'Repassar';
  end;
end;

procedure TFormControlaCheque.BitBtn6Click(Sender: TObject);
var
  idFornecedor, idOld : Integer;
  Razao : string;
begin
  inherited;
  idFornecedor := fLocalizar(3,Razao);
  if (idFornecedor > 0) and
    (Pergunta('Deseja realmente repassar os cheque selecionados para o fornecedor:'+#13+
               Razao) = id_yes) then
  begin
     idOld := cdsPesquisaidtbcheque.AsInteger;
     cdsPesquisa.DisableControls;
     try
       cdsPesquisa.First;
       try
         DM.ZConnection.StartTransaction;
         DM.ZSQLScript.Script.Clear;
         while not cdsPesquisa.Eof do
         begin
            if cdsPesquisaMarcado.Value then begin
                DM.ZSQLScript.Script.Add('update tbcheque set idfornecedor = '+IntToStr(idFornecedor)+
                  ', status = '+QuotedStr(cheque_repassado)+
                  ' where idtbcheque = '+IntToStr(cdsPesquisaidtbcheque.AsInteger)+';');
            end;
           cdsPesquisa.Next;
         end;
         if dm.ZSQLScript.Script.Count > 0 then
           DM.ZSQLScript.Execute;

         DM.ZConnection.Commit;
       except
         Informa('Erro ao concluir operação');
         DM.ZConnection.Rollback;
       end;
     finally
       cdsPesquisa.Refresh;
       cdsPesquisa.Locate('idtbcheque',idOld,[]);
       cdsPesquisa.EnableControls;
     end;


  end;

end;

procedure TFormControlaCheque.btnBuscarClick(Sender: TObject);
var
  desc : string;
  FSelCliente : TFormSelCliente;
begin
  inherited;
  if RadioGroup1.ItemIndex = 1 then
  begin
    CodLoc := fLocalizar(3,desc);
    if CodLoc > 0 then
      edCliente.Text := desc;
  end
  else begin
    try
      FSelCliente := TFormSelCliente.Create(nil);
      FSelCliente.Permissao := RetornaPermissao(3);
      FSelCliente.Localizando := True;


      if FSelCliente.Permissao.Visualizar then begin
        if (FSelCliente.ShowModal = mrOK) and (FSelCliente.CodLocalizado > 0) then
        begin
          CodLoc := FSelCliente.CodLocalizado;
          edCliente.Text := FSelCliente.cdsPesquisanome.AsString;
        end;
      end
      else
        AcessoNegado(Negado_visualizar);

    finally
      FreeAndNil(FSelCliente);
    end;
  end;
end;

procedure TFormControlaCheque.cbDataChange(Sender: TObject);
begin
  inherited;
  DateEdit1.Enabled := cbData.ItemIndex > 0;
  DateEdit2.Enabled := DateEdit1.Enabled;

end;

procedure TFormControlaCheque.cdsPesquisaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsPesquisastatus.AsString <> '' then
    case cdsPesquisastatus.Value[1] of
      cheque_pendente : cdsPesquisaStatusCalc.Value := 'Pendente';
      cheque_compensado : cdsPesquisaStatusCalc.Value := 'Compensado';
      cheque_repassado : cdsPesquisaStatusCalc.Value := 'Repassado';
      cheque_devolvido : cdsPesquisaStatusCalc.Value := 'Devolvido';
    end;
  if cdsPesquisaMarcado.Value then
    cdsPesquisaMarcadoCalc.Value := True
  else
    cdsPesquisaMarcadoCalc.Value := False;
end;

procedure TFormControlaCheque.SomaMarcados;
var
  idOld : Integer;
  Soma : Currency;
begin
   cdsPesquisa.DisableControls;
   idOld := cdsPesquisaidtbcheque.AsInteger;
   Soma := 0;
   try
     cdsPesquisa.First;
     while not cdsPesquisa.Eof do
     begin
        if cdsPesquisaMarcado.Value then
          Soma := Soma + cdsPesquisavalor.AsCurrency;

       cdsPesquisa.Next;
     end;
   finally
     cdsPesquisa.Locate('idtbcheque',idOld,[]);
     cdsPesquisa.EnableControls;
   end;
   LabeledEditTotal.Text := FormataCurrency(Soma);
end;

procedure TFormControlaCheque.DBGridEhControleChequeCellClick(
  Column: TColumnEh);
begin
  inherited;
  if lowerCase(Column.FieldName) = 'marcadocalc' then
  begin
    if cdsPesquisastatus.Value = cheque_pendente then
    begin
      cdsPesquisa.Edit;
      cdsPesquisaMarcado.Value := not cdsPesquisaMarcado.Value;
      cdsPesquisa.Post;
      SomaMarcados;
    end
    else
      Informa('Para repassar um cheque o mesmo deve estar pendente.');

  end;

end;

procedure TFormControlaCheque.dsPesquisaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  BitBtn1.Enabled := cdsPesquisa.Active and (cdsPesquisaidtbcheque.AsInteger > 0);
end;

procedure TFormControlaCheque.edClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = VK_DELETE) or (key = vk_back) then
  begin
    edCliente.Clear;
    CodLoc := 0;
  end;
end;

procedure TFormControlaCheque.edClienteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    Filtrar;
end;

procedure TFormControlaCheque.Filtrar;
var
  filtro, aux : string;
begin
  if CodLoc > 0 then
  begin
    case RadioGroup1.ItemIndex of
      0 : filtro := filtro + ' and c.idcliente = '+IntToStr(CodLoc);
      1 : filtro := filtro + ' and c.idfornecedor = '+IntToStr(CodLoc);
    end;
  end;

  if edDocumento.Text <> '' then
    filtro := filtro + ' and ((c.documento = '+QuotedStr(ApenasNumerosStr(edDocumento.Text))+
      ') or (f.cnpj = '+QuotedStr(ApenasNumerosStr(edDocumento.Text))+'))';

   if edNumcheque.Text <> '' then
     filtro := filtro + ' and c.numcheque = '+QuotedStr(edNumcheque.Text);

   if cbStatus.ItemIndex > 0 then
   begin
      { Todos
    Compensados
    Pendentes
    Devolvidos
    Repassados }
     case cbStatus.ItemIndex of
       1 : aux := cheque_compensado;
       2 : aux := cheque_pendente;
       3 : aux := cheque_devolvido;
       4 : aux := cheque_repassado;
     end;
     filtro := filtro + ' and c.status = '+QuotedStr(aux);
   end;

    if cbData.ItemIndex > 0 then
    begin
      if cbData.ItemIndex = 1 then
        aux := 'c.data_vencimento'
      else
        aux := 'c.data_lancamento';

      if (DateEdit1.Date > 0) and (DateEdit2.Date >= DateEdit1.Date) then
      begin
        filtro := filtro + ' and '+aux+' between '+MySqlData(DateEdit1.Date)+' and '+MySqlData(DateEdit2.Date);
      end;
    end;

    if IDConta > 0 then
    begin
      filtro := filtro + ' and cc.idconta = '+ IntToStr(IDConta);
    end;

   cdsPesquisa.Close;
   cdsPesquisa.CommandText := Sql + filtro;
   cdsPesquisa.Open;

end;

procedure TFormControlaCheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsPesquisa.Close;
  qrPesquisa.Close;
end;

procedure TFormControlaCheque.FormCreate(Sender: TObject);
begin
  inherited;
  self.Height := Screen.Height - 120;
  Sql := qrPesquisa.SQL.Text;
  CodLoc := 0;
  RestoreColumnsLayout(DBGridEhControleCheque);
  IDConta := 0;
end;

procedure TFormControlaCheque.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColumnsLayout(DBGridEhControleCheque);
end;

procedure TFormControlaCheque.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  CodLoc := 0;
  edCliente.Clear;
end;

end.

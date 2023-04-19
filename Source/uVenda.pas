unit uVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, ActnList, DBGridEhGrouping, ComCtrls,
  GridsEh, DBGridEh, StdCtrls, jpeg, ExtCtrls, ToolWin, ImgList, Buttons,
  Mask, DBCtrls, DB, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, sSkinProvider, FuncoesGlobais, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh, System.Actions;

type
  TFormVenda = class(TFormClone_TelaPadrao)
    Panel1: TPanel;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    cdsVenda: TZQuery;
    cdsItemVenda: TZQuery;
    cdsVendaidvenda: TIntegerField;
    cdsVendadatahora: TDateTimeField;
    cdsVendausuario: TIntegerField;
    cdsVendatotal_venda: TFloatField;
    cdsVendaaberta: TWideStringField;
    cdsVendacodcliente: TIntegerField;
    ZUpdateItem: TZUpdateSQL;
    dsVenda: TDataSource;
    cdsItemVendaidvenda: TIntegerField;
    cdsItemVendaidproduto: TIntegerField;
    cdsItemVendaqtde: TIntegerField;
    cdsItemVendapreco: TFloatField;
    cdsItemVendacodbarras: TWideStringField;
    cdsItemVendadescricao: TWideStringField;
    cdsItemVendaValorTotal: TCurrencyField;
    cdsPesCliente: TZQuery;
    cdsVendatipo: TWideStringField;
    cdsVendadescTipo: TStringField;
    actFinalizar: TAction;
    Panel2: TPanel;
    Panel3: TPanel;
    lbRazao: TLabel;
    lbCnpj: TLabel;
    lbData: TLabel;
    lbHora: TLabel;
    sSkinProvider1: TsSkinProvider;
    actIniciar: TAction;
    actCancelar: TAction;
    actOrçamento: TAction;
    actCliente: TAction;
    pnTipo: TPanel;
    DBGridEh1: TDBGridEh;
    cdsPesProd: TZQuery;
    cdsItemVendadesconto: TFloatField;
    dsItemVenda: TDataSource;
    pnRight: TPanel;
    Panel4: TPanel;
    Label6: TLabel;
    Panel5: TPanel;
    Label7: TLabel;
    Panel6: TPanel;
    Label8: TLabel;
    Panel7: TPanel;
    Label9: TLabel;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    btnCliente: TBitBtn;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    edQuantidade: TEdit;
    Label1: TLabel;
    edProduto: TEdit;
    btnProduto: TBitBtn;
    Panel9: TPanel;
    btnIniciar: TBitBtn;
    btnFinalizar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSemcliente: TBitBtn;
    btnAlterar: TBitBtn;
    edCliente: TEdit;
    TimerHora: TTimer;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label5: TLabel;
    DBText6: TDBText;
    Label14: TLabel;
    DBText7: TDBText;
    cdsPesClientecodcliente: TIntegerField;
    cdsPesClientenome: TWideStringField;
    cdsPesClientedocumento: TWideStringField;
    cdsPesClienteendereco: TWideStringField;
    cdsPesClientebairro: TWideStringField;
    cdsPesClientecidade: TWideStringField;
    cdsPesClientetelefone: TWideStringField;
    cdsPesClientecelular: TWideStringField;
    cdsPesClienteemail: TWideStringField;
    dsCliente: TDataSource;
    Label20: TLabel;
    DBText8: TDBText;
    actSemCliente: TAction;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    cdsItemVendasubtotal: TCurrencyField;
    DBText12: TDBText;
    DBText13: TDBText;
    cdsItemVendadescontoper: TFloatField;
    cdsItemVendaiditem: TIntegerField;
    btnRemover: TBitBtn;
    actAlterar: TAction;
    actRemoverItem: TAction;
    cdsConta: TZQuery;
    cdsContaidconta: TIntegerField;
    cdsContadata_lancamento: TDateField;
    cdsContadata_vencimento: TDateField;
    cdsContadata_pagamento: TDateField;
    cdsContavalor: TFloatField;
    cdsContadesconto: TFloatField;
    cdsContaacrescimo: TFloatField;
    cdsContaforma_pagamento: TWideStringField;
    cdsContaidcliente: TIntegerField;
    cdsContaidvenda: TIntegerField;
    cdsContaidfornecedor: TIntegerField;
    cdsContadescricao: TWideStringField;
    cdsContaobs: TWideStringField;
    cdsContaparcela: TWideStringField;
    cdsContatipo: TWideStringField;
    cdsContausuario_cadastro: TIntegerField;
    cdsContausuario_pagamento: TIntegerField;
    cdsContaidconta_grupo: TIntegerField;
    cdsVendadesconto: TFloatField;
    cdsVendaacrescimo: TFloatField;
    cdsVendaforma_pagamento: TWideStringField;
    cdsVendatotal_pagar: TCurrencyField;
    cdsVendasaldo_desconto: TCurrencyField;
    actSelProduto: TAction;
    cdsVendavalidade: TDateField;
    cdsVendaobs: TWideStringField;
    cdsContaidcartao: TIntegerField;
    edDesc: TLabeledEdit;
    cdsContanumcheque: TWideStringField;
    cdsContabanco: TWideStringField;
    cdsContaagencia: TWideStringField;
    cdsContaconta: TWideStringField;
    cdsContaidgrupoconta: TIntegerField;
    cdsContavalor_pago: TFloatField;
    btnOrcamento: TBitBtn;
    actOrcamento: TAction;
    dbGridSel: TDBGridEh;
    qrSel: TZQuery;
    dsSel: TDataSource;
    qrSelcodbarras: TWideStringField;
    qrSeldescricao: TWideStringField;
    qrSelvalor_varejo: TFloatField;
    qrSelest_atual: TIntegerField;
    qrSelidproduto: TIntegerField;
    qrSelvalor_custo: TFloatField;
    edPreco: TEdit;
    Label10: TLabel;
    qrPrecoCliente: TZQuery;
    DBGridEh2: TDBGridEh;
    gridCliente: TDBGridEh;
    DBGridEh4: TDBGridEh;
    qrSelCliente: TZQuery;
    dsSelCliente: TDataSource;
    qrSelClientecodcliente: TIntegerField;
    qrSelClientenome: TWideStringField;
    qrSelClientedocumento: TWideStringField;
    qrSelClienteendereco: TWideStringField;
    qrSelClientebairro: TWideStringField;
    qrSelClientecidade: TWideStringField;
    qrSelClientetelefone: TWideStringField;
    qrSelClientecelular: TWideStringField;
    qrSelClienteemail: TWideStringField;
    qrSeltabela: TWideStringField;
    cdsItemVendaidkit: TIntegerField;
    cdsItemVendacodbarraskit: TWideStringField;
    cdsItemVendadesckit: TWideStringField;
    cdsItemVendaDescCalc: TStringField;
    cdsItemVendaBarrasCalc: TStringField;
    cdsContatipo_cheque: TWideStringField;
    cdsContadocumento_terceiro: TWideStringField;
    cdsItemVendapreco_custo: TFloatField;
    cdsVendakilometragem: TIntegerField;
    lbkilometragem: TLabel;
    edKilometragem: TDBEdit;
    procedure actFecharExecute(Sender: TObject);
    procedure cdsVendaCalcFields(DataSet: TDataSet);
    procedure actFinalizarExecute(Sender: TObject);
    procedure sSkinProvider1SkinItem(Item: TComponent;
      var CanBeAdded: Boolean; var SkinSection: string);
    procedure actIniciarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure TimerHoraTimer(Sender: TObject);
    procedure edClienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure actClienteExecute(Sender: TObject);
    procedure actSemClienteExecute(Sender: TObject);
    procedure cdsItemVendaCalcFields(DataSet: TDataSet);
    procedure dsItemVendaDataChange(Sender: TObject; Field: TField);
    procedure dsVendaDataChange(Sender: TObject; Field: TField);
    procedure actAlterarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actRemoverItemExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSelProdutoExecute(Sender: TObject);
    procedure actOrcamentoExecute(Sender: TObject);
    procedure edProdutoChange(Sender: TObject);
    procedure edProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure dbGridSelDblClick(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure qrSelFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure qrSelClienteFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edProdutoExit(Sender: TObject);
    procedure edClienteExit(Sender: TObject);
    procedure qrSelClientedocumentoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    sqlCliente : String;
    sqlProduto, sqlKit,
    DescMovimento : String;
    CodOrcamento : Integer;

    procedure CancelaVenda;
    procedure FinalizaVenda;

    procedure LockControls(Estado : Boolean);
    function  SelecionaProduto: String;
    procedure pSelecionaCliente(CampoLocalizar : Integer = 0);
    function AtualizaTotalVenda: Currency;
    procedure ShowGrid(Exibir : Boolean = True);
    function getValorClinte(IDProduto, CodCliente : Integer): Currency;
    procedure ShowGridCliente(Exibir: Boolean = True);
    { Private declarations }
  public
    { Public declarations }

    function  VendaEmAndamento: boolean;
    function  IniciaVenda : Boolean;
    function  LocalizarProduto(Barras: String; id: Integer; Tipo : TTipoItem): Boolean;
    procedure InsereItem(ValorItem : Currency; pQtde : Integer);
    procedure SetSqlCliente(Filtro: string);

  end;

var
  FormVenda     : TFormVenda;

implementation

uses uDM, uLocalizar, uNovaVenda, uSelProduto, uCadProduto,
  uSelCliente, uCadCliente, uAlteraitem, uFinalizaVenda, uSelecionaVendas, FuncoesGerais, uSelKit,
  uRelatorios;

{$R *.dfm}

procedure TFormVenda.sSkinProvider1SkinItem(Item: TComponent;
  var CanBeAdded: Boolean; var SkinSection: string);
begin
  inherited;
  if Item.Tag = 1 then
    CanBeAdded := False;
end;

procedure TFormVenda.TimerHoraTimer(Sender: TObject);
begin
  inherited;
  lbHora.Caption := FormatDateTime('hh:nn:ss',Now);
end;

procedure TFormVenda.FinalizaVenda;
var
   CodVenda : Integer;
   Erro : Boolean;
   FFinalizaVenda : TFormFinalizaVenda;
   i : Integer;
   DadosCaixa : TCaixa;
   idCheque, idConta : Integer;
begin
  if not VendaEmAndamento then Exit;
  edProduto.Clear;
  edQuantidade.Text := '1';
  edPreco.Clear;

  FFinalizaVenda := TFormFinalizaVenda.Create(nil);
  FFinalizaVenda.dsvenda.DataSet := self.cdsVenda;
  FFinalizaVenda.Tag := self.Tag;
  FFinalizaVenda.FormParent := Self;
  try
     CodVenda := 0;
     Erro := False;
     AtualizaTotalVenda;

     if cdsVenda.State in [dsEdit,dsInsert] then
       cdsVenda.Post;

     if FFinalizaVenda.ShowModal <> mrOK then
     begin
       if Assigned(FFinalizaVenda) then
         FreeAndNil(FFinalizaVenda);
       Exit; //se cancelou o pagamento não cancela a venda
     end;

    if not DM.cdsContaCheque.Active then DM.cdsContaCheque.Open else DM.cdsContaCheque.Refresh;
    if not cdsConta.Active then cdsConta.Open else cdsConta.Refresh;
    if not DM.cdscheque.Active then DM.cdsCheque.Open else DM.cdsCheque.Refresh;

    DM.ZConnection.StartTransaction;

    if not Erro then begin //pagamento

       if (FFinalizaVenda.memConta.RecordCount <= 0) and (self.Tag = tag_venda) then
         Erro := True;

       if not Erro then //grava o movimento referente ao pagamento
       begin
         cdsVenda.Edit;
         cdsVendaforma_pagamento.Value := FFinalizaVenda.FormaPagamento;

         if self.Tag = tag_orcamento then
         begin
           cdsVendaobs.Value := FFinalizaVenda.mmObs.Text;
           cdsVendavalidade.AsDateTime := FFinalizaVenda.DateEditOrcamento.Date;
         end;

         cdsVenda.Post;

         if cdsVenda.UpdatesPending then
           cdsVenda.ApplyUpdates;

         CodVenda := cdsVendaidvenda.AsInteger;
         cdsVenda.Params.ParamByName('pidvenda').Value := CodVenda; //para um caso de refresh

         if self.Tag = tag_venda then
         begin
           with FFinalizaVenda do begin
             i := 0;
             memConta.First;
             while not memConta.Eof do
             begin
               inc(i);
               cdsConta.Insert;
               cdsContadata_lancamento.AsDateTime := Date;
               cdsContadata_vencimento.AsDateTime := memContadata_vencimento.AsDateTime;
               cdsContadata_pagamento.AsVariant   := memContadata_pagamento.AsVariant;
               cdsContavalor.AsCurrency := memContavalor.AsCurrency;
               cdsContaforma_pagamento.Value := memContaforma_pagamento.Value;
               cdsContaparcela.Value := IntToStr(i) + ' de '+IntToStr(memConta.RecordCount);
               cdsContaidvenda.Value := CodVenda;
               cdsContadescricao.Value := 'Venda ['+IntToStr(CodVenda)+']';
               cdsContatipo.Value := _Credito; //receita
               cdsContausuario_cadastro.Value := mCodigoUsuario;
               if cdsContadata_pagamento.AsDateTime > 0 then begin
                 cdsContausuario_pagamento.Value := mCodigoUsuario;
                 cdsContavalor_pago.AsCurrency := cdsContavalor.AsCurrency;
               end;

               cdsContaidconta_grupo.AsInteger := CodVenda;
               cdsContaidcartao.AsVariant := memContaidcartao.AsVariant;
               if cdsVendacodcliente.AsInteger > 0 then
                 cdsContaidcliente.AsInteger := cdsVendacodcliente.AsInteger;
               cdsContaidgrupoconta.Value := 1; //VENDA DE PRODUTOS
               cdsConta.Post;
               cdsConta.ApplyUpdates;
               idConta := cdsContaidconta.AsInteger;

               //dados de pagamento em cheque
               if memContaforma_pagamento.Value = fpg_cheque then
               begin

                 with DM do begin
                   Erro := Erro or (not GravaCheques(FFinalizaVenda, idConta, cdsVendacodcliente.AsInteger));

                 end;
               end;



               memConta.Next;
             end;

             if cdsConta.UpdatesPending then
               cdsConta.ApplyUpdates;

           end;
         end;

       end;

       //caixa
       if (not Erro) and (self.Tag = tag_venda) then
       begin
         //**** insere o movimento no caixa *********
         DadosCaixa.idvenda   := CodVenda;
         DadosCaixa.tipo      := _Credito;
         DadosCaixa.descricao := 'Venda ['+IntToStr(CodVenda)+']';
         if cdsVendacodcliente.AsInteger > 0 then
           DadosCaixa.descricao := DadosCaixa.descricao + ' ('+cdsPesClientenome.AsString+')';

         Erro := not DM.MovimentaCaixa(FFinalizaVenda,DadosCaixa);

       end;

       if Assigned(FFinalizaVenda) then
         FreeAndNil(FFinalizaVenda);
    end;

    if not Erro then
    begin
       if (cdsItemVendaidvenda.AsInteger = 0) or (cdsItemVendaidvenda.AsInteger <> CodVenda) then
       begin
         try
           cdsItemVenda.DisableControls;
           cdsItemVenda.First;
           while not cdsItemVenda.Eof do begin
             cdsItemVenda.Edit;
             cdsItemVendaidvenda.Value := CodVenda;
             cdsItemVenda.Post;

              cdsItemVenda.Next;
           end;
         finally
           cdsItemVenda.First;
           cdsItemVenda.EnableControls;
         end;

       end;

       if cdsItemVenda.UpdatesPending then
          cdsItemVenda.ApplyUpdates;

       if not Erro then begin
         DM.ZConnection.Commit;
         if not DM.cdsConfigs.Active then DM.cdsConfigs.Open;
         
         if DM.cdsConfigsimprime_recibo.AsString <> 'T' then
           Informa(DescMovimento+ ' finalizada com sucesso!')
         else begin
           if Pergunta(DescMovimento+ ' finalizada com sucesso!'+#13+
                       'Deseja imprimir o recibo da venda?',MB_YESNO+MB_ICONQUESTION) = ID_yes then
           begin
              with FormRelatorios do begin
                qrVendaRecibo.Close;
                qrVendaRecibo.Params.ParamByName('pidvenda').Value := CodVenda;
                qrVendaRecibo.Open;

                if DM.cdsConfigsnum_copias.AsInteger <= 1 then
                  rpReciboA4.PrinterSetup.Copies := 1
                else
                  rpReciboA4.PrinterSetup.Copies := DM.cdsConfigsnum_copias.AsInteger;
                if DM.cdsConfigsimprime_sem_visualizar.AsString = 'T' then
                begin
                  rpReciboA4.ShowPrintDialog := False;
                  rpReciboA4.DeviceType := 'Printer';
                  rpReciboA4.Print;
                end
                else begin
                  rpReciboA4.ShowPrintDialog := True;
                  rpReciboA4.DeviceType := 'Screen';
                  rpReciboA4.Print;
                end;

              end;
           end;
         end;

       end;

    end;
  except
    on E: Exception do begin
      Informa('Erro ao finalizar '+DescMovimento+'.');
      Erro := True;
    end;
  end;

  if Erro then
    DM.ZConnection.Rollback;

   cdsVenda.Close;
   cdsItemVenda.Close;
   cdsPesCliente.Close;
   DM.memcheque.EmptyDataSet;
   LockControls(VendaEmAndamento);
   StatusBar1.Panels[0].Text := '';
   StatusBar1.Panels[1].Text := '';
   if btnIniciar.Enabled then
     btnIniciar.SetFocus;

   CodOrcamento := 0;
   if IsModal(Self) then
     ModalResult := mrOk;
end;

procedure TFormVenda.FormCreate(Sender: TObject);
begin
  inherited;
  sqlCliente := 'select codcliente, nome, documento, endereco, bairro, '+
                'concat(cidade, '+QuotedStr('-')+', uf) as cidade, telefone, celular, email from tbcliente ';

  sqlProduto := 'select idproduto, codbarras, descricao, valor_custo, valor_varejo, '+
    'controla_estoque, est_atual, '+QuotedStr('tbproduto') +' as tabela from tbproduto ';


  sqlKit := 'select idkit as idproduto, codbarras, descricao, valor_custo, valor_varejo, '+
    QuotedStr('T')+' as controla_estoque, null as est_atual, '+QuotedStr('tbkit') +' as tabela from tbkit ';

  edKilometragem.Visible := LiberaVeiculos;
  lbkilometragem.Visible := LiberaVeiculos;

end;

procedure TFormVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  try
   if dbGridSel.Visible or gridCliente.Visible then Exit;

    if ((key = VK_UP) or (Key = VK_DOWN)) and (cdsItemVenda.Active) and (cdsItemVenda.RecordCount > 0) and (cdsItemVenda.State in [dsBrowse]) then
       NavegaRegistros(cdsItemVenda,Key);
  except
  end;
end;

procedure TFormVenda.FormShow(Sender: TObject);
begin
  inherited;
  LockControls(VendaEmAndamento);
  lbData.Caption := 'Hoje: '+FormatDateTime('dddd, dd "de" mmmm "de" yyyy',Date);
  TimerHoraTimer(nil);
  if not DM.cdsConfigs.Active then dm.cdsConfigs.Open;

  lbRazao.Caption := DM.cdsConfigsrazaosocial.AsString;
  lbCnpj.Caption := DM.cdsConfigscnpj.AsString;

  if btnIniciar.CanFocus then
    btnIniciar.SetFocus;

  if self.Tag = tag_venda then begin
    pnTipo.Caption := 'Venda';
    DescMovimento  := 'Venda';
  end
  else begin
    pnTipo.Caption := 'Orçamento';
    DescMovimento  := 'Orçamento';
  end;
  Application.ProcessMessages;

  StatusBar1.Panels[2].Text := 'Usuário: '+mNomeUsuario;
end;

procedure TFormVenda.actAlterarExecute(Sender: TObject);
var
  FAlteraItem : TFormAlteraItem;
begin
  inherited;
  if not VendaEmAndamento then exit;
  if cdsItemVendaiditem.AsInteger = 0 then
  begin
    Informa('Nenhum item selecionado.');
    Exit;
  end;

  try
    FAlteraItem := TFormAlteraItem.Create(nil);
    FAlteraItem.dsitem.DataSet := self.cdsItemVenda;
    if FAlteraItem.ShowModal = mrOK then
    begin
      if cdsItemVenda.State in [dsEdit] then
      begin
        cdsItemVenda.Post;
        AtualizaTotalVenda;
      end;


    end;
  finally
    FreeAndNil(FormAlteraItem);
  end;

end;

procedure TFormVenda.actCancelarExecute(Sender: TObject);
begin
  inherited;
  CancelaVenda;
end;

procedure TFormVenda.actClienteExecute(Sender: TObject);
begin
  inherited;
  pSelecionaCliente;
end;

procedure TFormVenda.actFecharExecute(Sender: TObject);
begin
   CancelaVenda;
end;

procedure TFormVenda.actFinalizarExecute(Sender: TObject);
begin
  inherited;
  FinalizaVenda;
end;

procedure TFormVenda.actIniciarExecute(Sender: TObject);
begin
  inherited;
  if not VendaEmAndamento then
    IniciaVenda;
end;

procedure TFormVenda.actOrcamentoExecute(Sender: TObject);
var
  idItem : Integer;
  msgQtde : String;
begin
  inherited;
  Exit;
  if not VendaEmAndamento then
  begin
    Informa('Nenhuma '+DescMovimento+' em andamento.');
    Exit;
  end;

  try
    Application.CreateForm(TFormSelecionaVenda,FormSelecionaVenda);
    FormSelecionaVenda.Tag := 1;
    FormSelecionaVenda.Permissao := self.Permissao;
    if (FormSelecionaVenda.ShowModal = mrOK) and (FormSelecionaVenda.qrPesVendaidvenda.AsInteger > 0) then
    begin
      CodOrcamento := FormSelecionaVenda.qrPesVendaidvenda.AsInteger;

      if self.Tag = tag_venda then
      begin
        with FormSelecionaVenda do begin
          cdsVenda.Edit;
          cdsVendacodcliente.AsVariant := qrPesVendacodcliente.AsVariant;
          cdsVendadesconto.AsVariant := qrPesVendadesconto.AsVariant;
          cdsVendaacrescimo.AsVariant := qrPesVendaacrescimo.AsVariant;
          cdsVenda.Post;

          SetSqlCliente('codcliente = '+IntToStr(cdsVendacodcliente.AsInteger));
        end;

        cdsItemVenda.Last;
        idItem := cdsItemVendaiditem.AsInteger + 1;
        with DM do begin
          qrItensVenda.Close;
          qrItensVenda.Params.ParamByName('pidvenda').Value := FormSelecionaVenda.qrPesVendaidvenda.AsInteger;
          qrItensVenda.Open;
          qrItensVenda.First;
          while not qrItensVenda.eof do
          begin
            try
              //verifica a quantidade disponível
              cdsItemVenda.Insert;
              cdsItemVendaidvenda.Value   := cdsVendaidvenda.Value;
              cdsItemVendaidproduto.Value := qrItensVendaidproduto.AsInteger;
              cdsItemVendaiditem.AsInteger:= idItem;
              if (qrItensVendacontrola_estoque.AsString <> 'T') or
                 (qrItensVendaest_atual.AsInteger >= qrItensVendaqtde.AsInteger) then
                cdsItemVendaqtde.Value      := qrItensVendaqtde.AsInteger
              else begin
                msgQtde := msgQtde + 'Produto: '+qrItensVendadescricao.AsString +
                 ' Disponível: '+qrItensVendaest_atual.AsString+' Solicitado: '+qrItensVendaqtde.AsString+'.' + #13;
                cdsItemVendaqtde.AsInteger := qrItensVendaest_atual.AsInteger;
              end;
              cdsItemVendapreco.Value     := qrItensVendapreco.AsCurrency;
              cdsItemVendacodbarras.Value := qrItensVendacodbarras.Value;
              cdsItemVendadescricao.Value := qrItensVendadescricao.Value;
              cdsItemVendadesconto.Value  := qrItensVendadesconto.Value;
              cdsItemVendapreco_custo.Value := cdsItemVendapreco_custo.Value;
              cdsItemVenda.Post;

            except
            end;
            inc(idItem);
            qrItensVenda.Next;
          end;

        end;
      end
      else begin //apenas localiza o orçamento selecionado
        if (cdsItemVenda.RecordCount > 0) then
          if Pergunta('Os itens adicionados serão perdidos.'+#13+
                      'Deseja continuar?') = id_no then
            Exit;

         if cdsVenda.State in [dsEdit,dsInsert] then
           cdsVenda.Cancel;

         cdsVenda.Close;
         cdsVenda.Params.ParamByName('pidvenda').Value := FormSelecionaVenda.qrPesVendaidvenda.AsInteger;
         cdsVenda.Open;

         SetSqlCliente('codcliente = '+IntToStr(cdsVendacodcliente.AsInteger));

         cdsItemVenda.Close;
         cdsItemVenda.Params.ParamByName('pidvenda').Value := FormSelecionaVenda.qrPesVendaidvenda.AsInteger;
         cdsItemVenda.Open;
         cdsItemVenda.IndexFieldNames := 'iditem';
      end;
      AtualizaTotalVenda;
    end;
  finally
    FreeAndNil(FormSelecionaVenda);
  end;
end;

procedure TFormVenda.actRemoverItemExecute(Sender: TObject);
begin
  inherited;
  if VendaEmAndamento and (cdsItemVendaiditem.AsInteger > 0) then
  begin
    if Pergunta('Deseja realmente remover o item:'+#13+
                cdsItemVendaiditem.AsString + ' - '+cdsItemVendadescricao.AsString) = idYes then
    begin
      cdsItemVenda.Delete;
      AtualizaTotalVenda;
    end;
  end;

end;

procedure TFormVenda.actSelProdutoExecute(Sender: TObject);
begin
  inherited;
  SelecionaProduto;
end;

procedure TFormVenda.actSemClienteExecute(Sender: TObject);
begin
  inherited;
  if VendaEmAndamento then
  begin
    cdsVenda.Edit;
    cdsVendacodcliente.AsVariant := null;
    cdsPesCliente.Close;

    if edProduto.CanFocus then
      edProduto.SetFocus;
  end;
end;

procedure TFormVenda.CancelaVenda;
begin
  if VendaEmAndamento then
  begin
    if Pergunta('Deseja realmente cancelar?',MB_YESNO+MB_ICONQUESTION) = id_yes then
    begin
      if cdsItemVenda.UpdatesPending then
        cdsItemVenda.CancelUpdates;

      if cdsVenda.UpdatesPending then
        cdsVenda.CancelUpdates;

       cdsVenda.Close;
       cdsItemVenda.Close;
       LockControls(VendaEmAndamento);
       CodOrcamento := 0;
       edProduto.Clear;
    end;
  end
  else
     Close;
end;

procedure TFormVenda.cdsItemVendaCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsItemVendaValorTotal.AsCurrency := (cdsItemVendaqtde.AsInteger * cdsItemVendapreco.AsCurrency) - cdsItemVendadesconto.AsCurrency;
  cdsItemVendasubtotal.AsCurrency   := cdsItemVendaqtde.AsInteger * cdsItemVendapreco.AsCurrency;
  if cdsItemVendadesconto.AsCurrency > 0 then
    cdsItemVendadescontoper.AsCurrency := (cdsItemVendadesconto.AsCurrency * 100) / cdsItemVendapreco.AsCurrency;

  if cdsItemVendadescricao.AsString <> '' then begin
    cdsItemVendaDescCalc.Value := cdsItemVendadescricao.AsString;
    cdsItemVendaBarrasCalc.Value := cdsItemVendacodbarras.AsString;
  end
  else begin
    cdsItemVendaDescCalc.Value := cdsItemVendadesckit.AsString;
    cdsItemVendaBarrasCalc.Value := cdsItemVendacodbarraskit.AsString;
  end;



end;

procedure TFormVenda.cdsVendaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsVendatipo.Value = 'V' then
    cdsVendadescTipo.Value := 'Venda'
  else
    cdsVendadescTipo.Value := 'Orçamento';

  cdsVendatotal_pagar.AsCurrency := cdsVendatotal_venda.AsCurrency + cdsVendaacrescimo.AsCurrency - cdsVendadesconto.AsCurrency;
  cdsVendasaldo_desconto.AsCurrency := cdsVendaacrescimo.AsCurrency - cdsVendadesconto.AsCurrency;
end;

procedure TFormVenda.dbGridSelDblClick(Sender: TObject);
begin
  inherited;
    if Self.qrSelidproduto.AsInteger > 0 then
    begin
        LocalizarProduto('',self.qrSelidproduto.AsInteger,TipoItem(self.qrSeltabela.AsString));

    end;
end;

procedure TFormVenda.dsItemVendaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (VendaEmAndamento) and (cdsItemVenda.Active) then
    StatusBar1.Panels[0].Text := 'Total de itens: '+IntToStr(cdsItemVenda.RecordCount)
  else
    StatusBar1.Panels[0].Text := '';
end;

procedure TFormVenda.dsVendaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if VendaEmAndamento then
    StatusBar1.Panels[1].Text := DescMovimento + ' em andamento.'
  else
   StatusBar1.Panels[1].Text := '';
end;

function TFormVenda.LocalizarProduto(Barras :String; id :Integer; Tipo : TTipoItem ) :Boolean;
var
  Cancelar : Boolean;
  valorAux : Currency;
begin
  //retorna o cdspesproduto selecionado no produto correto
  if id > 0 then
  begin
    cdsPesProd.Close;
    cdsPesProd.SQL.Clear;
    if Tipo = tProd then
      cdsPesProd.SQL.Add(sqlProduto + ' where idproduto = '+IntToStr(id))
    else
      cdsPesProd.SQL.Add(sqlKit + ' where idkit = '+IntToStr(id));
    cdsPesProd.Open;
  end
  else if Barras <> '' then
  begin
      cdsPesProd.Close;
      cdsPesProd.SQL.Clear;
      if Tipo = tProd then
        cdsPesProd.SQL.Add(sqlProduto + ' where codbarras = '+QuotedStr(Barras))
      else
        cdsPesProd.SQL.Add(sqlKit + ' where codbarras = '+QuotedStr(Barras));
      cdsPesProd.Open;
  end;
  Result := (cdsPesProd.Active) and (cdsPesProd.RecordCount > 0);
  if Result then
  begin
    Cancelar := False;
    if cdsPesProd.RecordCount > 1 then
    begin
      Result := False;
      Informa('O Sistema encontrou mais de um produto utilizando o mesmo código.'+#13+
              'Selecione na lista a seguir o produto correto.');
      if Tipo=tProd then
      begin
        try
          Application.CreateForm(TFormSelPoduto,FormSelPoduto);
          FormSelPoduto.Permissao := RetornaPermissao(6);
          FormSelPoduto.Localizando := True;
          FormSelPoduto.vIndex := 1;
          FormSelPoduto.edPesquisa.Text := Barras;
          if (FormSelPoduto.ShowModal = mrOK) and (FormSelPoduto.CodLocalizado > 0) then
            if not cdsPesProd.Locate('idproduto',FormSelPoduto.CodLocalizado,[]) then
              Cancelar := True
            else
              Result := True;

        finally
          FreeAndNil(FormSelPoduto);
        end;
      end
      else begin
      try
        Application.CreateForm(TFormSelKit,FormSelKit);
        FormSelKit.Permissao := RetornaPermissao(6);
        FormSelKit.Localizando := True;
        FormSelKit.vIndex := 1;
        FormSelKit.edPesquisa.Text := Barras;
        if (FormSelKit.ShowModal = mrOK) and (FormSelKit.CodLocalizado > 0) then
          if not cdsPesProd.Locate('idproduto',FormSelKit.CodLocalizado,[]) then
            Cancelar := True
          else
            Result := True;

      finally
        FreeAndNil(FormSelKit);
      end;
    end;
    end ;


    if not Cancelar then
    begin
      //edProduto.Text   := cdsPesProd.FieldByName('codbarras').AsString;
      edDesc.Text  := cdsPesProd.FieldByName('descricao').AsString;
      //pega o último preço caso tenha cliente selecionado
      valorAux := -1;
      if cdsVendacodcliente.AsInteger > 0 then
         valorAux := getValorClinte(cdsPesProd.FieldByName('idproduto').AsInteger, cdsVendacodcliente.AsInteger);

      if valorAux < 0 then
        valorAux := cdsPesProd.FieldByName('valor_varejo').AsCurrency;
      edPreco.Text := CurrToStr(valorAux);
      if edQuantidade.CanFocus and self.Showing then
        edQuantidade.SetFocus;
      edProduto.Clear;
    end;
  end;

end;

function TFormVenda.getValorClinte (IDProduto, CodCliente : Integer) : Currency;
begin
  try
    Result := -1;

    with qrPrecoCliente do begin
      Close;
      Params.ParamByName('pidproduto').Value := IDProduto;
      Params.ParamByName('pcodcliente').Value := CodCliente;
      Open;

      if FieldByName('codcliente').AsInteger = CodCliente then
        Result := FieldByName('preco').AsCurrency;
      Close;
    end;

  except
    Result := -1;
  end;
end;

function TFormVenda.AtualizaTotalVenda : Currency;
var
  Total : Currency;
begin
  try
    cdsItemVenda.DisableControls;
    cdsItemVenda.First;
    Total := 0;
    while not cdsItemVenda.Eof do
    begin
      Total := Total + ((cdsItemVendaqtde.AsInteger * cdsItemVendapreco.AsCurrency) - cdsItemVendadesconto.AsCurrency);
      cdsItemVenda.Next;
    end;

    Result := Total;
    if VendaEmAndamento then
    begin
      cdsVenda.Edit;
      cdsVendatotal_venda.AsCurrency := Total;
    end;

  finally
    //cdsItemVenda.First;
    cdsItemVenda.EnableControls;
  end;
end;


procedure TFormVenda.InsereItem(ValorItem : Currency; pQtde : Integer);
var
  idItem, TotKit : Integer;
  Cancela : Boolean;
  vTipo : TTipoItem;
begin
  if (cdsPesProd.Active) and (cdsPesProd.FieldByName('idproduto').AsInteger > 0) then
  begin
    Cancela := False;
    vTipo := TipoItem(cdsPesProd.FieldByName('tabela').AsString);

    //checa quantidade
    if vTipo = tProd then
    begin
      if (cdsPesProd.FieldByName('controla_estoque').AsString = sTrue) and
         (StrToIntDef(cdsPesProd.FieldByName('est_atual').AsString,0) - StrToIntDef(edQuantidade.Text, 1) < 0) then
      begin
        Informa('Produto indisponível em estoque.'+#13+
                cdsPesProd.FieldByName('descricao').AsString+#13+
                'Estoque disponível: '+cdsPesProd.FieldByName('est_atual').AsString);
        Cancela := True;
        Exit;
      end;
    end
    else begin
      TotKit := GetEstoqueKit(cdsPesProd.FieldByName('idproduto').AsInteger);
      if (TotKit - StrToIntDef(edQuantidade.Text, 1)) <= 0 then
      begin
        Informa('Produto indisponível em estoque.'+#13+
                cdsPesProd.FieldByName('descricao').AsString+#13+
                'Estoque disponível: '+IntToStr(TotKit));
        Cancela := True;
        Exit;
      end;
    end;

    if (not Cancela) and (ValorItem <= 0) then
      if Pergunta('Produto com valor de venda não informado.' + #13+
                  'Deseja adicioná-lo mesmo assim?',MB_YESNO+MB_ICONQUESTION) = id_no then
        Cancela := True;

    if (not Cancela) and (cdsItemVenda.Locate('idproduto',cdsPesProd.FieldByName('idproduto').AsInteger,[])) then
      if Pergunta('Produto já acionado.'+#13+
                  'Deseja adioná-lo novamente?',MB_YESNO+MB_ICONQUESTION) = idNO then
       Cancela := True;

     if not Cancela then
     begin
        cdsItemVenda.Last;
        idItem := cdsItemVendaiditem.AsInteger + 1;
        cdsItemVenda.Insert;
        cdsItemVendaidvenda.Value := cdsVendaidvenda.Value;
        cdsItemVendaiditem.Value := idItem;
        if vTipo = tProd then begin
          cdsItemVendaidproduto.Value := cdsPesProd.FieldByName('idproduto').AsInteger;
          cdsItemVendacodbarras.Value := cdsPesProd.FieldByName('codbarras').AsString;
          cdsItemVendadescricao.Value := cdsPesProd.FieldByName('descricao').AsString;
        end
        else begin
          cdsItemVendaidkit.Value := cdsPesProd.FieldByName('idproduto').AsInteger;
          cdsItemVendacodbarraskit.Value := cdsPesProd.FieldByName('codbarras').AsString;
          cdsItemVendadesckit.Value := cdsPesProd.FieldByName('descricao').AsString;
        end;
        cdsItemVendapreco_custo.Value := cdsPesProd.FieldByName('valor_custo').AsCurrency;
        cdsItemVendaqtde.Value := pQtde;
        cdsItemVendapreco.Value := ValorItem;

        cdsItemVendadesconto.AsCurrency := 0;
        cdsItemVenda.Post;
     end;
  end;

  edProduto.Clear;
  edQuantidade.Text := '1';
  edDesc.Clear;
  edPreco.Clear;
  if edProduto.CanFocus and self.Showing then
   edProduto.SetFocus;

  AtualizaTotalVenda;

end;


function TFormVenda.SelecionaProduto : String;
begin
  try
    Application.CreateForm(TFormSelPoduto,FormSelPoduto);
    FormSelPoduto.Permissao := RetornaPermissao(6);
    FormSelPoduto.Localizando := True;
    if FormSelPoduto.Permissao.Visualizar then begin
      if (FormSelPoduto.ShowModal = mrOK) and (FormSelPoduto.CodLocalizado > 0) then
      begin
        if LocalizarProduto('',FormSelPoduto.CodLocalizado, tProd) then begin
           if edQuantidade.CanFocus then
             edQuantidade.SetFocus;

        end
        else
          edProduto.SetFocus;

      end;

    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelPoduto);
  end;
end;

procedure TFormVenda.SetSqlCliente(Filtro : string);
begin
  with cdsPesCliente do begin
    Close;
    SQL.Clear;
    SQL.Add(sqlCliente);

    if Filtro <> '' then
      SQL.Add('where '+Filtro)
    else
      SQL.Add('where codcliente = 0');

    Open;

  end;
end;

procedure TFormVenda.pSelecionaCliente(CampoLocalizar : Integer = 0);
var
  FSelCliente : TFormSelCliente;
begin
  if not VendaEmAndamento then Exit;

  try
    FSelCliente := TFormSelCliente.Create(nil);
    FSelCliente.Permissao := RetornaPermissao(3);
    FSelCliente.Localizando := True;
    if CampoLocalizar > 0 then
    begin
      FSelCliente.vIndex := CampoLocalizar;
      FSelCliente.edPesquisa.Text := edCliente.Text;
    end;

    if FSelCliente.Permissao.Visualizar then begin
      if (FSelCliente.ShowModal = mrOK) and (FSelCliente.CodLocalizado > 0) then
      begin
        cdsVenda.Edit;
        cdsVendacodcliente.Value := FSelCliente.CodLocalizado;
        if edProduto.CanFocus then
          edProduto.SetFocus;
        edCliente.Clear;

        SetSqlCliente('codcliente = '+IntToStr(cdsVendacodcliente.AsInteger));

      end;
    end
    else
      AcessoNegado(Negado_visualizar);

  finally
    FreeAndNil(FSelCliente);
  end;
end;


procedure TFormVenda.qrSelClientedocumentoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString <> '' then
  begin
    Text := FormataDocumento(Sender.AsString);
  end;
end;

procedure TFormVenda.qrSelClienteFilterRecord(DataSet: TDataSet; var Accept: Boolean);
var
  ValorFiltro : String;
begin
  inherited;
  if edCliente.Text <> '' then
  begin
    ValorFiltro := LowerCase(RemoveAcento(edCliente.Text));
    Accept := (Pos(ValorFiltro, LowerCase(RemoveAcento(qrSelClientenome.AsString))) > 0) or
              (Pos(ValorFiltro, qrSelClientetelefone.AsString) > 0) or
              (Pos(ValorFiltro, qrSelClientecelular.AsString) > 0) or
              (Pos(ValorFiltro, qrSelClientedocumento.AsString) > 0);
  end
  else
    Accept := False;
end;

procedure TFormVenda.qrSelFilterRecord(DataSet: TDataSet; var Accept: Boolean);
var
  ValorFiltro : String;
begin
  inherited;
  if edProduto.Text <> '' then
  begin
    ValorFiltro := LowerCase(RemoveAcento(edProduto.Text));

    Accept := (pos(ValorFiltro,LowerCase(RemoveAcento(qrSeldescricao.AsString))) > 0) or
              (pos(ValorFiltro,LowerCase(RemoveAcento(qrSelcodbarras.AsString))) > 0);
  end
  else
    Accept := false;


end;

procedure TFormVenda.edClienteChange(Sender: TObject);
var
  sLike : String;
begin
  inherited;
  if (edCliente.Text <> '') and (not qrSelCliente.Active) then
  begin
    sLike := QuotedStr(edCliente.Text+ '%');
    qrSelCliente.SQL.Clear;
    qrSelCliente.SQL.Add(sqlCliente);
    qrSelCliente.SQL.Add('where telefone like '+sLike+' or celular like '+sLike+
      ' or documento like '+sLike+' or nome like _utf8 '+sLike+' collate utf8_unicode_ci');
    qrSelCliente.Open;
  end
  else if edCliente.Text = '' then
     qrSelCliente.Close;

   if qrSelCliente.Active then
     ShowGridCliente
   else
     ShowGridCliente(False);

   qrSelCliente.Filtered := False;
   qrSelCliente.Filtered := True;

end;

procedure TFormVenda.edClienteExit(Sender: TObject);
begin
  inherited;
  ShowGridCliente(False);
  EditExit(Sender);
end;

procedure TFormVenda.edClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  NavegaRegistros(qrSelCliente,Key);
end;

procedure TFormVenda.edClienteKeyPress(Sender: TObject; var Key: Char);
var
  Valor, filtro : String;
  doc : Boolean;
begin
  inherited;
  if key = #13 then
  begin
    if edCliente.Text <> '' then
    begin
       if qrSelClientecodcliente.AsInteger > 0 then
           SetSqlCliente('codcliente = '+qrSelClientecodcliente.AsString)
       else begin
         cdsPesCliente.Close;
         Valor := ApenasNumerosStr(edCliente.Text);

         doc := False;

         if (length(Valor) = 11) or (length(Valor) = 14) then begin //cpf - cnpj
           filtro := 'and documento = '+QuotedStr(Valor);
           doc := True;
         end
         else if (Length(Valor) = 8) or (Length(Valor) = 10) then
          filtro := 'and celular like '+QuotedStr('%'+Valor)+' or telefone like '+QuotedStr('%'+Valor);

          if filtro <> '' then begin
            SetSqlCliente('codcliente > 0 '+filtro);
          end;
       end;

        if (not cdsPesCliente.Active) or (cdsPesCliente.RecordCount = 0) then
        begin
          Informa('Cliente não encontrado.');
          try
            Application.CreateForm(TformCadCliente,formCadCliente);
            formCadCliente.Tag := 1;
            formCadCliente.Permissao := RetornaPermissao(3);
            if formCadCliente.Permissao.Visualizar then
              formCadCliente.ShowModal;
            if formCadCliente.CodCliente > 0 then
              SetSqlCliente('codcliente = '+IntToStr(formCadCliente.CodCliente));
            if cdsPesClientecodcliente.AsInteger > 0 then
              if edKilometragem.CanFocus then
                edKilometragem.SetFocus;
            edCliente.Clear;
          finally
            FreeAndNil(formCadCliente);
          end;
        end
        else begin
          if (cdsPesCliente.RecordCount = 1) and (cdsPesCliente.FieldByName('codcliente').AsInteger > 0) then begin
             cdsVenda.Edit;
             cdsVendacodcliente.Value := cdsPesCliente.FieldByName('codcliente').AsInteger;
             if edKilometragem.CanFocus then
               edKilometragem.SetFocus
             else if edProduto.CanFocus then
                edProduto.SetFocus;
             edCliente.Clear;
          end
          else if (cdsPesCliente.RecordCount > 1) then
          begin
            Informa('Foi encontrado mais de um cliente com os dados informados.'+#13+
                    'Selecione o cliente correto na lista a seguir.');

            if doc then
              pSelecionaCliente(1)
            else
             pSelecionaCliente(2);
          end

        end;


    end
    else begin
       pSelecionaCliente;

    end;

    key := #0;
  end;
end;

procedure TFormVenda.edPrecoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    InsereItem(StrToCurrDef(edPreco.Text,0),StrToIntDef(edQuantidade.Text,1));
    key := #0;
  end
  else
    KeyPressFloat(Key);
end;

procedure TFormVenda.edProdutoChange(Sender: TObject);
var
  auxFiltro, aux : String;
begin
  inherited;
  if (edProduto.Text <> '') and (not qrSel.Active) then
  begin
    qrSel.SQL.Clear;

    auxFiltro := 'where descricao '+
    'like _utf8 ' + QuotedStr(edProduto.Text[1] +'%')+' or '+
    'codbarras like _utf8 '+QuotedStr(edProduto.Text+'%')+' COLLATE utf8_unicode_ci ' ;
    aux := sqlProduto + auxFiltro + ' union '+ sqlKit + auxFiltro;
    qrSel.SQL.Add(aux);
    qrSel.Open;
  end
  else if edProduto.Text = '' then
     qrSel.Close;

   if qrSel.Active then
     ShowGrid
   else
     ShowGrid(False);
   qrSel.Filtered := False;
   qrSel.Filtered := True;


end;

procedure TFormVenda.edProdutoExit(Sender: TObject);
begin
  inherited;
  ShowGrid(False);
  EditExit(Sender);
end;

procedure TFormVenda.edProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  NavegaRegistros(self.qrSel,Key);
end;

procedure TFormVenda.edProdutoKeyPress(Sender: TObject; var Key: Char);
var
  Barras : String;
begin
  inherited;
  if key = #13 then
  begin
    if Self.qrSelidproduto.AsInteger > 0 then
    begin
      LocalizarProduto('',self.qrSelidproduto.AsInteger,TipoItem(self.qrSeltabela.AsString));

    end;
    key := #0;
  end;
end;

procedure TFormVenda.edQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    if edPreco.CanFocus then
      edPreco.SetFocus;

  end
  else
    KeyPressSoNumeros(Key);
end;

procedure TFormVenda.LockControls(Estado : Boolean);
begin
  btnFinalizar.Enabled := Estado;
  btnCancelar.Enabled  := Estado;
  btnCliente.Enabled := Estado;
  edCliente.Enabled := Estado;
  btnAlterar.Enabled := Estado;
  btnSemcliente.Enabled := Estado;
  btnRemover.Enabled := Estado;
  btnOrcamento.Enabled := Estado;

  edProduto.Enabled := Estado;
  edQuantidade.Enabled := Estado;
  btnProduto.Enabled := Estado;
  edKilometragem.Enabled := Estado;
  
  btnIniciar.Enabled := not Estado;
  if edProduto.Enabled and edProduto.CanFocus and self.Showing then
    edProduto.SetFocus;
end;

function TFormVenda.IniciaVenda : Boolean;
begin
  Result := True;
  if (self.Tag = tag_venda) and (not fCaixaAberto(True)) then begin
    Result := False;
    Exit;
  end;


  try
     if not cdsVenda.Active then
     begin
       cdsVenda.Close;
       cdsVenda.Params.ParamByName('pidvenda').Value := Null;
       cdsVenda.Open;
     end;

     if not cdsItemVenda.Active then
     begin
       cdsItemVenda.Close;
       cdsItemVenda.Params.ParamByName('pidvenda').Value := null;
       cdsItemVenda.Open;
       cdsItemVenda.IndexFieldNames := 'iditem';
     end;

     cdsVenda.Insert;
     cdsVendadatahora.AsDateTime := Now;
     cdsVendausuario.Value := mCodigoUsuario;
     if self.Tag = tag_venda then
       cdsVendatipo.Value := 'V'
     else
       cdsVendatipo.Value := 'O';
     cdsVendaaberta.Value := sTrue;
     cdsVenda.Post;

     if VendaEmAndamento then
       LockControls(True);

     if edCliente.CanFocus and self.Showing then
       edCliente.SetFocus;

     CodOrcamento := 0;

  except
    Result := False;
  end;
end;

function TFormVenda.VendaEmAndamento : Boolean;
begin
  Result := cdsVenda.Active and (cdsVenda.RecordCount > 0);
end;

procedure TFormVenda.ShowGrid(Exibir : Boolean = True);
begin
  if Exibir then
  begin
    dbGridSel.Left := 77;
    dbGridSel.Top := GroupBox2.Top + GroupBox2.Height - 5;
    dbGridSel.Visible := True;
  end
  else
    dbGridSel.Visible := False;
end;

procedure TFormVenda.ShowGridCliente(Exibir : Boolean = True);
begin
  if Exibir then
  begin
    gridCliente.Left := 82;
    gridCliente.Top :=204;
    gridCliente.Visible := True;
  end
  else
    gridCliente.Visible := False;
end;





end.

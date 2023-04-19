unit uCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, DBGridEhGrouping, GridsEh, DBGridEh,
  StdCtrls, Mask, rxToolEdit, ExtCtrls, sSkinProvider, DBCtrls, ImgList,
  ComCtrls, ToolWin, DB, Buttons, ActnList;

type
  TFormCaixa = class(TFormClone_TelaPadrao)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    imgtoolbar: TImageList;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    ckHora: TCheckBox;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    ToolButton9: TToolButton;
    dblkusuario: TDBLookupComboBox;
    btnAtualizar: TToolButton;
    ToolButton11: TToolButton;
    dsPesCaixa: TDataSource;
    btnFiltrar: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    Panel5: TPanel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel6: TPanel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Panel7: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Panel8: TPanel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Panel9: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Panel10: TPanel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    sSkinProvider1: TsSkinProvider;
    dsUsuario: TDataSource;
    Panel11: TPanel;
    Panel12: TPanel;
    Label10: TLabel;
    lbValorInicial: TLabel;
    Label9: TLabel;
    lbUsuario: TLabel;
    Label8: TLabel;
    lbAbertura: TLabel;
    ImageList1: TImageList;
    Panel13: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Panel14: TPanel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Panel15: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Panel16: TPanel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure dblkusuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sSkinProvider1SkinItem(Item: TComponent;
      var CanBeAdded: Boolean; var SkinSection: string);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    procedure Filtrar(UsaFiltro :Boolean = False);
    procedure AtualizaSaldo;
    function UltimaAbertura: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCaixa: TFormCaixa;

implementation

uses uDM, FuncoesGlobais, uLancaCaixa, uRelatorios, FuncoesGerais;

{$R *.dfm}

procedure TFormCaixa.MaskEdit1Exit(Sender: TObject);
begin
  inherited;
  try
    StrToTime((Sender as TMaskEdit).Text);
  except
    Informa('Hora inválida.');
    (Sender as TMaskEdit).SetFocus;
  end;
end;

procedure TFormCaixa.sSkinProvider1SkinItem(Item: TComponent;
  var CanBeAdded: Boolean; var SkinSection: string);
begin
  inherited;
  if Item.Tag = 1 then
   CanBeAdded := False;
end;

procedure TFormCaixa.btnAtualizarClick(Sender: TObject);
begin
  inherited;
  Filtrar();
end;

procedure TFormCaixa.btnFiltrarClick(Sender: TObject);
begin
  inherited;
  Filtrar(True);
end;

procedure TFormCaixa.ToolButton1Click(Sender: TObject);
var
  aux :String;
begin
  inherited;
  if not Permissao.Alterar then
  begin
    AcessoNegado(Negado_alterar);
    Exit;
  end;

  if (Sender as TComponent).Tag = 1 then //abertura
  begin
      aux := VerificaCaixaAberto;
      if (aux <> 'F') and (aux <> '')  then
      begin
        Informa('Antes de abrir o caixa o mesmo deve ser fechado.');
        DM.qrComando.Close;

        Exit;
      end;
  end
  else
   if (sender as TComponent).Tag = 0 then
   begin
       if not fCaixaAberto(True) then
        Exit;
   end;

  try
    Application.CreateForm(TFormLancaCaixa, FormLancaCaixa);
    FormLancaCaixa.Tag := (Sender as TComponent).Tag;
    if FormLancaCaixa.Tag = 2 then
    begin
      Filtrar();
      FormLancaCaixa.vSaldo := DM.memSaldoCaixaDinheiroSaldo.AsCurrency;
    end;

    FormLancaCaixa.ShowModal;
  finally
    FreeAndNil(FormLancaCaixa);
  end;

  Filtrar();
  VerificaCaixaAberto;
end;

procedure TFormCaixa.DBEdit2Change(Sender: TObject);

begin
  inherited;
  if TDBEdit(Sender).Field.AsCurrency < 0 then
    TDBEdit(Sender).Font.Color := clRed
  else
    TDBEdit(Sender).Font.Color := clDefault;
end;

procedure TFormCaixa.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if LowerCase(Column.FieldName) = 'tipo' then
  begin
    DBGridEh1.Canvas.FillRect(Rect);
    if (DM.cdsPesCaixatipo.AsString = _Credito) or (DM.cdsPesCaixatipo.AsString = 'A') then
      ImageList1.Draw(DBGridEh1.Canvas,Rect.Left+10,Rect.Top + 2,0)
    else if DM.cdsPesCaixatipo.AsString = _Debito then
      ImageList1.Draw(DBGridEh1.Canvas,Rect.Left+10,Rect.Top + 2,1)
    else if DM.cdsPesCaixatipo.AsString = 'F' then
      ImageList1.Draw(DBGridEh1.Canvas,Rect.Left+10,Rect.Top + 2,3);
  end;


end;

procedure TFormCaixa.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if Odd(dm.cdsPesCaixa.RecNo) then
    Background := clWhite
  else
    Background := ColorGrid;

   if DM.cdsPesCaixa.FieldByName('TIPO').AsString = _Debito then
     AFont.Color := clRed;
end;

procedure TFormCaixa.dblkusuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_delete) or (key = vk_back) then
     (Sender as TDBLookupComboBox).KeyValue := null;
end;

procedure TFormCaixa.Filtrar(UsaFiltro :Boolean = False);
var
  Filtro :String;
begin
  with DM do begin
    if (ckHora.Checked) and (UsaFiltro) then
    begin
      try
       StrToTime(MaskEdit1.Text);
       StrToTime(MaskEdit2.Text);

      except
        Informa('Hora inválida.');
        Exit;
      end;

    end;

    cdsPesCaixa.Close;
    Filtro := 'where id > 0 ';

    if UsaFiltro then
    begin
      if not ckHora.Checked then
        Filtro := filtro + ' and cast(data_hora as date) between '+QuotedStr(FormatDateTime('yyyy-mm-dd',DateEdit1.Date))+
                  ' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',DateEdit2.Date))
      else begin

        Filtro := filtro + ' and data_hora between '+QuotedStr(FormatDateTime('yyyy-mm-dd hh:nn:00',Int(DateEdit1.Date)+StrToTime(MaskEdit1.Text)))+
                  ' and '+QuotedStr(FormatDateTime('yyyy-mm-dd hh:nn:59',Int(DateEdit2.Date)+StrToTime(MaskEdit2.Text)));
      end;

      if dblkusuario.Text <> '' then
        Filtro := Filtro + ' and c.idusuario = '+IntToStr(dblkusuario.KeyValue);
    end
    else begin
      //pega o código da última abertura
      Filtro := ' where id >= '+IntToStr(UltimaAbertura);

    end;

    Filtro := Filtro + ' order by id desc';
    cdsPesCaixa.SQL.Clear;
    cdsPesCaixa.SQL.Add('select c.*, u.NOME from tbcaixa c ');
    cdsPesCaixa.SQL.Add('left join tbusuario u on c.idusuario = u.idtbusuario '+ Filtro);
    cdsPesCaixa.Open;

    AtualizaSaldo;

  end;
end;

function TFormCaixa.UltimaAbertura :Integer;
begin
  with DM do begin
    try
      lbAbertura.Caption := '';
      lbUsuario.Caption  := '';
      lbValorInicial.Caption := '';

      qrComando.Close;
      qrComando.SQL.Clear;
      qrComando.SQL.Add('select c.id, c.data_hora, c.valor, u.nome from tbcaixa c');
      qrComando.SQL.Add('inner join tbusuario u on c.idusuario = u.idtbusuario');
      qrComando.SQL.Add('where c.tipo = '+QuotedStr('A'));
      qrComando.SQL.Add('order by c.id desc');
      qrComando.SQL.Add('limit 1');
      qrComando.Open;

      lbAbertura.Caption := qrComando.FieldByName('data_hora').AsString;
      lbUsuario.Caption  := qrComando.FieldByName('nome').AsString;
      lbValorInicial.Caption := FormataCurrency(qrComando.FieldByName('valor').AsCurrency);

      Result := qrComando.FieldByName('id').AsInteger;

      qrComando.Close;
    except
      Result := 0;
    end;

  end;
end;

procedure TFormCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  VerificaCaixaAberto;
  DM.cdsPesCaixa.Close;
end;

procedure TFormCaixa.FormShow(Sender: TObject);
begin
  inherited;
  if not DM.cdsUsuario.Active then
    DM.cdsUsuario.Open;
  DateEdit1.Date := Date;
  DateEdit2.Date := Date;

  Filtrar();

end;

procedure TFormCaixa.ToolButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFormCaixa.ToolButton3Click(Sender: TObject);
var
  saldo : TSaldoCaixa;
begin
  inherited;
  if DM.cdsPesCaixa.Active and(DM.cdsPesCaixa.RecordCount > 0) then
  begin
    with FormRelatorios do begin
      rpCaixa.Print;

    end;
  end;
end;

procedure TFormCaixa.ToolButton6Click(Sender: TObject);
begin
  inherited;
  Informa('Opção em desenvolvimento.'+#13+
          'O recurso estará disponível na próxima versão.');
end;

procedure TFormCaixa.AtualizaSaldo;
begin
  RetornaSaldoCaixa;
end;

end.

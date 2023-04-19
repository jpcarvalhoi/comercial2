unit uRelCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, ExtCtrls, StdCtrls, Buttons, ActnList;

type
  TFormRelCliente = class(TFormClone_TelaPadrao)
    GroupBox3: TGroupBox;
    edCliente: TEdit;
    btnPrefeitura: TBitBtn;
    Panel1: TPanel;
    btnVisualizar: TBitBtn;
    procedure btnPrefeituraClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    FCodCliente : Integer;
  end;

var
  FormRelCliente: TFormRelCliente;

implementation

uses FuncoesGlobais, uRelatorios, FuncoesGerais;

{$R *.dfm}

procedure TFormRelCliente.btnPrefeituraClick(Sender: TObject);
var
  Nome : String;
begin
  FCodCliente := SelCliente(Nome,True);
  if FCodCliente > 0 then
  begin
    edCliente.Text := Nome;

  end
  else
    edCliente.Clear;



end;

procedure TFormRelCliente.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  with FormRelatorios do begin
    qrClientePref.Close;
    qrClientePref.SQL.Clear;
    qrClientePref.SQL.Add(SqlClientePref);
    if (edCliente.Text <> '') and (FCodCliente > 0) then
    begin
      qrClientePref.SQL.Add('and c.idprefeitura = '+IntToStr(FCodCliente));
    end;
    qrClientePref.SQL.Add('order by c2.nome');
    qrClientePref.Open;

    if qrClientePref.RecordCount = 0 then
      Informa('Sem dados para geração do relatório.')
    else
      rpClientPref.Print;

  end;
end;

procedure TFormRelCliente.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_DELETE) or (key = vk_back) then
    edCliente.Clear;
end;

end.

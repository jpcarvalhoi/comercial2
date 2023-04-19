unit uCadCartao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, Grids, DBGrids, DBActns, ActnList, DB, ComCtrls,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TFormCadCartao = class(TfrmClone)
    DBGridEhPermissoes: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure dsNavegacaoStateChange(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadCartao: TFormCadCartao;

implementation

uses uDM, FuncoesGlobais, uLocalizar;

{$R *.dfm}

procedure TFormCadCartao.actLocalizarExecute(Sender: TObject);

begin
  inherited;
  try
    Application.CreateForm(TFormLocalizar,FormLocalizar);
    FormLocalizar.Tag := 4;
    FormLocalizar.ShowModal;
    if FormLocalizar.CodigoLocalizado > 0 then
    begin
      DM.cdsCartao.Locate('idcartao',FormLocalizar.CodigoLocalizado,[]);
    end;
  finally
      FreeAndNil(FormLocalizar);
  end;
end;

procedure TFormCadCartao.dsNavegacaoStateChange(Sender: TObject);
begin
  inherited;
  DBGridEhPermissoes.Enabled := DM.cdsCartao.State in [dsBrowse];
end;

procedure TFormCadCartao.FormShow(Sender: TObject);
begin
  inherited;
  dsNavegacao.DataSet := DM.cdsCartao;
  DM.cdsCartao.Open;
end;

end.

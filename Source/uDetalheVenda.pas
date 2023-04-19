unit uDetalheVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, DBGridEhGrouping, sSkinProvider, StdCtrls,
  Mask, DBCtrls, DB, GridsEh, DBGridEh, ExtCtrls, ActnList;

type
  TFormDetalheVenda = class(TFormClone_TelaPadrao)
    Panel3: TPanel;
    Panel4: TPanel;
    DBGridEh1: TDBGridEh;
    dsVenda: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel6: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    sSkinProvider1: TsSkinProvider;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    procedure sSkinProvider1SkinItem(Item: TComponent;
      var CanBeAdded: Boolean; var SkinSection: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDetalheVenda: TFormDetalheVenda;

implementation

uses uSelecionaVendas, uDM;

{$R *.dfm}

procedure TFormDetalheVenda.sSkinProvider1SkinItem(Item: TComponent;
  var CanBeAdded: Boolean; var SkinSection: string);
begin
  inherited;
  if Item.Tag = 1 then
    CanBeAdded := False;
end;

end.

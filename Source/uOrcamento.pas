unit uOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uVenda, DBGridEhGrouping, ExtCtrls, sSkinProvider, DB, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ImgList, ActnList, ComCtrls, StdCtrls, Buttons, DBCtrls, GridsEh, DBGridEh,
  Mask;

type
  TFormOrcamento = class(TFormVenda)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOrcamento: TFormOrcamento;

implementation

{$R *.dfm}

end.

object FormClone_TelaPadrao: TFormClone_TelaPadrao
  Left = 233
  Top = 196
  Caption = 'FormClone_TelaPadrao'
  ClientHeight = 326
  ClientWidth = 579
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ActionList: TActionList
    Left = 320
    Top = 184
    object actFechar: TAction
      Caption = 'Fechar (Esc)'
      ShortCut = 27
      OnExecute = actFecharExecute
    end
  end
end

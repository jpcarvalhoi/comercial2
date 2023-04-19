object FormImportaProducao: TFormImportaProducao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Importar Produ'#231#227'o'
  ClientHeight = 368
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 65
    Height = 13
    Caption = 'Cliente / Mina'
  end
  object Log: TLabel
    Left = 8
    Top = 101
    Width = 17
    Height = 13
    Caption = 'Log'
  end
  object Label2: TLabel
    Left = 349
    Top = 8
    Width = 90
    Height = 13
    Caption = 'Valor por Tonelada'
  end
  object Label4: TLabel
    Left = 487
    Top = 8
    Width = 74
    Height = 13
    Caption = 'Valor Agregado'
  end
  object Panel1: TPanel
    Left = 0
    Top = 327
    Width = 616
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 526
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Importar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object pb: TProgressBar
      Left = 8
      Top = 13
      Width = 512
      Height = 16
      TabOrder = 1
      Visible = False
    end
  end
  object dblkCliente: TDBLookupComboBox
    Left = 8
    Top = 24
    Width = 321
    Height = 21
    KeyField = 'codcliente'
    ListField = 'nome'
    ListSource = dsCliente
    TabOrder = 1
  end
  object mmLog: TMemo
    Left = 8
    Top = 120
    Width = 593
    Height = 201
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object edValor: TCurrencyEdit
    Left = 349
    Top = 24
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    TabOrder = 3
  end
  object pnItamarati: TPanel
    Left = 8
    Top = 51
    Width = 417
    Height = 43
    BevelOuter = bvNone
    TabOrder = 4
    object Label3: TLabel
      Left = 2
      Top = 1
      Width = 99
      Height = 13
      Caption = 'Data do Lan'#231'amento'
    end
    object DateEdit1: TDateEdit
      Left = 2
      Top = 17
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object edAgregado: TCurrencyEdit
    Left = 487
    Top = 24
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    TabOrder = 5
  end
  object dsCliente: TDataSource
    DataSet = DM.qrlkCliente
    Left = 224
    Top = 8
  end
  object OpenDialog: TOpenDialog
    Left = 162
    Top = 76
  end
end

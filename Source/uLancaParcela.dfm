inherited FormLancaParcela: TFormLancaParcela
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Detalhamento do Pagamento'
  ClientHeight = 301
  ClientWidth = 447
  ExplicitWidth = 453
  ExplicitHeight = 330
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 16
    Top = 7
    Width = 75
    Height = 13
    Caption = 'Valor do Pedido'
  end
  object gbEntrada: TGroupBox [1]
    Left = 8
    Top = 60
    Width = 425
    Height = 65
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 19
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label2: TLabel
      Left = 127
      Top = 19
      Width = 66
      Height = 13
      Caption = 'F. Pagamento'
    end
    object Label3: TLabel
      Left = 288
      Top = 19
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object edValorEntrada: TCurrencyEdit
      Left = 8
      Top = 34
      Width = 113
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      TabOrder = 0
    end
    object cbEntrada: TComboBox
      Left = 127
      Top = 34
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      Items.Strings = (
        'DINHEIRO'
        'CHEQUE'
        'CART'#195'O DE CR'#201'DITO'
        'CART'#195'O DE D'#201'BITO'
        'BOLETO BANC'#193'RIO'
        'TRANSFER'#202'NCIA'
        'DEP'#211'SITO')
    end
    object DateEditentrada: TDateEdit
      Left = 288
      Top = 34
      Width = 120
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
      OnAcceptDate = DateEditentradaAcceptDate
    end
  end
  object ckEntrada: TCheckBox [2]
    Left = 12
    Top = 54
    Width = 93
    Height = 17
    Caption = 'Com Entrada'
    TabOrder = 1
    OnClick = ckEntradaClick
  end
  object GroupBox2: TGroupBox [3]
    Left = 8
    Top = 131
    Width = 425
    Height = 118
    Caption = 'Parcelas'
    TabOrder = 2
    object Label5: TLabel
      Left = 8
      Top = 24
      Width = 56
      Height = 13
      Caption = 'N'#186' Parcelas'
    end
    object Label7: TLabel
      Left = 79
      Top = 25
      Width = 66
      Height = 13
      Caption = 'F. Pagamento'
    end
    object Label8: TLabel
      Left = 8
      Top = 72
      Width = 64
      Height = 13
      Caption = 'Periodicidade'
    end
    object Label9: TLabel
      Left = 98
      Top = 73
      Width = 93
      Height = 13
      Caption = 'Dt. Primeira Parcela'
    end
    object Label6: TLabel
      Left = 240
      Top = 73
      Width = 78
      Height = 13
      Caption = 'Valor da Parcela'
    end
    object SpinEditParcela: TSpinEdit
      Left = 8
      Top = 40
      Width = 65
      Height = 22
      MaxValue = 1000
      MinValue = 1
      TabOrder = 0
      Value = 1
      OnChange = SpinEditParcelaChange
    end
    object cbParcela: TComboBox
      Left = 79
      Top = 40
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      Items.Strings = (
        'DINHEIRO'
        'CHEQUE'
        'CART'#195'O DE CR'#201'DITO'
        'CART'#195'O DE D'#201'BITO'
        'BOLETO BANC'#193'RIO'
        'TRANSFER'#202'NCIA'
        'DEP'#211'SITO')
    end
    object SpinEditPeriodo: TSpinEdit
      Left = 8
      Top = 88
      Width = 80
      Height = 22
      MaxValue = 1000
      MinValue = 1
      TabOrder = 2
      Value = 30
    end
    object DateEditparcela: TDateEdit
      Left = 98
      Top = 88
      Width = 120
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object edValorParcela: TCurrencyEdit
      Left = 240
      Top = 88
      Width = 113
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      Enabled = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object edValorTotal: TCurrencyEdit [4]
    Left = 16
    Top = 22
    Width = 153
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    Enabled = False
    TabOrder = 3
  end
  object Panel1: TPanel [5]
    Left = 0
    Top = 260
    Width = 447
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    object BitBtn1: TBitBtn
      Left = 358
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 270
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  inherited ActionList: TActionList
    Left = 384
    Top = 240
  end
end

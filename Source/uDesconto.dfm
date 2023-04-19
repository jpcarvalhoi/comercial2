inherited FormDesc_Acre: TFormDesc_Acre
  BorderStyle = bsDialog
  Caption = 'Deconto e Acr'#233'scimo'
  ClientHeight = 331
  ClientWidth = 406
  Font.Height = -13
  OnShow = FormShow
  ExplicitWidth = 412
  ExplicitHeight = 360
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel [0]
    Left = 10
    Top = 8
    Width = 225
    Height = 32
    Alignment = taRightJustify
    Caption = 'Desconto ou acr'#233'scimo sobre o '#13#10'valor total do movimento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [1]
    Left = 8
    Top = 49
    Width = 45
    Height = 16
    Caption = 'Aplicar:'
  end
  object Label2: TLabel [2]
    Left = 9
    Top = 109
    Width = 28
    Height = 16
    Caption = 'Tipo'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 169
    Width = 32
    Height = 16
    Caption = 'Valor'
  end
  object Label5: TLabel [4]
    Left = 10
    Top = 240
    Width = 82
    Height = 16
    Alignment = taRightJustify
    Caption = 'Valor Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboBox1: TComboBox [5]
    Left = 8
    Top = 71
    Width = 173
    Height = 24
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 0
    Text = '1 - DESCONTO'
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = SelectProximo
    Items.Strings = (
      '1 - DESCONTO'
      '2 - ACR'#201'SCIMO')
  end
  object ComboBox2: TComboBox [6]
    Left = 10
    Top = 131
    Width = 173
    Height = 24
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = '1 - POR VALOR'
    OnChange = ComboBox2Change
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = SelectProximo
    Items.Strings = (
      '1 - POR VALOR'
      '2 - POR PORCENTAGEM')
  end
  object edDesconto: TCurrencyEdit [7]
    Left = 10
    Top = 189
    Width = 121
    Height = 24
    Margins.Left = 1
    Margins.Top = 1
    TabOrder = 2
    OnChange = edDescontoChange
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = SelectProximo
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 288
    Width = 406
    Height = 43
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 263
      Top = 6
      Width = 130
      Height = 30
      Caption = 'Cancelar (Esc)'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86464B8FB00FFFB
        00FFFB00FFFB00FF6464B86464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FF6464B89898EE9898EE6464B8FB00FFFB00FF6464B89898EE9898EE6464
        B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86060E36060E39C9CF164
        64B86464B89C9CF16060E36060E36464B8FB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FF6464B86666E86666E8A1A1F3A1A1F36666E86666E86464B8FB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86D6DED6D
        6DED6D6DED6D6DED6464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FF6464B87373F37373F37373F37373F36464B8FB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B8B0B0FB7979F879
        79F87979F87979F8B0B0FB6464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FF6464B8B3B3FD7E7EFC7E7EFC6464B86464B87E7EFC7E7EFCB3B3FD6464
        B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B88181FF8181FF6464B8FB
        00FFFB00FF6464B88181FF8181FF6464B8FB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FF6464B86464B8FB00FFFB00FFFB00FFFB00FF6464B86464B8FB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
      ParentDoubleBuffered = False
      TabOrder = 1
      TabStop = False
      OnClick = actFecharExecute
    end
    object btnConfirmar: TBitBtn
      Left = 119
      Top = 6
      Width = 130
      Height = 30
      Caption = 'Confirmar (F2)'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C64B89CFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FF64B89C98EECA98EECA64B89CFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C9CF1CD60E3A560E3A59C
        F1CD64B89CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        64B89CA1F3D166E8AB66E8AB66E8AB66E8ABA1F3D164B89CFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C6DEDB26DEDB264B89C64B89C6D
        EDB26DEDB2A7F6D564B89CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FF64B89C64B89CFB00FFFB00FF64B89C73F3B973F3B9ABF9D964B89CFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FF64B89C79F8BF79F8BFB0FBDD64B89CFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C7EFCC47EFCC4B3FD
        E064B89CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FF64B89C81FFC881FFC864B89CFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C64B8
        9CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = actConfirmarExecute
    end
  end
  object CurrencyEdit2: TCurrencyEdit [9]
    Left = 239
    Top = 13
    Width = 146
    Height = 24
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    Color = 15790320
    ReadOnly = True
    TabOrder = 4
  end
  object CurrencyEdit3: TCurrencyEdit [10]
    Left = 96
    Top = 237
    Width = 146
    Height = 24
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    Color = 15790320
    ReadOnly = True
    TabOrder = 5
  end
  inherited ActionList: TActionList
    Left = 248
    Top = 144
    object actConfirmar: TAction
      Caption = 'actConfirmar'
      ShortCut = 113
      OnExecute = actConfirmarExecute
    end
  end
end

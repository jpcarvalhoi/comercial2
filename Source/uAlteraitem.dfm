inherited FormAlteraItem: TFormAlteraItem
  BorderStyle = bsDialog
  Caption = 'Alterar iforma'#231#245'es do Item'
  ClientHeight = 402
  ClientWidth = 384
  Font.Height = -13
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 390
  ExplicitHeight = 427
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 25
    Height = 16
    Caption = 'Item'
  end
  object Label2: TLabel [1]
    Left = 71
    Top = 8
    Width = 71
    Height = 16
    Caption = 'C'#243'd. Barras'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 59
    Width = 47
    Height = 16
    Caption = 'Produto'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 122
    Width = 32
    Height = 16
    Caption = 'Qtde.'
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 176
    Width = 36
    Height = 16
    Caption = 'Pre'#231'o'
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 234
    Width = 58
    Height = 16
    Caption = 'Desconto'
  end
  object Label7: TLabel [6]
    Left = 8
    Top = 290
    Width = 66
    Height = 16
    Caption = 'Valor Total'
  end
  object Label8: TLabel [7]
    Left = 196
    Top = 233
    Width = 64
    Height = 16
    Caption = 'Percentual'
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 348
    Width = 384
    Height = 54
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 9
    ExplicitLeft = 8
    ExplicitTop = 363
    object BitBtn1: TBitBtn
      Left = 246
      Top = 11
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
    end
    object btnConfirmar: TBitBtn
      Left = 107
      Top = 11
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
      OnClick = btnConfirmarClick
    end
  end
  object DBEdit1: TDBEdit [9]
    Tag = 1
    Left = 8
    Top = 27
    Width = 57
    Height = 24
    Color = clBtnFace
    DataField = 'iditem'
    DataSource = dsitem
    Enabled = False
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit [10]
    Tag = 1
    Left = 71
    Top = 27
    Width = 226
    Height = 24
    Color = clBtnFace
    DataField = 'codbarras'
    DataSource = dsitem
    Enabled = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit3: TDBEdit [11]
    Tag = 1
    Left = 8
    Top = 78
    Width = 361
    Height = 24
    Color = clBtnFace
    DataField = 'descricao'
    DataSource = dsitem
    Enabled = False
    ReadOnly = True
    TabOrder = 2
  end
  object edQuantidade: TDBEdit [12]
    Left = 8
    Top = 141
    Width = 57
    Height = 24
    DataField = 'qtde'
    DataSource = dsitem
    TabOrder = 3
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = SelectProximo
  end
  object DBEdit5: TDBEdit [13]
    Left = 8
    Top = 197
    Width = 169
    Height = 24
    DataField = 'preco'
    DataSource = dsitem
    TabOrder = 4
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = SelectProximo
  end
  object edDesconto: TDBEdit [14]
    Left = 8
    Top = 253
    Width = 169
    Height = 24
    DataField = 'Desconto'
    DataSource = dsitem
    TabOrder = 5
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = SelectProximo
  end
  object DBEdit7: TDBEdit [15]
    Tag = 1
    Left = 8
    Top = 309
    Width = 169
    Height = 24
    Color = clBtnFace
    DataField = 'ValorTotal'
    DataSource = dsitem
    Enabled = False
    ReadOnly = True
    TabOrder = 8
  end
  object edPercentual: TCurrencyEdit [16]
    Left = 192
    Top = 253
    Width = 73
    Height = 24
    Margins.Left = 1
    Margins.Top = 1
    DisplayFormat = ',0.0;- ,0.0'
    TabOrder = 6
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = SelectProximo
  end
  object BitBtn2: TBitBtn [17]
    Left = 269
    Top = 249
    Width = 75
    Height = 30
    Caption = 'Aplicar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 7
  end
  inherited ActionList: TActionList
    Left = 272
    Top = 136
    object actConfirmar: TAction
      Caption = 'actConfirmar'
      ShortCut = 113
      OnExecute = actConfirmarExecute
    end
  end
  object dsitem: TDataSource
    Left = 320
    Top = 136
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'Tahoma'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    OnSkinItem = sSkinProvider1SkinItem
    Left = 176
    Top = 120
  end
end

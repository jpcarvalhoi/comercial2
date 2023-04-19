inherited FormParcelaCheque: TFormParcelaCheque
  Caption = 'Lan'#231'amento de Cheques'
  ClientHeight = 344
  ClientWidth = 1007
  OnShow = FormShow
  ExplicitWidth = 1023
  ExplicitHeight = 383
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1007
    Height = 85
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 14
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object Label18: TLabel
      Left = 158
      Top = 14
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Parcelas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 233
      Top = 14
      Width = 69
      Height = 13
      Caption = '1'#186' Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 358
      Top = 12
      Width = 64
      Height = 13
      Caption = 'Periodicidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 13
      Top = 55
      Width = 259
      Height = 13
      Caption = 'Copiar informa'#231#245'es da primeira parcela para as demais.'
    end
    object edTotalCheque: TCurrencyEdit
      Left = 13
      Top = 28
      Width = 121
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      Ctl3D = True
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object SpinEditParCheque: TSpinEdit
      Left = 143
      Top = 28
      Width = 81
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object DateEditCheque: TDateEdit
      Left = 233
      Top = 28
      Width = 116
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object SpinEditPerCheque: TSpinEdit
      Left = 358
      Top = 28
      Width = 81
      Height = 22
      MaxValue = 1000
      MinValue = 1
      TabOrder = 3
      Value = 30
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object btnGerarCheque: TBitBtn
      Left = 570
      Top = 24
      Width = 83
      Height = 26
      Caption = 'Gerar'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD18A62C4652FC76730CA6A30CD6C31DC9265FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1632EF4BD86EE
        9C4FEE9641F19C47D06E32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC1622EF4BD87E8934FE98F41F29E49CF6E32FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0622EF4BD87E6
        8F4EE88B41F29E48CE6D31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC0612DF4BC86E68E4DE7893FF19C46CD6C31FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC4805FB3582AB65A2BB95C2BBC5E2CBE602DF3BC86E4
        8B4BE5863DEF9843CB6A30CD6C31CE6D31CF6E32D06E32D6804CAF5529F0B98A
        E69353E38740E38236E38232E99349E07E3AE38139ED943FEF9943F19C46F29E
        48F29E49F19D47CD6C31AE5428F0B98ADD834CD87339DA763ADB783ADC7736DB
        7433DE7835E38139E5863DE78940E88C41EA8F42EE9641CA6A30AD5328F0B98B
        DF8C5ADA7E4BDC814CDE844EE0874FDD7D42DE7E40E28644E69154E79254E894
        55EA9856EFA157C76730AC5228EFB98BF0B98BF1BA8AF1BB8BF1BC8BF2BD8BE0
        8750DE7E3FEB9D57F4C08DF5C18DF5C18DF5C18DF5C18DC4652FBF7D5DAD5228
        AF5428B15629B3582AB65A2AF1BC8BDE844EDC7A3DE68E44BE602DC0612DC062
        2EC1622EC1632ED79977FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3582AF1BB8BDC
        814DDA763BE58B42BC5E2CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB15629F1BA8BDB7F4BD8733AE38942B95C2BFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF5428F0BA8BDF
        8C5BDD834DE69453B65A2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFAD5228F0BA8BF0BA8BF0BA8BF0BA8BB3582AFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7D5DAC5228AD
        5328AE5428AF5529C4805FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = btnGerarChequeClick
    end
    object BitBtn1: TBitBtn
      Left = 278
      Top = 52
      Width = 83
      Height = 26
      Caption = 'Copiar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = BitBtn1Click
    end
  end
  object DBGridEh1: TDBGridEh [1]
    Left = 0
    Top = 85
    Width = 1007
    Height = 219
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = DM.dsCheque
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentFont = False
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'id'
        Footers = <>
        ReadOnly = True
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'dtvencimento'
        Footers = <>
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'valor'
        Footers = <
          item
            FieldName = 'valor'
            ValueType = fvtSum
          end>
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'banco'
        Footers = <>
        Tag = 1
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'agencia'
        Footers = <>
        Tag = 1
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'numchque'
        Footers = <>
        Tag = 1
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = 'conta'
        Footers = <
          item
            Value = 'Total:'
            ValueType = fvtStaticText
          end>
        Tag = 1
        Width = 62
      end
      item
        AlwaysShowEditButton = True
        EditButtons = <>
        FieldName = 'Tipo'
        Footers = <>
        KeyList.Strings = (
          'P'
          'T')
        PickList.Strings = (
          'Pr'#243'prio'
          'Terceiros')
        Tag = 1
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'documento'
        Footers = <>
        Tag = 1
        Title.Caption = 'Documento'
      end
      item
        EditButtons = <>
        FieldName = 'Nome_Terceiro'
        Footers = <>
        Tag = 1
        Width = 315
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 304
    Width = 1007
    Height = 40
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      1007
      40)
    object btnConfirmar: TBitBtn
      Left = 734
      Top = 4
      Width = 130
      Height = 30
      Anchors = [akTop, akRight]
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
    object BitBtn2: TBitBtn
      Left = 870
      Top = 4
      Width = 130
      Height = 30
      Anchors = [akTop, akRight]
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
  end
  inherited ActionList: TActionList
    Left = 712
    Top = 176
    object actConfirmar: TAction
      Caption = 'actConfirmar'
      ShortCut = 113
      OnExecute = actConfirmarExecute
    end
  end
end

inherited FormFinalizaVenda: TFormFinalizaVenda
  BorderStyle = bsDialog
  Caption = 'Finalizar Venda'
  ClientHeight = 575
  ClientWidth = 454
  Font.Height = -13
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 460
  ExplicitHeight = 604
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel [0]
    Left = 0
    Top = 532
    Width = 454
    Height = 43
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 316
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
      Left = 180
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
  object Panel2: TPanel [1]
    Left = 0
    Top = 130
    Width = 454
    Height = 402
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label11: TLabel
      Left = 184
      Top = 80
      Width = 48
      Height = 16
      Caption = 'Label11'
    end
    object Panel3: TPanel
      Tag = 1
      Left = 2
      Top = 2
      Width = 450
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Formas de Pagamento'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object cbPagamento: TComboBox
      Left = 136
      Top = 29
      Width = 186
      Height = 28
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = cbPagamentoChange
      OnKeyPress = cbPagamentoKeyPress
      Items.Strings = (
        '1 - '#192' Vista'
        '2 - Cart'#227'o'
        '3 - A Prazo'
        '4 - Cheque'
        '5 - Misto'
        '6 - Dep'#243'sito'
        '7 - Transfer'#234'ncia')
    end
    object pgPagamento: TPageControl
      Left = 2
      Top = 66
      Width = 446
      Height = 330
      ActivePage = TabSheet2
      TabOrder = 2
      OnChange = pgPagamentoChange
      object tbsDinheiro: TTabSheet
        Caption = '&1 - '#192' Vista'
        OnShow = tbsDinheiroShow
        object Label3: TLabel
          Left = 10
          Top = 21
          Width = 73
          Height = 20
          Alignment = taRightJustify
          Caption = 'Dinheiro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 32
          Top = 61
          Width = 51
          Height = 20
          Alignment = taRightJustify
          Caption = 'Troco:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edDinheiro: TCurrencyEdit
          Left = 87
          Top = 18
          Width = 150
          Height = 28
          Margins.Left = 1
          Margins.Top = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = edDinheiroChange
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object edTroco: TCurrencyEdit
          Left = 87
          Top = 58
          Width = 150
          Height = 28
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object TabSheet2: TTabSheet
        Caption = '&2 - Cart'#227'o'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object Label12: TLabel
          Left = 115
          Top = 2
          Width = 43
          Height = 16
          Caption = 'Cart'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 6
          Top = 52
          Width = 31
          Height = 16
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 110
          Top = 52
          Width = 57
          Height = 16
          Alignment = taRightJustify
          Caption = 'Parcelas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 197
          Top = 53
          Width = 86
          Height = 16
          Caption = '1'#186' Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 8
          Top = 103
          Width = 85
          Height = 16
          Caption = 'Periodicidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 8
          Top = 2
          Width = 74
          Height = 16
          Caption = 'Total Cart'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBLookupComboBoxCartao: TDBLookupComboBox
          Left = 112
          Top = 22
          Width = 317
          Height = 24
          KeyField = 'idcartao'
          ListField = 'descricao'
          ListSource = dsCartao
          TabOrder = 1
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyDown = DBLookupComboBoxCartaoKeyDown
          OnKeyPress = SelectProximo
        end
        object cbTipo: TComboBox
          Left = 6
          Top = 70
          Width = 91
          Height = 24
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Text = 'Cr'#233'dito'
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
          Items.Strings = (
            'Cr'#233'dito'
            'D'#233'bito')
        end
        object SpinEditParCart: TSpinEdit
          Left = 106
          Top = 70
          Width = 81
          Height = 26
          MaxValue = 0
          MinValue = 0
          TabOrder = 3
          Value = 0
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyDown = SpinEditParcelasKeyDown
        end
        object DateEditVencimentoCart: TDateEdit
          Left = 197
          Top = 70
          Width = 137
          Height = 24
          NumGlyphs = 2
          TabOrder = 4
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object SpinEditPer2: TSpinEdit
          Left = 8
          Top = 123
          Width = 81
          Height = 26
          MaxValue = 1000
          MinValue = 1
          TabOrder = 5
          Value = 30
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyDown = SpinEditParcelasKeyDown
        end
        object btnGerarCartao: TBitBtn
          Left = 101
          Top = 123
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
          TabOrder = 6
          OnClick = btnGerarCartaoClick
        end
        object BitBtn6: TBitBtn
          Left = 190
          Top = 124
          Width = 83
          Height = 26
          Caption = 'Limpar'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FF6464B86464B86464B86464B86464B86464B86464B86464B86464B86464
            B8FB00FFFB00FFFB00FFFB00FFFB00FF6464B8A7A7F6A7A7F6A7A7F6A7A7F6A7
            A7F6A7A7F6A7A7F6A7A7F6A7A7F6A7A7F66464B8FB00FFFB00FFFB00FFFB00FF
            6464B88181FF8181FF8181FF8181FF8181FF8181FF8181FF8181FF8181FF8181
            FF6464B8FB00FFFB00FFFB00FFFB00FFFB00FF6464B86464B86464B86464B864
            64B86464B86464B86464B86464B86464B8FB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
          ParentDoubleBuffered = False
          TabOrder = 7
          TabStop = False
          OnClick = BitBtn6Click
        end
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 156
          Width = 438
          Height = 143
          TabStop = False
          Align = alBottom
          DataGrouping.GroupLevels = <>
          DataSource = dsMemConta
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ReadOnly = True
          RowDetailPanel.Color = clBtnFace
          SumList.Active = True
          TabOrder = 8
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'data_vencimento'
              Footers = <>
              Width = 134
            end
            item
              EditButtons = <>
              FieldName = 'valor'
              Footers = <
                item
                  FieldName = 'valor'
                  ValueType = fvtSum
                end>
              Width = 153
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object edTotalCartao: TCurrencyEdit
          Left = 6
          Top = 22
          Width = 100
          Height = 24
          Margins.Left = 1
          Margins.Top = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = edTotalCartaoEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
      end
      object TabSheet3: TTabSheet
        Caption = '&3 - A Prazo'
        ImageIndex = 2
        OnShow = TabSheet3Show
        object Label6: TLabel
          Left = 120
          Top = 9
          Width = 108
          Height = 16
          Alignment = taRightJustify
          Caption = 'Entrada (Dinheiro)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 250
          Top = 10
          Width = 57
          Height = 16
          Alignment = taRightJustify
          Caption = 'Parcelas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 8
          Top = 61
          Width = 86
          Height = 16
          Caption = '1'#186' Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 154
          Top = 61
          Width = 85
          Height = 16
          Caption = 'Periodicidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbTotal: TLabel
          Left = 10
          Top = 9
          Width = 69
          Height = 16
          Caption = 'Total Prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edEntrada: TCurrencyEdit
          Left = 118
          Top = 29
          Width = 100
          Height = 24
          Margins.Left = 1
          Margins.Top = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object SpinEditParcelas: TSpinEdit
          Left = 247
          Top = 29
          Width = 81
          Height = 26
          MaxValue = 0
          MinValue = 0
          TabOrder = 2
          Value = 0
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyDown = SpinEditParcelasKeyDown
        end
        object btnGerarPrazo: TBitBtn
          Left = 245
          Top = 80
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
          TabOrder = 5
          OnClick = btnGerarPrazoClick
        end
        object DateEditVencimento: TDateEdit
          Left = 8
          Top = 80
          Width = 137
          Height = 24
          NumGlyphs = 2
          TabOrder = 3
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object SpinEditPeriodo: TSpinEdit
          Left = 154
          Top = 80
          Width = 81
          Height = 26
          MaxValue = 1000
          MinValue = 1
          TabOrder = 4
          Value = 30
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object BitBtn4: TBitBtn
          Left = 334
          Top = 80
          Width = 83
          Height = 26
          Caption = 'Limpar'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FF6464B86464B86464B86464B86464B86464B86464B86464B86464B86464
            B8FB00FFFB00FFFB00FFFB00FFFB00FF6464B8A7A7F6A7A7F6A7A7F6A7A7F6A7
            A7F6A7A7F6A7A7F6A7A7F6A7A7F6A7A7F66464B8FB00FFFB00FFFB00FFFB00FF
            6464B88181FF8181FF8181FF8181FF8181FF8181FF8181FF8181FF8181FF8181
            FF6464B8FB00FFFB00FFFB00FFFB00FFFB00FF6464B86464B86464B86464B864
            64B86464B86464B86464B86464B86464B8FB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
          ParentDoubleBuffered = False
          TabOrder = 6
          TabStop = False
          OnClick = BitBtn4Click
        end
        object DBGridEh3: TDBGridEh
          Left = 0
          Top = 120
          Width = 438
          Height = 179
          TabStop = False
          Align = alBottom
          DataGrouping.GroupLevels = <>
          DataSource = dsMemConta
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ReadOnly = True
          RowDetailPanel.Color = clBtnFace
          SumList.Active = True
          TabOrder = 7
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'data_vencimento'
              Footers = <>
              Width = 134
            end
            item
              EditButtons = <>
              FieldName = 'valor'
              Footers = <
                item
                  FieldName = 'valor'
                  ValueType = fvtSum
                end>
              Width = 153
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object edTotalPrazo: TCurrencyEdit
          Left = 10
          Top = 29
          Width = 100
          Height = 24
          Margins.Left = 1
          Margins.Top = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = edTotalCartaoEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
      end
      object TabSheet4: TTabSheet
        Caption = '&4 - Cheque'
        ImageIndex = 3
        OnShow = TabSheet4Show
        object Label18: TLabel
          Left = 113
          Top = 9
          Width = 89
          Height = 16
          Alignment = taRightJustify
          Caption = 'Qtde. Cheques'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 225
          Top = 9
          Width = 86
          Height = 16
          Caption = '1'#186' Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 3
          Top = 65
          Width = 85
          Height = 16
          Caption = 'Periodicidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 3
          Top = 9
          Width = 81
          Height = 16
          Caption = 'Total Cheque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpinEditParCheque: TSpinEdit
          Left = 113
          Top = 29
          Width = 81
          Height = 26
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyDown = SpinEditParcelasKeyDown
        end
        object DateEditCheque: TDateEdit
          Left = 225
          Top = 29
          Width = 116
          Height = 24
          NumGlyphs = 2
          TabOrder = 2
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object SpinEditPerCheque: TSpinEdit
          Left = 3
          Top = 85
          Width = 81
          Height = 26
          MaxValue = 1000
          MinValue = 1
          TabOrder = 3
          Value = 30
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyDown = SpinEditParcelasKeyDown
        end
        object btnGerarCheque: TBitBtn
          Left = 96
          Top = 85
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
        object BitBtn8: TBitBtn
          Left = 185
          Top = 86
          Width = 83
          Height = 26
          Caption = 'Limpar'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FF6464B86464B86464B86464B86464B86464B86464B86464B86464B86464
            B8FB00FFFB00FFFB00FFFB00FFFB00FF6464B8A7A7F6A7A7F6A7A7F6A7A7F6A7
            A7F6A7A7F6A7A7F6A7A7F6A7A7F6A7A7F66464B8FB00FFFB00FFFB00FFFB00FF
            6464B88181FF8181FF8181FF8181FF8181FF8181FF8181FF8181FF8181FF8181
            FF6464B8FB00FFFB00FFFB00FFFB00FFFB00FF6464B86464B86464B86464B864
            64B86464B86464B86464B86464B86464B8FB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
          ParentDoubleBuffered = False
          TabOrder = 5
          TabStop = False
          OnClick = BitBtn8Click
        end
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 118
          Width = 438
          Height = 181
          TabStop = False
          Align = alBottom
          DataGrouping.GroupLevels = <>
          DataSource = dsMemConta
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ReadOnly = True
          RowDetailPanel.Color = clBtnFace
          SumList.Active = True
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'data_vencimento'
              Footers = <>
              Width = 95
            end
            item
              EditButtons = <>
              FieldName = 'valor'
              Footers = <
                item
                  FieldName = 'valor'
                  ValueType = fvtSum
                end>
              Width = 85
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object edTotalCheque: TCurrencyEdit
          Left = 3
          Top = 29
          Width = 99
          Height = 24
          Margins.Left = 1
          Margins.Top = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = edTotalCartaoEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
      end
      object tbsOrcamento: TTabSheet
        Caption = 'Or'#231'amento'
        ImageIndex = 4
        object Label22: TLabel
          Left = 3
          Top = 20
          Width = 132
          Height = 16
          Caption = 'Validade da Proposta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 3
          Top = 81
          Width = 31
          Height = 16
          Caption = 'Obs.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DateEditOrcamento: TDateEdit
          Left = 3
          Top = 42
          Width = 137
          Height = 24
          NumGlyphs = 2
          TabOrder = 0
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object mmObs: TMemo
          Left = 3
          Top = 103
          Width = 421
          Height = 89
          MaxLength = 200
          TabOrder = 1
        end
      end
      object tbsDeposito: TTabSheet
        Caption = 'Dep'#243'sito'
        ImageIndex = 5
        object Label8: TLabel
          Left = 35
          Top = 21
          Width = 48
          Height = 20
          Alignment = taRightJustify
          Caption = 'Valor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edDeposito: TCurrencyEdit
          Left = 87
          Top = 18
          Width = 150
          Height = 28
          Margins.Left = 1
          Margins.Top = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = edDinheiroChange
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
      end
    end
  end
  object Panel4: TPanel [2]
    Left = 0
    Top = 0
    Width = 454
    Height = 130
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label4: TLabel
      Tag = 1
      Left = 152
      Top = 34
      Width = 46
      Height = 20
      Alignment = taRightJustify
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Tag = 1
      Left = 16
      Top = 66
      Width = 182
      Height = 20
      Alignment = taRightJustify
      Caption = 'Acr'#233'scimo - Desconto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Tag = 1
      Left = 85
      Top = 100
      Width = 113
      Height = 20
      Alignment = taRightJustify
      Caption = 'Total a Pagar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edTotalVenda: TDBEdit
      Tag = 1
      Left = 204
      Top = 30
      Width = 166
      Height = 28
      TabStop = False
      Color = 15790320
      DataField = 'total_venda'
      DataSource = dsvenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object Panel5: TPanel
      Tag = 1
      Left = 2
      Top = 2
      Width = 450
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Finalizar'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object edDesconto: TDBEdit
      Tag = 1
      Left = 204
      Top = 63
      Width = 166
      Height = 28
      TabStop = False
      Color = 15790320
      DataField = 'saldo_desconto'
      DataSource = dsvenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object edtotalPagar: TDBEdit
      Tag = 1
      Left = 204
      Top = 96
      Width = 166
      Height = 28
      TabStop = False
      Color = 15790320
      DataField = 'total_pagar'
      DataSource = dsvenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object btnDesconto: TBitBtn
      Left = 373
      Top = 62
      Width = 57
      Height = 30
      Caption = 'F1'
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
      TabOrder = 2
      TabStop = False
      OnClick = actDescontoExecute
    end
  end
  inherited ActionList: TActionList
    Left = 368
    Top = 128
    object actConfirmar: TAction
      Caption = 'actConfirmar'
      ShortCut = 113
      OnExecute = actConfirmarExecute
    end
    object actDesconto: TAction
      Caption = 'actDesconto'
      ShortCut = 112
      OnExecute = actDescontoExecute
    end
  end
  object dsvenda: TDataSource
    DataSet = FormVenda.cdsVenda
    Left = 408
    Top = 144
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
    Left = 424
    Top = 128
  end
  object memConta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'id'
    Params = <>
    Left = 392
    Top = 120
    object memContadata_vencimento: TDateField
      DisplayLabel = 'Dt. Vencimento'
      FieldName = 'data_vencimento'
    end
    object memContadata_pagamento: TDateField
      FieldName = 'data_pagamento'
    end
    object memContavalor: TCurrencyField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
    end
    object memContaforma_pagamento: TStringField
      FieldName = 'forma_pagamento'
      Size = 40
    end
    object memContaparcela: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'parcela'
    end
    object memContaid: TIntegerField
      FieldName = 'id'
    end
    object memContaidcartao: TIntegerField
      FieldName = 'idcartao'
    end
  end
  object dsMemConta: TDataSource
    DataSet = memConta
    Left = 352
    Top = 120
  end
  object dsCartao: TDataSource
    DataSet = DM.cdsCartao
    Left = 280
    Top = 224
  end
end

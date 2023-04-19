inherited FormVenda: TFormVenda
  Caption = 'Venda'
  ClientHeight = 636
  ClientWidth = 1013
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 1029
  ExplicitHeight = 675
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 116
    Width = 1013
    Height = 501
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      1013
      501)
    object pnTipo: TPanel
      Tag = 1
      Left = 7
      Top = 4
      Width = 825
      Height = 26
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Venda - Or'#231'amento'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object DBGridEh1: TDBGridEh
      Left = 0
      Top = 240
      Width = 1013
      Height = 261
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dsItemVenda
      DynProps = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterParams.Color = clWindow
      IndicatorOptions = [gioShowRowIndicatorEh]
      ParentFont = False
      TabOrder = 4
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'iditem'
          Footers = <>
          Width = 47
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'BarrasCalc'
          Footers = <>
          Title.Caption = 'C'#243'd. Barras'
          Width = 185
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'DescCalc'
          Footers = <>
          Width = 349
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'qtde'
          Footers = <>
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'preco'
          Footers = <>
          Width = 100
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Desconto'
          Footers = <>
          Width = 100
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ValorTotal'
          Footers = <>
          Width = 100
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object pnRight: TPanel
      Left = 827
      Top = 0
      Width = 182
      Height = 208
      Align = alCustom
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 0
      object Panel4: TPanel
        Tag = 1
        Left = 5
        Top = 6
        Width = 171
        Height = 45
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 0
        object Label6: TLabel
          Tag = 1
          Left = 8
          Top = 1
          Width = 149
          Height = 20
          Caption = '(+) Sub Total do Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 101
          Top = 24
          Width = 60
          Height = 16
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'subtotal'
          DataSource = dsItemVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel5: TPanel
        Tag = 1
        Left = 5
        Top = 53
        Width = 171
        Height = 45
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 1
        object Label7: TLabel
          Tag = 1
          Left = 8
          Top = 0
          Width = 146
          Height = 20
          Caption = '(-) Desconto do Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText10: TDBText
          Left = 93
          Top = 24
          Width = 68
          Height = 16
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'Desconto'
          DataSource = dsItemVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText13: TDBText
          Left = 5
          Top = 24
          Width = 68
          Height = 16
          AutoSize = True
          DataField = 'descontoper'
          DataSource = dsItemVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel6: TPanel
        Tag = 1
        Left = 5
        Top = 100
        Width = 171
        Height = 45
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 2
        object Label8: TLabel
          Tag = 1
          Left = 6
          Top = 4
          Width = 116
          Height = 20
          Caption = '(=) Total do Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText11: TDBText
          Left = 93
          Top = 24
          Width = 68
          Height = 16
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'ValorTotal'
          DataSource = dsItemVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel7: TPanel
        Tag = 1
        Left = 5
        Top = 154
        Width = 171
        Height = 50
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 3
        object Label9: TLabel
          Tag = 1
          Left = 6
          Top = 2
          Width = 150
          Height = 20
          Caption = '(=) Total da Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText12: TDBText
          Left = 81
          Top = 26
          Width = 80
          Height = 20
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'total_venda'
          DataSource = dsVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 7
      Top = 33
      Width = 820
      Height = 125
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Cliente: '
      TabOrder = 2
      object Label13: TLabel
        Left = 73
        Top = 10
        Width = 171
        Height = 13
        Caption = 'Cliente (Nome/ CPF/CNPJ, Tel, Cel)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 282
        Top = 36
        Width = 68
        Height = 16
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 266
        Top = 13
        Width = 84
        Height = 16
        Caption = 'Nome/Raz'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 499
        Top = 36
        Width = 26
        Height = 16
        Caption = 'Tel.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 680
        Top = 36
        Width = 26
        Height = 16
        Caption = 'Cel.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 320
        Top = 58
        Width = 30
        Height = 16
        Caption = 'End.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 354
        Top = 13
        Width = 320
        Height = 17
        DataField = 'nome'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 354
        Top = 36
        Width = 104
        Height = 17
        DataField = 'documento'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 529
        Top = 36
        Width = 119
        Height = 17
        DataField = 'telefone'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 712
        Top = 36
        Width = 136
        Height = 17
        DataField = 'celular'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 354
        Top = 58
        Width = 492
        Height = 17
        DataField = 'endereco'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 311
        Top = 80
        Width = 39
        Height = 16
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 354
        Top = 80
        Width = 167
        Height = 17
        DataField = 'bairro'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 605
        Top = 80
        Width = 47
        Height = 16
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 656
        Top = 80
        Width = 180
        Height = 17
        DataField = 'cidade'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 309
        Top = 103
        Width = 41
        Height = 16
        Caption = 'E-mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 352
        Top = 103
        Width = 450
        Height = 17
        DataField = 'email'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbkilometragem: TLabel
        Left = 12
        Top = 66
        Width = 63
        Height = 13
        Caption = 'Kilometragem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object btnCliente: TBitBtn
        Left = 6
        Top = 24
        Width = 61
        Height = 30
        Caption = '(F5)'
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9DFDFDEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFD8D8D77B7A77737270B7B7B5FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFE4E4E33435520F1D881320803A3760ACACABFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          6E6D66131E8B0035F30860FF092FB05A566FF8F8F8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C59999999191914C4B4322
          2564001FDC0042EF0049F8384189EBEBEAFFFFFFFFFFFFFFFFFFE0E0DFF1F1F1
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBF34343445454547474754545354534D121C
          82001AD30020E14C5696F7F7F7FFFFFFEDEDED63616534304A59575DCECECEFF
          FFFFFFFFFFFAFAFA4545453131313737374E4E4E43434385858492918B4C4D75
          505388A7A6A8FFFFFFFBFBFB5E5D600A1EA00031C9112288625F6CE1E1E0FFFF
          FFC9C9C92E2E2E3333332B2B2B474747555555646464BBBBBBAEADA77F7F79D7
          D7D7F2F2F2858584383742001CC6014CFC0657F62C327AB4B3B2FFFFFF858585
          3333334D4D4D4141412A2A2A6262627D7D7D7575756868685959599393939595
          9547474756554C0F1A840025E40038F4293EA1B1B0AFECECEC46464639393940
          40407373734D4D4D3030305D5D5D6464644747474040404545454E4E4E474747
          70706E68676919228B1626B8686C8DDBDAD9BFBFBF3737373E3E3E4545454C4C
          4C7272725050502121212323232A2A2A3636363A3A3A474747505050646464C7
          C7C59F9E9674726C757572F1F1F1B7B7B73D3D3D4444444C4C4C535353595959
          6A6A6A5959593F3F3F2424244545453232323838386161617575757F7F7F7E7E
          7E4B4B4B4B4B4BDADADAC5C5C54343434A4A4A52525259595961616163636376
          76764F4F4F3A3A3A4747472B2B2B2E2E2E4141416E6E6E6D6D6D434343323232
          888888FCFCFCF1F1F15A5A5A5151515757575F5F5F6565656C6C6C5959592C2C
          2C4E4E4E2929293737372C2C2C2626262C2C2C3434344343436E6E6EEBEBEBFF
          FFFFFFFFFFA6A6A65959595E5E5E6565656B6B6B6A6A6A2626264E4E4E2F2F2F
          2F2F2F4646464747474E4E4E6363638080808C8C8CEBEBEBFFFFFFFFFFFFFFFF
          FFCFCFCF5151516464646B6B6B7E7E7E8787876E6E6E3B3B3B24242448484847
          47474848485E5E5E6E6E6E818181ECECECFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0
          656565585858727272A6A6A6FFFFFFA9A9A92B2B2B4747475A5A5A4545455B5B
          5B6969697E7E7EEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7B0
          B0B0C4C4C4FFFFFFFFFFFF7373733D3D3D5B5B5B5050505959596666668F8F8F
          ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB1B1B15353534646467C7C7CCCCCCCE9E9E9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACABABABAFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        TabOrder = 0
        TabStop = False
        OnClick = actClienteExecute
      end
      object edCliente: TEdit
        Left = 73
        Top = 28
        Width = 189
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = edClienteChange
        OnEnter = EditEnter
        OnExit = edClienteExit
        OnKeyDown = edClienteKeyDown
        OnKeyPress = edClienteKeyPress
      end
      object edKilometragem: TDBEdit
        Left = 14
        Top = 82
        Width = 121
        Height = 21
        DataField = 'kilometragem'
        DataSource = dsVenda
        TabOrder = 2
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
    end
    object GroupBox2: TGroupBox
      Left = 6
      Top = 158
      Width = 820
      Height = 70
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Adicionar Produtos:'
      TabOrder = 3
      object Label12: TLabel
        Left = 250
        Top = 18
        Width = 29
        Height = 16
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 71
        Top = 18
        Width = 47
        Height = 16
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 687
        Top = 18
        Width = 36
        Height = 16
        Caption = 'Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edQuantidade: TEdit
        Left = 250
        Top = 35
        Width = 79
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '1'
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = edQuantidadeKeyPress
      end
      object edProduto: TEdit
        Left = 71
        Top = 35
        Width = 173
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = edProdutoChange
        OnEnter = EditEnter
        OnExit = edProdutoExit
        OnKeyDown = edProdutoKeyDown
        OnKeyPress = edProdutoKeyPress
      end
      object btnProduto: TBitBtn
        Left = 4
        Top = 31
        Width = 61
        Height = 30
        Caption = '(F12)'
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9DFDFDEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFD8D8D77B7A77737270B7B7B5FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFE4E4E33435520F1D881320803A3760ACACABFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          6E6D66131E8B0035F30860FF092FB05A566FF8F8F8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C59999999191914C4B4322
          2564001FDC0042EF0049F8384189EBEBEAFFFFFFFFFFFFFFFFFFE0E0DFF1F1F1
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBF34343445454547474754545354534D121C
          82001AD30020E14C5696F7F7F7FFFFFFEDEDED63616534304A59575DCECECEFF
          FFFFFFFFFFFAFAFA4545453131313737374E4E4E43434385858492918B4C4D75
          505388A7A6A8FFFFFFFBFBFB5E5D600A1EA00031C9112288625F6CE1E1E0FFFF
          FFC9C9C92E2E2E3333332B2B2B474747555555646464BBBBBBAEADA77F7F79D7
          D7D7F2F2F2858584383742001CC6014CFC0657F62C327AB4B3B2FFFFFF858585
          3333334D4D4D4141412A2A2A6262627D7D7D7575756868685959599393939595
          9547474756554C0F1A840025E40038F4293EA1B1B0AFECECEC46464639393940
          40407373734D4D4D3030305D5D5D6464644747474040404545454E4E4E474747
          70706E68676919228B1626B8686C8DDBDAD9BFBFBF3737373E3E3E4545454C4C
          4C7272725050502121212323232A2A2A3636363A3A3A474747505050646464C7
          C7C59F9E9674726C757572F1F1F1B7B7B73D3D3D4444444C4C4C535353595959
          6A6A6A5959593F3F3F2424244545453232323838386161617575757F7F7F7E7E
          7E4B4B4B4B4B4BDADADAC5C5C54343434A4A4A52525259595961616163636376
          76764F4F4F3A3A3A4747472B2B2B2E2E2E4141416E6E6E6D6D6D434343323232
          888888FCFCFCF1F1F15A5A5A5151515757575F5F5F6565656C6C6C5959592C2C
          2C4E4E4E2929293737372C2C2C2626262C2C2C3434344343436E6E6EEBEBEBFF
          FFFFFFFFFFA6A6A65959595E5E5E6565656B6B6B6A6A6A2626264E4E4E2F2F2F
          2F2F2F4646464747474E4E4E6363638080808C8C8CEBEBEBFFFFFFFFFFFFFFFF
          FFCFCFCF5151516464646B6B6B7E7E7E8787876E6E6E3B3B3B24242448484847
          47474848485E5E5E6E6E6E818181ECECECFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0
          656565585858727272A6A6A6FFFFFFA9A9A92B2B2B4747475A5A5A4545455B5B
          5B6969697E7E7EEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7B0
          B0B0C4C4C4FFFFFFFFFFFF7373733D3D3D5B5B5B5050505959596666668F8F8F
          ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB1B1B15353534646467C7C7CCCCCCCE9E9E9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACABABABAFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        TabOrder = 0
        TabStop = False
        OnClick = actSelProdutoExecute
      end
      object edDesc: TLabeledEdit
        Tag = 1
        Left = 335
        Top = 35
        Width = 346
        Height = 19
        TabStop = False
        Color = 15790320
        Ctl3D = False
        EditLabel.Width = 131
        EditLabel.Height = 16
        EditLabel.Caption = 'Descri'#231#227'o do Produto'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object edPreco: TEdit
        Left = 687
        Top = 35
        Width = 128
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = '1'
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = edPrecoKeyPress
      end
    end
    object dbGridSel: TDBGridEh
      Left = 30
      Top = 282
      Width = 749
      Height = 183
      DataSource = dsSel
      DynProps = <>
      FooterParams.Color = clWindow
      IndicatorOptions = [gioShowRowIndicatorEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ReadOnly = True
      TabOrder = 5
      Visible = False
      OnDblClick = dbGridSelDblClick
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'codbarras'
          Footers = <>
          Width = 133
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'descricao'
          Footers = <>
          Width = 373
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'valor_varejo'
          Footers = <>
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'est_atual'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
        object DBGridEh2: TDBGridEh
          Left = -749
          Top = -183
          Width = 749
          Height = 183
          DataSource = dsSel
          DynProps = <>
          FooterParams.Color = clWindow
          IndicatorOptions = [gioShowRowIndicatorEh]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ReadOnly = True
          TabOrder = 0
          Visible = False
          OnDblClick = dbGridSelDblClick
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'codbarras'
              Footers = <>
              Width = 133
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'descricao'
              Footers = <>
              Width = 373
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'valor_varejo'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'est_atual'
              Footers = <>
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object StatusBar1: TStatusBar [1]
    Left = 0
    Top = 617
    Width = 1013
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 200
      end
      item
        Width = 350
      end
      item
        Width = 50
      end>
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 0
    Width = 1013
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      1013
      53)
    object Panel3: TPanel
      Tag = 1
      Left = 11
      Top = 4
      Width = 992
      Height = 43
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        992
        43)
      object lbRazao: TLabel
        Tag = 1
        Left = 8
        Top = 6
        Width = 148
        Height = 16
        Caption = 'Empresa do Cidad'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCnpj: TLabel
        Tag = 1
        Left = 8
        Top = 23
        Width = 123
        Height = 16
        Caption = 'CNPJ do cidad'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbData: TLabel
        Tag = 1
        Left = 717
        Top = 6
        Width = 264
        Height = 16
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = 'Hoje: Quinta-feira, 24 de maio de 2012'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 712
      end
      object lbHora: TLabel
        Tag = 1
        Left = 924
        Top = 23
        Width = 57
        Height = 16
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = '20:15:15'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 919
      end
    end
  end
  object Panel9: TPanel [3]
    Left = 0
    Top = 53
    Width = 1013
    Height = 63
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object btnIniciar: TBitBtn
      Left = 7
      Top = 4
      Width = 90
      Height = 55
      Caption = 'Iniciar (F1)'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFE5E5E5C1C1C1C0C0C0C0C0C0C0C0C0BFBFBFBFBFBFBFBFBFBFBF
        BFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE
        BEBEBEBEBEBEBEBEBEBEBEBDBDBDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC6C6C6ECECECEDEDEDEBEBEBECECECEDEDEDEDEDEDEEEEEEEFEF
        EFEFEFEFF0F0F0F0F0F0F1F1F1F1F1F1F2F2F2F2F2F2F3F3F3F3F3F3F4F4F4F4
        F4F4F4F4F4F5F5F5F7F7F7FFFFFFBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC6C6C6EDEDEDEEEEEEEDEDEDEDEDEDEEEEEEEEEEEEEFEFEFEFEF
        EFF0F0F0F0F0F0F1F1F1F1F1F1F2F2F2F2F2F2F3F3F3F4F4F4F4F4F4F5F5F5F5
        F5F5F5F5F5F6F6F6F8F8F8FFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC6C6C6ECECECECECECECECECECECECEDEDEDEDEDEDEEEEEEEEEE
        EEEFEFEFEFEFEFF0F0F0F0F0F0F1F1F1F1F1F1F1F1F1F2F2F2F2F2F2F3F3F3F3
        F3F3F3F3F3F5F5F5F6F6F6FFFFFFBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC6C6C6ECECECEDEDEDECECECEDEDEDEDEDEDEEEEEEEEEEEEEFEF
        EFEFEFEFF0F0F0F0F0F0F1F1F1F1F1F1F2F2F2F2F2F2F3F3F3F3F3F3F4F4F4F4
        F4F4F4F4F4F5F5F5F7F7F7FFFFFFBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC6C6C6EDEDEDEEEEEEEDEDEDEDEDEDEEEEEEEEEEEEEFEFEFEFEF
        EFF0F0F0F0F0F0F1F1F1F1F1F1F2F2F2F2F2F2F3F3F3F3F3F3F3F3F3F4F4F4F5
        F5F5F5F5F5F6F6F6F7F7F7FFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC6C6C6EDEDEDEEEEEEEDEDEDEEEEEEEEEEEEEFEFEFEFEFEFF0F0
        F0F0F0F0F1F1F1F1F1F1F2F2F2F2F2F2F3F3F3F3F3F3F3F3F3F4F4F4F5F5F5F5
        F5F5F6F6F6F6F6F6F7F7F7FFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC6C6C6EEEEEEEFEFEFEEEEEEEEEEEEEFEFEFEFEFEFF0F0F0F0F0
        F0F1F1F1F1F1F1F2F2F2F2F2F2F3F3F3F3F3F3F3F3F3F4F4F4F5F5F5F5F5F5F6
        F6F6F6F6F6F6F6F6F9F9F9FFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC6C6C6EEEEEEEFEFEFEEEEEEEFEFEFEFEFEFF0F0F0F0F0F0F1F1
        F1F1F1F1F2F2F2F2F2F2F3F3F3F3F3F3F3F3F3F4F4F4F5F5F5F6F6F6F6F6F6F6
        F6F6F7F7F7F8F8F8F9F9F9FFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC6C6C6EFEFEFF0F0F0EFEFEFEFEFEFF0F0F0F0F0F0F1F1F1F1F1
        F1F2F2F2F2F2F2F3F3F3F3F3F3F3F3F3F4F4F4F5F5F5F5F5F5F6F6F6F6F6F6F7
        F7F7F8F8F8F8F8F8F9F9F9FFFFFFBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC6C6C6EFEFEFF0F0F0EFEFEFEFEFEFF0F0F0F1F1F1F1F1F1F2F2
        F2F2F2F2F3F3F3F3F3F3F3F3F3F4F4F4F5F5F5F5F5F5F6F6F6F6F6F6F6F6F6F7
        F7F7F8F8F8F8F8F8FAFAFAFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC5C5C5F0F0F0F1F1F1F0F0F0F0F0F0F1F1F1F1F1F1F2F2F2F2F2
        F2F3F3F3F3F3F3F3F3F3F4F4F4F5F5F5F6F6F6F6F6F6F7F7F7F7F7F7F8F8F8F8
        F8F8F8F8F8F9F9F9FBFBFBFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC5C5C5F0F0F0F1F1F1F0F0F0F1F1F1F1F1F1F2F2F2F2F2F2F3F3
        F3F3F3F3F3F3F3F4F4F4F5F5F5F5F5F5F6F6F6F6F6F6F7F7F7F8F8F8F8F8F8F8
        F8F8F9F9F9FAFAFAFBFBFBFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C4C4F1F1F1F2F2F2F1F1F1F1F1F1F2F2F2F2F2F2F3F3F3F3F3
        F3F3F3F3F4F4F4F5F5F5F6F6F6F6F6F6F7F7F7F7F7F7F8F8F8F8F8F8F8F8F8F9
        F9F9FAFAFAFBFBFBFCFCFCFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C4C4F1F1F1F2F2F2F1F1F1F2F2F2F2F2F2F3F3F3F3F3F3F3F3
        F3F4F4F4F5F5F5F5F5F5F6F6F6F6F6F6F7F7F7F8F8F8F8F8F8F8F8F8F9F9F9FA
        FAFAFAFAFAFBFBFBFCFCFCFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC3C3C3F3F3F3F3F3F3F2F2F2F2F2F2F3F3F3F3F3F3F3F3F3F4F4
        F4F5F5F5F6F6F6F6F6F6F7F7F7F7F7F7F8F8F8F8F8F8F8F8F8F9F9F9FAFAFAFB
        FBFBFBFBFBFCFCFCFDFDFDFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC3C3C3F3F3F3F3F3F3F2F2F2F3F3F3F3F3F3F3F3F3F4F4F4F5F5
        F5F6F6F6F6F6F6F6F6F6F7F7F7F8F8F8F8F8F8F8F8F8F9F9F9FAFAFAFBFBFBFB
        FBFBFBFBFBFCFCFCFEFEFEFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC3C3C3F3F3F3F4F4F4F3F3F3F3F3F3F3F3F3F4F4F4F5F5F5F5F5
        F5F6F6F6F6F6F6F6F6F6F7F7F7F8F8F8F8F8F8F9F9F9FAFAFAFAFAFAFBFBFBFB
        FBFBFBFBFBFDFDFDFEFEFEFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C4C4F4F4F4F4F4F4F3F3F3F3F3F3F4F4F4F5F5F5F6F6F6F6F6
        F6F7F7F7F7F7F7F7F7F7F8F8F8F8F8F8F9F9F9FAFAFAFBFBFBFBFBFBFCFCFCFC
        FCFCFCFCFCFDFDFDFFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C4C4F4F4F4F5F5F5F3F3F3F4F4F4F5F5F5F5F5F5F6F6F6F6F6
        F6F7F7F7F8F8F8F8F8F8F8F8F8F9F9F9FAFAFAFAFAFAFBFBFBFBFBFBFCFCFCFD
        FDFDFDFDFDFDFDFDFFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C4C4F5F5F5F6F6F6F4F4F4F5F5F5F6F6F6F6F6F6F7F7F7F7F7
        F7F8F8F8F8F8F8F8F8F8F9F9F9FAFAFAFBFBFBFBFBFBFCFCFCFCFCFCFDFDFDFD
        FDFDFDFDFDFEFEFEFFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C4C4F6F6F6F6F6F6F5F5F5F6F6F6F6F6F6F6F6F6F7F7F7F8F8
        F8F8F8F8F9F9F9F9F9F9FAFAFAFBFBFBFBFBFBFBFBFBFCFCFCFDFDFDFDFDFDFE
        FEFEFEFEFEFFFFFFFFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C4C4F6F6F6F7F7F7F6F6F6F6F6F6F6F6F6F7F7F7F8F8F8F8F8
        F8F8F8F8F9F9F9FAFAFAFBFBFBFBFBFBFBFBFBFCFCFCFDFDFDFDFDFDFDFDFDFE
        FEFEFFFFFFFFFFFFFFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C4C4F6F6F6F8F8F8F6F6F6F6F6F6F7F7F7F8F8F8F8F8F8F9F9
        F9F9F9F9F9F9F9FBFBFBFBFBFBFBFBFBFCFCFCFDFDFDFDFDFDFEFEFEFEFEFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C4C4F7F7F7F8F8F8F6F6F6F7F7F7F8F8F8F8F8F8F9F9F9FAFA
        FAFAFAFAFBFBFBFBFBFBFBFBFBFCFCFCFDFDFDFDFDFDFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFEFEFEFEFEFEFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C4C4F8F8F8F8F8F8F7F7F7F8F8F8F8F8F8F8F8F8F9F9F9FAFA
        FAFBFBFBFBFBFBFBFBFBFCFCFCFDFDFDFDFDFDFDFDFDFEFEFEFFFFFFFFFFFFFF
        FFFFFEFEFEFDFDFDFCFCFCFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C4C4F8F8F8F9F9F9F8F8F8F8F8F8F8F8F8F9F9F9FAFAFAFBFB
        FBFBFBFBFBFBFBFCFCFCFDFDFDFDFDFDFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFE
        FEFEFDFDFDFCFCFCFBFBFBFFFFFFBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C4C4F9F9F9FAFAFAF8F8F8F9F9F9FAFAFAFAFAFAFBFBFBFBFB
        FBFBFBFBFCFCFCFDFDFDFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD
        FDFDFCFCFCFBFBFBF9F9F9FFFFFFBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C4C4F9F9F9FAFAFAF8F8F8F9F9F9FAFAFAFBFBFBFBFBFBFBFB
        FBFCFCFCFDFDFDFDFDFDFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFC
        FCFCFBFBFBF8F8F8F6F6F6FDFDFDBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C4C4FAFAFAFCFCFCFBFBFBFBFBFBFCFCFCFCFCFCFCFCFCFDFD
        FDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFB
        FBFBFAFAFAF7F7F7F5F5F5FBFBFBBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFDFDFDFBFBFBFFFFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE2E2E2BEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBEBEBEBEBEBEBFBFBFBE
        BEBEBEBEBEBEBEBEBEBEBEBDBDBDDADADAFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      TabOrder = 0
      OnClick = actIniciarExecute
    end
    object btnFinalizar: TBitBtn
      Left = 97
      Top = 4
      Width = 90
      Height = 55
      Caption = 'Finalizar (F2)'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
        F0F0F0EFEFEFEFEFEFEEEEEEEDEDEDECECECECECECEEEEEEEDEDEDECECECECEC
        ECEBEBEBEBEBEBEBEBEBEBEBEBEAEAEAEBEBEBEBEBEBEBEBEBEBEBEBE9E9E9E8
        E8E8E9E9E9E9E9E9EAEAEAEBEBEBECECECF6F6F6FFFFFFFFFFFFFFFFFFE8E8E8
        7777772C2B2B3534343F3E3D403F3E5353537272727777777878787B7B7B7B7B
        7B7C7C7C7C7C7C7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D71707042
        3F3E3E3B3A3D3A393A3837393736322F2E484747E6E6E6FFFFFFFFFFFFD6D6D6
        3431301C16141C16141C1513181211312E2C8D8D8C9292928D8C8C8A89888A89
        888B89898F8F8F8E8E8E8E8E8E8E8E8E8D8D8D8E8E8E8F8F8F93939381807F22
        1B191C15131E17152019171E17151B1413231D1BD2D2D2FFFFFFFFFFFF91908F
        1F18161D17151E18162019171D1614322B298F8F8F979797474240261F1D2922
        202D26247E7C7C9393939191919090908F8F8F90909090909095959583828126
        1F1D1F18162019171E18161F1816231B1928211FD5D4D4FFFFFFFFFFFF8F8D8D
        221B19211A18221B19231C19201916342E2C9696969C9D9D423D3B201815241C
        1928201E807E7E9999999595959696969595959595959696969A9B9B89888729
        2220221B18241D1A211A18241D1A27201D2E2724D5D4D4FFFFFFFFFFFF908E8E
        241D1B221B19251E1B261F1C231C1938322F9A9A9AA1A1A2484240251C192921
        1E2D25228483829F9FA09B9B9B9A9A9A9B9B9B9C9C9C9C9C9C9FA0A08C8B8A2D
        2522251E1B27201D221C19261E1C2D2522322A28D5D5D4FFFFFFFFFFFF908F8E
        27201D261F1C27201D28211E261E1B3B35329D9D9DA5A6A64C4644271F1C2C24
        203028258B8989A5A6A6A0A0A09F9F9F9F9F9F9E9E9EA0A0A0A4A5A58E8D8C2E
        272429201D2A2320241D1B251E1B312926312A27D5D5D4FFFFFFFFFFFF918F8F
        2B232029221F2B23202C242129201D3F3836A5A5A5AEAEAE504A482B231F2F26
        23332C288F8E8DA9A9A9A5A5A5A5A5A5A4A4A4A4A4A4A4A4A4A7A8A892909032
        2B282D24212E2623261F1D271F1C2B2320322B27D5D5D5FFFFFFFFFFFF928F8F
        2E25222C24212E26232F27242C2421423B38ABABABB4B4B4544E4B2E2522322A
        26362F2B939191AFAFAFACACACADADADABABABABABABABABABAEAEAE98969636
        2E2B2F272430282528211F29211F2E2623352D2AD5D5D5FFFFFFFFFFFF92908F
        3128252F2724312925322A272F2723453E3BB0AFAFB8B8B8544E4A2B231F2F27
        23342C28979695B3B3B3ADADADAFAFAFB0B0B0AFAFAFAFAFAFB3B3B39D9C9C39
        312D322A26342C282A23202A222031292638302DD6D5D5FFFFFFFFFFFF929090
        342C28322A27332B28352D29312A2549423FBDBDBEC7C7C87975745953515C57
        555F5A58ADACACC2C3C3BDBEBEBDBEBEBEBFBFBFBFC0C0C1C1C5C6C6AAA9A838
        312D322A26342C2828211E2C2521342C283A312FD6D5D5FFFFFFFFFFFF939190
        362E2A352D29362E2A382F2B372F2B4038347B7573817C7B807B7A807D7B827E
        7C827E7C85807F86818087828187838187828187828086817F888381746F6C35
        2D2A3029262E2624292220342C28362E2A3C3432D6D5D5FFFFFFFFFFFF949291
        39312D38302C3A312D3B322F3C332F3C322F352B27352A27372D29382E2A392E
        2B392F2B392F2B392E2A392F2B392F2B392F2B392E2B382D2A372C29382E2B40
        36333F35323D35313D34303A312E39302C3E3733D6D6D5FFFFFFFFFFFF939291
        3C33303B322F3B312E362C2A372D2A392F2C3B312E3C322F3E34314036334137
        34423835443A36443A37443A374238364238344036343F35323E34313C32303A
        302D382E2B372E2B3C322F3D33303D3330413A36D6D6D5FFFFFFFFFFFF949291
        3F36323C3330443B38655B576C625E6D635E6E645F6F6661706863746A65776C
        67786F6A7A706B7B716C7A716C796F6A776E69756C67736A657167626E65606D
        645F6C635E675F5A473E3A3F35323F3532443B38D7D6D6FFFFFFFFFFFF949292
        4338353A302E746863DBCEC5E0D6CEDFD5CDDED4CCDED4CCDED4CCDED4CCDED4
        CCDDD3CBDDD3CBDDD3CBDDD3CBDDD3CBDED3CBDED4CCDED4CCDED4CCDED4CCDF
        D5CDE0D6CEE0D4CB7C706B3B312E413734463C3AD7D6D6FFFFFFFFFFFF959392
        453B383D33307D716ADCD1C8E0D6CEDFD5CDDFD5CDDFD5CDDFD5CDDFD5CDDFD5
        CDDFD5CDDFD5CDDFD5CDDFD5CDDFD5CDDFD5CDDFD5CDDFD5CDDFD5CDDFD5CDDF
        D5CDE0D6CEE2D7CF867C763D3331443A37493F3CD7D6D6FFFFFFFFFFFF969493
        483E3B403633807570DDD3CADFD5CEDED4CDDED4CDDED4CDDED4CDDED4CDDED4
        CDDED4CDDED4CDDED4CDDED4CDDED4CDDED4CDDED4CDDED4CDDED4CDDED4CDDE
        D4CDDFD4CDE2D8D1897F7A403633473D3A4B413ED7D6D6FFFFFFFFFFFF969493
        4A403D423835837873E2D8D0E5DDD8E4DCD7E4DCD7E4DCD7E4DCD7E4DCD7E4DC
        D7E4DCD7E4DCD7E4DCD7E4DCD7E4DCD7E4DCD7E4DCD7E4DCD7E4DCD7E4DCD7E4
        DCD7E5DDD8E7DED78B817C4339364A403D4E4441D7D6D6FFFFFFFFFFFF969493
        4D423F453B37857B75E4DAD4E6DFD8E5DED7E5DED7E5DED7E5DED7E5DED7E5DE
        D7E5DED7E5DED7E5DED7E5DED7E5DED7E5DED7E5DED7E5DED7E5DED7E5DED7E5
        DED7E6DFD8E9E0DA8E8480453B384C423E504643D7D6D6FFFFFFFFFFFF979594
        4F4441473D3A887E78E7DFD8EBE5E0EAE4DFEAE4DFEAE4DFEAE4DFEAE4DFEAE4
        DFEAE4DFEAE4DFEAE4DFEAE4DFEAE4DFEAE4DFEAE4DFEAE4DFEAE4DFEAE4DFEA
        E4DFEBE5E0EDE5E0908782483E3A4F4541524845D7D6D6FFFFFFFFFFFF979594
        524743493F3C8B807BE9E2DBEBE5E0EAE4DFEAE4DFEAE4DFEAE4DFEAE4DFEAE4
        DFEAE4DFEAE4DFEAE4DFEAE4DFEAE4DFEAE4DFEAE4DFEAE4DFEAE4DFEAE4DFEA
        E4DFEBE5E0EEE8E2938A854B413D524844554B47D8D6D6FFFFFFFFFFFF979595
        544A454B413D8C827DEDE6E0F1ECE8F0EBE7F0EBE7F0EBE7F0EBE7F0EBE7F0EB
        E7F0EBE7F0EBE7F0EBE7F0EBE7F0EBE7F0EBE7F0EBE7F0EBE7F0EBE7F0EBE7F0
        EBE7F1ECE8F2ECE7958C874D433F544A46564D49D8D7D6FFFFFFFFFFFF989695
        574C484E44408E857FEFE8E3F2EDEAF1ECE9F1ECE9F1ECE9F1ECE9F1ECE9F1EC
        E9F1ECE9F1ECE9F1ECE9F1ECE9F1ECE9F1ECE9F1ECE9F1ECE9F1ECE9F1ECE9F1
        ECE9F2EDEAF4EFEA978E8A504542564C48594F4BD8D7D6FFFFFFFFFFFF989695
        594E4A514743918782F1EBE8F4F0EEF3EFEDF3EFEDF3EFEDF3EFEDF3EFEDF3EF
        EDF3EFEDF3EFEDF3EFEDF3EFEDF3EFEDF3EFEDF3EFEDF3EFEDF3EFEDF3EFEDF3
        EFEDF4F0EEF6F2EE99918D534844594F4B5B514ED8D7D6FFFFFFFFFFFF989696
        5A504C534945928984F5F0EEFAF8F7F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7
        F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9
        F7F5FAF8F6FAF7F59B938E544A465B514D5D5350D8D7D7FFFFFFFFFFFF999796
        5D534F564B47948B86F6F3F0FAF8F7F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7
        F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9F7F5F9
        F7F5FAF8F6FCF9F79D9591574C485D534F5F5652D8D7D7FFFFFFFFFFFF989695
        695F5B665C58918883F9F6F4FEFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFEFEFEFFFEFC9E96925A4F4B5F5551605753D8D7D7FFFFFFFFFFFF9A9797
        4F45413F3633908782FDFAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF9D95915B504C605652615854D8D7D6FFFFFFFFFFFFB1B0AF
        7066636E656199918DDEDBD8E1E0DFE0DFDEE0DFDEE0DFDEE0DFDEE0DFDEE0DF
        DEE0DFDEE0DFDEE0DFDEE0DFDEE0DFDEE0DFDEE0DFDEE0DFDEE0DFDEE0DFDEE0
        DFDEE1E0DFE0DEDB9F9895746B67746A66837C7AECECECFFFFFF}
      Layout = blGlyphTop
      TabOrder = 1
      OnClick = actFinalizarExecute
    end
    object btnCancelar: TBitBtn
      Left = 187
      Top = 4
      Width = 90
      Height = 55
      Caption = 'Cancelar (F3)'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1FDF7F7FEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
        FCFFEEEFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE7E8FC9090F3AAABF6F9F9FEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF
        C0F88A8AF3D2D2F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE9E9FB6F70EB6666EE6163EFA8A9F5F8F8FEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3F847
        4CEB6966EF575AE9D4D4F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDFDFF86A6AE00D0FDC918DFA7373F7242CE9A4A5F4F3F3FDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFFBFC0F73637E420
        24EB4F4DF91215E04D4DDBCACAF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE5E5F86161D90305CE1F1FE91210F32827FF1F22EE1F20E19E9FF2F7F7
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABBF63333E21718E522
        21FB0807F32421EC0607CF4545D3CFCFF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E9E9F96E6ED40909C71D1EE00B0AE30000E20000F11A19FC1A1AE72325DFA8A9
        F2F9F9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C3F63737E11413E12624FA03
        02F20000E20B09E32320E30808C75252CED6D6F2FFFFFFFFFFFFFFFFFFECEBFA
        6E6ED50808B91E1DD70A09D50000D50000DC0000E20000EC1B19FC2121ED2426
        DDA9AAF0F9F9FEFFFFFFFFFFFFFFFFFFC3C3F53737DE1817E22423FA0303F100
        00E10000DC0000D50908D5211ED90708BD5353CCD6D6F1FEFEFFFCFCFE9894E1
        4141D22C2AD60807C70000C60000CE0000D40000D90000DE0000E71715F9201F
        EC2425D9A8A8EFFAFAFEFFFFFFC3C3F53636DC1919E42320FA0101EC0000DE00
        00DA0000D40000CE0000C60605C31D1CD02020C97472D7EBEBF7FBFAFE7573CF
        B5AFF43733E40000BB0000BE0000C60000CB0000D10000D60000D90000E01715
        F61F1EE82324D7AAACF3C2C3F73838DB1718E4211FF90101E50000D90000D600
        00D10000CC0000C50000BE0000BA1411D15650DD615ECAEDEDF7FFFFFFE5E5F4
        4746C52C29D10B09CA0000B90000BC0000C30000C90000CE0000D10000D30000
        DB1A17F41B1DE6353AE1494BE41014E1211EF60100E00000D30000D10000CE00
        00C90000C40000BC0000BA0B0ACB211ECC2626B9D0D0EBFFFFFFFFFFFFFFFFFF
        DFDFF23030AF1B19C70D0CCA0000B80000BA0000C00000C40000C80000CB0000
        CC0000D51615F14B49EF5654EB1D1CF40302DB0000CD0000CC0000C80000C400
        00C00000B90000B80D0CCA1A18C61D1EA8C8C8E7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFDFDFF13131AF1C19C4100DC90000B40000B50000BB0000BD0000C00000
        C30000C30000CD2826F03B37F80100D60000C30000C30000C10000BE0000BB00
        00B50000B5110FCB1817C31C1CA7C8C8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDFDFF13D3DAE1B18BD100EC90000AF0000AF0000B40000B60000
        B90000BB0000BA0000C60000CD0000BB0000BB0000B90000B70000B40000AF00
        00B0110FC81A18BE2424A2C9C9E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFEDEDF73B3BA71E1BBC0E0DC50000A80000A80000AC0000
        AF0000B00000B20000B20000B10000B20000B00000AF0000AD0000A80000A910
        0FC71C1ABC21229DD8D8EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE0E0F13131A21F1BBB0C0ABD0000A000009F0000
        A40000A70000A80000A80000A80000A80000A60000A40000A00000A10D0BBF1D
        1AB91D1D98CACAE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0EF3636A2221FBF1613CA0101AE0000
        9900009B00009D00009D00009D00009C00009B00009800009F110FBD231FBF22
        229BCACAE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAD23F3BB2A69EF32C29E30000
        A70000A00000A10000A20000A10000A100009F0000A00505C2574EDC3C36B085
        85C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3D93B3B902725AD433FE00B0BC60000
        AA0000A80000A80000A80000A80000A80000A80000A90101B81513CE1715A629
        298AA9A9C9F8F8FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCECEDD414180110F7E1F1BCB0000B70000AA0000
        AC0000AD0000AD0000AD0000AD0000AD0000AD0000AD0000AB0000B20C0AC50F
        0D832B2B72B4B4CCFCFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFCFCFDA4848780F0D68201CCA0303BF0000AE0000B00000
        B00000B00000B00000AF0000AF0000B00000B00000B00000B00000AF0000B80E
        0CC40E0C75313168B5B5C7F9F9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC3C3CC424266100E561F1BCC0302CE0000B80000BA0000BA0000
        BA0000BA0000B90000C20000BF0000BA0000BB0000BA0000BA0000BA0000B900
        00C40E0CCD0F0D692B2B53A9A9B8F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC3C3C537374B15134D2C28CE0405E00001CD0101CF0101D00101D00101
        D00001CE0404D53934EF2E2AEC0001D30001CE0101D00101D00101D00101CF01
        01CF0001D91210D814115E232339A9A9AEF8F8F8FFFFFFFFFFFFFFFFFFFFFFFF
        C8C8CB3939391918393E38D51412E60D0CD60F0DD80F0DD80F0DD80F0DD80F0D
        D70B0ADA2623ECA199F1938CF01A17EA0C0CDA0F0DD70F0DD80F0DD80F0DD80F
        0DD80E0DD70E0DE1211EE51A1756242424AEAEB2FBFBFBFFFFFFFDFDFDD3D1D8
        4B476419162B4640C92822EE211CDE231EDF231EDF231EDF231EDF231EDE221E
        E1322CEE2B2BD94D4DCE514FC92422D3302AEF231EE0231EDE231EDF231EDF23
        1EDF231EDF231EDE221EE9332DE11B1842323044BDBAC6FAFAFAF8F8F8786E92
        7B6C9C948BE84941F43730E43B33E53B33E53B33E53B33E53B33E53A32E74A41
        F3302FD61C1EB8CDCDECE3E3F43132B4312DCD4840F43B33E83B33E53B33E53B
        33E53B33E53B33E53B33E53932EE473FE94C408570648DE8E8EAFCFCFC817D8B
        6A5A8D8B81DD6056F65248EB544AEB544AEB544AEB534AEB5449ED675EF73D3A
        D91C1DBBC8C8EDFFFFFFFFFFFFDFDFF43030B73C37D16157F7544AED544AEB54
        4AEB544AEB544AEB5349EB574DF3594FDD4032776B657BF3F3F3FFFFFFFEFEFE
        70707615102D645BC97368FC6A60F06A60F16A60F16C62F2847AFB4B49DB191A
        BCC8C8EFFFFFFFFFFFFFFFFFFFFFFFFFDFDFF52F2FBE4742D57A70FB6B62F26A
        60F16B61F16A60F06F64F96E64DE1F1D39525255F5F5F5FFFFFFFFFFFFFFFFFF
        FFFFFF5D5D6718174D7870D9897FFD7E75F48077F6978EFD5553DA0D0EBABCBC
        EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7F41F1FBB524DD68F85FD82
        78F67F76F4867DFB847BEA2826623F3F4AF2F2F2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF8F8F95959811614678881DBBAB3FCB5ADFC5957DB1212BAB4B4ECFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDF22727BD5B56D5A8
        9FFDA49BFB928AE82523773D3D6BE9E9ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F9FB69699F322EA0E4E0FC9795EB1A1ABDC6C6F0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDF62F2FBD72
        6FDFC3BCF93330A14B4B8BEAEAF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF7775C19E97E46362D9C8C8EFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFF54E
        4ECF9C95E45957B6F5F5F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9491D5C4C4EAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA
        D9F28E8BD3F4F4F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      TabOrder = 2
      OnClick = actCancelarExecute
    end
    object btnSemcliente: TBitBtn
      Left = 277
      Top = 4
      Width = 90
      Height = 55
      Caption = 'Sem Cliente (F4)'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7
        F7C5C5C5BBBBBBBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBDBEBE7E7F9A79798CBC
        BCBCBCBCBCBCBCBCBCBCBCBCBCBCB7B7B8666694BBBBBCFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE7272
        721212120E0E0E0E0E0E0E0E0E0D0D0D0D0D0D0B0B0F3B55847B7BFC8888EF0C
        0C170F0F0F0E0E0E0E0E0E0E0E0E31316D7373FF2C2C8A969697FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD2525
        2503030303030302020202020207070711111114135A494CEC6F6FFF9A9AFF82
        83DB03020A0303030303032525568585FF4141FF3F3FFF474774FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7C
        7C0202020202020707071111111E1E1E2C2B2B1E21255075AE6060FF7E7EFFA7
        A7FF6D6DC901010518183E8F8FFF6060FF4545FF2121A0CECED3FFFFFFFFFFFF
        FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFBFBFBD5D5
        D50808081414142020202C2C2C3636364342412D363C87C5F26586C36868FF7D
        7DFF9494FF5E5ED17C7CFD6A6AFF5151FF2F2FB3545459FFFFFFECECEC9E9C9B
        948D8C948D8D9690909893929A96959C98989E9B9B9F9B9B9F9B9B9F9B9BA5A1
        A1635F5F2122222E2F2F4141414C4C4C5653523B4E5A99D7FF9CD6FF5F7EC05D
        5DFF6464FF6D6DFF5F5FFF4D4DFF3636C5383840D8D8D8FFFFFFB0ABABD1BAB7
        CDB4B0D4BDBADCC7C4E4D1CEEBDAD8F3E3E2FAECECFEF2F2FFF2F2FEF1F1FFF2
        F2F6E8E9B0A6A67B72705C55535C5957625B56527389A3E1FF9DD7FF9FDAFF3E
        4EC34C4CFF4D4DFF3838FF2D2DF271717CE0E0E0FFFFFFFFFFFFBCB4B2CCB4B0
        BDA5A1C6B0ADCEB9B6D5C2C0DBCAC8E2D2D2E9DCDBEFE3E3F2E8E8F3E9E9F2E7
        E7EFE2E2F6E5E3B0B4BF51718A23516E284F676CA2C5A7E1FF9BD7FE7DA2C828
        2CE55353FF5656FF4949FF1C1CFC4545ACF3F3F3FFFFFFFFFFFFBCB8B8D1B9B4
        BBA29DC4ADA9CBB5B2D1BEBBD7C5C3DECDCCE4D6D5EADDDCEEE2E2F0E6E5F0E7
        E6F2E8E7F4E7E59AA8B609507C1259850955814E92BC8CC9F46493BE1E21E66B
        6BFF7070FF1F1FFD4C4CFF7575FF4040FF4C4CA7FAFAFAFFFFFFCDCCCBCFB8B4
        B89F9BC1A9A5C7B1AECEB9B6D3C1BED9C8C6E0D0CFE5D7D6E9DCDBEBDFDEEDE2
        E1EBE2E152809F175B84145A84135C870855805597C480AAD32529DD9292FFA3
        A3FF3333F50E3D790C27A97A7AFFABABFF5454FF5B5BA2F9F9F9DEDDDDCCB6B2
        B69C97BDA5A0C3ADA9C9B4B1CFBBB8D5C2C0DBCAC9E0D1CFE4D6D5E6DAD9ECDF
        DDC2C4CB537D99336F920F5C870E5B863C81AB5D75C21E23D0BABAFFD8D8FF4F
        4FFB3D66A70F5E8A15628E1928B8A9A9FFE1E1FF5959FF8686ABF4F4F4C5B1AE
        B49B96B9A09BBFA7A3C5AEABCAB4B1CFBCB9D6C4C2DBCBC9DFD0CFE3D5D3DDD2
        D29BA6B36F889F3162860F5B860D5F8A94C5E987AFEC4862DA9595FF7979FE54
        74C09DD3FC1978A612709F216E944141D2C1C1FF4747DED3D3DFFFFFFFC0B1AF
        B89F9AB49A95BBA29EC0A8A4C5AEAACAB5B2D1BEBBD6C5C2DACAC8DDCFCDDFD2
        D0E7D9D6EADCD9A1ADBA165F89166894A6D4F798D3FF97D2FF3C52D44E65BCAD
        DCFFA4D9FF2A86B30C78AA2880A9D9D9DD3C3CC8CFCFDFFFFFFFFFFFFFD5D2D2
        C5ADA8AE958FB49C96BBA29DBFA7A3C5AEAACBB7B4CFBCBAD4C2C0D8C9C7DACB
        C9DDD0CEE0D4D2E9DAD72D789F2579A5B1DCFE97D3FF9BD5FF7DA3E390B2DAC5
        E6FFD0EDFF4399C4087AAD398DB1FFFFFF9F9FCAFDFDFEFFFFFFFFFFFFFFFFFF
        EEE8E7D1C2BEBBA5A1B69D98B89F9BBEA6A2C4ADA9D2C0BDD7C7C4D1C0BEE1D4
        D3D9CBC8DFD3D1F0E1DD4B8BAD3690BCBCE5FF9DD7FFA9DCFFB3DFFFC1E5FFCD
        EAFFE6F7FF5EA9CE057EB35891AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFAF8F8EEE8E7DDD0CECFBBB7D4C1BDFBF5F3FAF2EFE5D6D1FFFE
        FCF4ECE9E6D9D7E3D0CB638EA42D93C39FD5F781C3EF94CCF0C5E9FFCBEAFFD7
        EFFFF2FBFF55A4C90482B889A9B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDB3B9BDBAE2F69FC7E2A2C8E2BDE0
        F5B6D4E5EBE8E8FFFFFF8FA7B2107FB31378AB1C7FB13893C1CDEDFFD6EFFFE4
        F5FFECF7FE258DBC0A88BEC7CED2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94A8B489CDFA8BC5F58CC5F488C5
        F18EBFDFFFFFFFFFFFFFB2BDC2117CAE0D76A50C77A80374A783C2E2EDFAFFFF
        FFFF91C9E4017FB5248CB8F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8BDBF87B8DAA7D8FF9BD1FF98D0FFA0D4
        FF95C8EAAAB0B4FFFFFFE0E3E4107DAE0F7AAB0F7CAD0B7BAD1888B9D3EDFBA4
        D6EE0F88BB0B8DC373A2B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF9F9F997B9D5B6E4FF99D0FF94CEFF95CFFF94CF
        FFA2DBFF9FC0D9FBFBFBFFFFFF4691B20F7FB20E7FB10D81B30880B32495C70A
        88BD0987BB0E8EC2DCE0E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE7E8E8B1DAFC9BD3FF96D0FF9AD3FF9FD5FF9DD4
        FF96D3FFA3D5FAE7E7E7FFFFFFC9D3D70E85B90D82B40D84B70D86B90785B80B
        89BC0D90C584B8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC5C8CAB5E2FF9AD3FFA1D6FFA8D9FFAEDCFFB4DF
        FFADDCFFA5DEFFC1C4C6FFFFFFFFFFFFAFD8E92B95C00C88BB0C8ABD0C8BBF24
        98C793CEE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF6F8592BAE4FFA8DAFFAFDDFFB5DFFFBAE2FFBFE4
        FFCBEAFFB8E5FF4C728AE3E3E3FFFFFFFFFFFFF1F8FBC0E0EEA9D6E8BCE0EEEE
        F7FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE3E4E424658BB5DCF8B7E1FFBCE2FFC1E5FFC6E8FFD4F1
        FFCFEAFDA6CDE82074A4658190FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFA9B1B60C669693C4E3C8EBFFC6E8FFCEECFFD5F1FF93B9
        D23871961B5E872D71972C6F93F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF7B96A3086EA05EA5C9D7F1FFD6F1FFD1ECFC6595B40D52
        7D0D5984266E964A89AD4182A3FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF7094A50C7AAC2F8DB9E1F7FFCAE5F64F86A80A547F1262
        8D1C6D973780A75698BC538FABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9CB2BC0D87BC178BBC94C1DC3B789E0A5984136692146C
        982A7CA64690B55DA7CB83A5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF0F1F13C99BF0F83B513618D0E5F8B136A96116F9B1E7A
        A63A8CB55AA1C448A2CBDDE1E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC1CACF156794126692136D9A1173A01479A72E89
        B54E9DC355A7CC8EC7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFCFCFC5999B912729E1276A4117BAA2388B63D98
        C344A2CB8FCAE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCFD90C0D6489CC13898C250A8CD89C6
        E0D9EDF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      TabOrder = 3
      OnClick = actSemClienteExecute
    end
    object btnAlterar: TBitBtn
      Left = 367
      Top = 4
      Width = 90
      Height = 55
      Caption = 'Alterar Item (F6)'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFE7E7E7BABABAA4A4A4A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
        A6A6A6A6A5A5A5A5A5A5A6A6A6A6A6A6A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5
        A5A5A5A5A5A5A5A5A4A4A4A8A8A8E0E0E0F4F4F4FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCCCCCCBCBCBCFFFFFFF4F4F4F4F4F4F4F4F4F3F3F3F3F3F3F3F3F3F2F2
        F2F2F2F2F2F2F2F1F1F1F1F1F1F1F1F1F0F0F0F0F0F0F0F0F0F0F0F0EFEFEFEF
        EFEFEFEFEFEFEFEFF7F7F7E3E3E3C3C3C3E8E8E8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BBBBBBFCFCFCEEEEEEEDEDEDEDEDEDEDEDEDECECECECECECECEC
        ECEBEBEBEBEBEBEBEBEBEAEAEAE9E9E9E9E9E9E9E9E9E8E8E8E8E8E8E8E8E8E8
        E8E8E7E7E7E7E7E7EFEFEFDDDDDDC5C5C5E9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BBBBBBFAFAFAECECECECECECECECECEBEBEBEBEBEBEBEBEBEAEA
        EAEAEAEAEAEAEAE9E9E9E9E9E9E8E8E8E8E8E8E7E7E7E7E7E7E7E7E7E7E7E7E6
        E6E6E6E6E6E6E6E6EDEDEDDBDBDBC5C5C5EAEAEAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BBBBBBFBFBFBE7E7E7ECECECECECECECECECECECECEBEBEBEBEB
        EBEBEBEBEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE9E9E9E9E9E9E8E8E8E7E7E7E7
        E7E7E7E7E7E7E7E7EEEEEEDCDCDCC5C5C5EAEAEAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D09B9B9BCECECEDBDBDBDFDFDFEAEAEAEDEDEDEDEDEDECECECECEC
        ECECECECEBEBEBEBEBEBEBEBEBEAEAEAEAEAEAEAEAEAE9E9E9E9E9E9E9E9E9E7
        E7E7E7E7E7E7E7E7EFEFEFDCDCDCC5C5C5EAEAEAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0716E6D7C7979727F86BABDBED5D5D5E6E6E6EEEEEEEDEDEDEDED
        EDEDEDEDECECECECECECECECECEBEBEBEBEBEBEBEBEBEAEAEAEAEAEAEAEAEAEA
        EAEAE9E9E9E8E8E8EFEFEFDDDDDDC5C5C5EAEAEAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0AEB1B1D7DCDE82C3DE5187A2879197C4C4C4DDDDDDE8E8E8EDED
        EDEDEDEDEDEDEDECECECECECECECECECEBEBEBEBEBEBEBEBEBEAEAEAEAEAEAEA
        EAEAEAEAEAE9E9E9F1F1F1DFDFDFC5C5C5EAEAEAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BCBCBCFEFEFEC3E5F17AC3E13E7DA65272799EA59FD4D4D4E7E7
        E7EEEEEEEEEEEEEEEEEEECECECECECECEDEDEDEBEBEBEBEBEBEBEBEBEBEBEBEA
        EAEAEAEAEAE9E9E9F1F1F1E0E0E0C5C5C5EAEAEAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BDBDBDFFFFFFECF0F19BDAF670C4B041A25032843395A195D7D7
        D7E7E7E7EEEEEEEEEEEEEEEEEEEDEDEDEDEDEDEDEDEDECECECECECECECECECEB
        EBEBEBEBEBEBEBEBF2F2F2E0E0E0C5C5C5EAEAEAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCFCFCFBCBCBCFFFFFFF2F2F2CDE5E98CD6976DCB6745AB4430883096A0
        96D4D4D4E7E7E7EEEEEEEEEEEEEEEEEEEEEEEEEDEDEDEDEDEDECECECECECECEC
        ECECECECECEBEBEBF3F3F3E0E0E0C5C5C5E9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BDBDBDFFFFFFF3F3F3F2F3F3B9E0B68BD48B6BC96B44AA442F86
        2F97A297D7D7D7E9E9E9EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDEDEDED
        EDEDEDEDEDECECECF4F4F4E1E1E1C5C5C5E9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BDBDBDFFFFFFF4F4F4F3F3F3F3F3F3B9DFB98CD38C6DCA6D44AB
        442F872F96A296D7D7D7E8E8E8EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEED
        EDEDEDEDEDEDEDEDF4F4F4E1E1E1C5C5C5E9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BEBEBEFFFFFFF4F4F4F5F5F5F3F3F3F4F4F4B8E0B88DD48D6CCA
        6C45AA452F872F99A399D6D6D6E8E8E8EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEF5F5F5E2E2E2C5C5C5E9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BEBEBEFFFFFFF6F6F6F5F5F5F5F5F5F4F4F4F4F4F4B8E0B88BD3
        8B6CC96C44AB4430873098A398D8D8D8EBEBEBF0F0F0EFEFEFEFEFEFEEEEEEEE
        EEEEEEEEEEEEEEEEF6F6F6E3E3E3C5C5C5E9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BEBEBEFFFFFFF6F6F6F6F6F6F5F5F5F5F5F5F5F5F5F4F4F4B9E0
        B98DD58D6DCA6D45AA452F882F98A298D7D7D7EAEAEAF1F1F1EFEFEFEFEFEFEE
        EEEEEEEEEEEEEEEEF6F6F6E3E3E3C5C5C5E9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BEBEBEFFFFFFF7F7F7F7F7F7F7F7F7F6F6F6F6F6F6F5F5F5F5F5
        F5B8E0B88BD48B6BC96B45AA452F862F99A499DADADAECECECF1F1F1F1F1F1F0
        F0F0EFEFEFEFEFEFF6F6F6E3E3E3C5C5C5E9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BFBFBFFFFFFFF8F8F8F7F7F7F7F7F7F7F7F7F6F6F6F6F6F6F6F6
        F6F5F5F5B9E1B98CD48C6DCA6D44AB4430873098A398DADADAEAEAEAF2F2F2F2
        F2F2F1F1F1EFEFEFF7F7F7E4E4E4C5C5C5E9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BFBFBFFFFFFFF8F8F8F8F8F8F8F8F8F8F8F8F7F7F7F7F7F7F7F7
        F7F6F6F6F5F5F5B9E1B98CD48C6BC96B45AB453087309AA49AD9D9D9ECECECF3
        F3F3F3F3F3F1F1F1F9F9F9E4E4E4C5C5C5E9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BEBEBEFFFFFFF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F7F7F7
        F7F7F7F7F7F7F7F6F6F6B9E1B98BD48B6CCA6C44AB4430873099A499DCDCDCED
        EDEDF4F4F4F4F4F4FBFBFBE4E4E4C5C5C5EAEAEAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BEBEBEFFFFFFF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F7F7F7F7F7F7F6F6F6BAE1BA8DD58D6CCA6C44AA442F882F99A499DA
        DADAEFEFEFF6F6F6FEFEFEE4E4E4C5C5C5E9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCFCFCFBDBDBDFFFFFFF6F6F6F8F8F8F8F8F8F9F9F9F8F8F8F9F9F9F9F9
        F9F8F8F8F8F8F8F8F8F8F7F7F7F7F7F7B9E1B98BD38B69C96944A845638565A6
        A6A7DFDFDFF2F2F2FFFFFFE7E7E7C5C5C5E8E8E8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BDBDBDFFFFFFF5F5F5F7F7F7F8F8F8F9F9F9F9F9F9F8F8F8F9F9
        F9F9F9F9F9F9F9F8F8F8F8F8F8F8F8F8F7F7F7BBE2BB8FD58FB4D6B6A09EA381
        8183A7A8A7E1E1E1F6F6F6EAEAEAC4C4C4E6E6E6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BEBEBEFFFFFFF5F5F5F6F6F6F7F7F7F8F8F8F8F8F8F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F8F8F8F9F9F9CBE3CBEBE4EBD3D4D59C
        9D9D7A7A82A4A5AEDFDFDFE1E1E1CACACAEDEDEDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BEBEBEFFFFFFF6F6F6F7F7F7F7F7F7F7F7F7F8F8F8F8F8F8F9F9
        F9F9F9F9F9F9F9F9F9F9FAFAFAFAFAFAFAFAFAFAFAFAFBFBFBE3E0E3EAEAE9D2
        D3D4696CB85054BBAAAAB1C6C6C6E7E7E7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BEBEBEFFFFFFF7F7F7F7F7F7F7F7F7F8F8F8F8F8F8F8F8F8F9F9
        F9F9F9F9F9F9F9FAFAFAFAFAFAFAFAFAFBFBFBFBFBFBFCFCFCF9F9F9C5C5C7BE
        C2EB999EE65459D68B8B9AB7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BFBFBFFFFFFFF8F8F8F8F8F8F9F9F9F9F9F9F9F9F9FAFAFAFAFA
        FAFAFAFAFAFAFAFBFBFBFBFBFBFBFBFBFCFCFCFCFCFCFDFDFDF6F6F6CDCDCDC8
        CCED9098EA9193B9AFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BFBFBFFFFFFFF8F8F8F9F9F9F9F9F9F9F9F9FAFAFAFAFAFAFAFA
        FAFBFBFBFBFBFBFBFBFBFBFBFBFCFCFCFCFCFCFCFCFCFDFDFDF3F3F3D3D3D3DD
        E0F8989EEB8B8DA6FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0BFBFBFFFFFFFF9F9F9F9F9F9F9F9F9FAFAFAFAFAFAFAFAFAFBFB
        FBFBFBFBFBFBFBFBFBFBFCFCFCFCFCFCFDFDFDFDFDFDFAFAFAEDEDEDD2D2D2EE
        EEEEB8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0D0D0C0C0C0FFFFFFFCFCFCFCFCFCFCFCFCFDFDFDFDFDFDFDFDFDFEFE
        FEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFBFBFBF7F7F7ECECECD6D6D6B9
        B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCDCDCDC1C1C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFADBDBDBB5B5B5FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE8E8E8C3C3C3B8B8B8B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B8B8B8B8B8B8CBCBCBFEFEFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      TabOrder = 4
      OnClick = actAlterarExecute
    end
    object btnRemover: TBitBtn
      Left = 457
      Top = 4
      Width = 97
      Height = 55
      Caption = 'Remover Item (F7)'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCD4D4D4
        BEBEC0BFBFC1BFBFC1BFBFC1BFBFC1BFBFC1BFBFC1BFBFC1BFBFC1BFBFC1BFBF
        C1BFBFC1BFBFC1BFBFC1BFBFC1BFBFC1BFBFC1BFBFC1BFBFC1BFBFC1BFBFC1BF
        BFC1BFBFC1BFBFC1BFBFC1BFBFC1BEBEC0CBCBCCF9F9F9FFFFFFDBDBDD282B9F
        0A12B00C15AF0C16B10C17B30C18B50C19B60C1AB70C1AB80C1BB80C1BB90C1C
        BA0C1DBB0C1DBB0C1EBB0C1EBB0C1EBB0C1DBB0C1DBA0C1BBA0C1BB90C1AB90C
        19B80C18B70C17B60C16B40C16B30A12B3171CA9BBBBC5FFFFFFC1C1CB0011C7
        001AD6001CD40020D50023D60024D80027D90029D9002ADA002CDB002DDB002E
        DC002EDC002FDC002FDC002FDC002FDC002EDC002DDC002CDB002BDB002ADA00
        28D90026D70023D60021D5001ED4001CD30015D88B8BB2FFFFFFC3C3CD0A25CB
        2143DC2145DB2147DC2149DD214ADF214CE0214EE1214FE22150E22151E22152
        E32153E32152E32152E32152E32153E42152E42152E32151E32150E2214FE121
        4DE0214CDF214ADE2148DD2146DC2245DB1A38DF8B8CB3FFFFFFC3C3CD0F36D5
        557CEF6285EE6086EF6088F16089F2608BF4608DF4608EF5608FF56090F76091
        F86091F86091F86091F86091F86091F76090F6608FF6608EF5608DF4608CF460
        8AF36089F16086EF6085EE6083EC6584EC3A5DEC8C8CB4FFFFFFC3C3CD0F39D7
        245EED2660EC2664EE2667F0266AF3266DF5266FF62671F72672F92673FA2675
        FA2675FB2675FB2675FB2675FB2674FA2673F92672F82670F7266EF5266CF426
        69F22666F02663EE265FEB265BE9295AE71140E98C8DB5FFFFFFC3C3CE193BD7
        3E6AEB3C69EA3C6CEC3C6FEE3C72EF3C74F13C76F33C77F33C79F53C7AF53C7A
        F63C7BF73C7BF73C7BF73C7BF73C7AF63C79F53C78F43C77F33C75F23C73F13C
        71EF3C6FEE3C6CEB3C68EA3C65E74066E61E46E88C8EB5FFFFFFC2C2CD2341D8
        5A7BEB5879EA577BEC577DEE5780EF5781F05783F15784F35786F35787F35787
        F45788F45788F45788F45788F45787F45786F35785F25784F25782F05781F057
        7FEE577DED577BEB5778E95776E75E79E72D4FE88B8EB6FFFFFFC7C7D21F3DD9
        859AEF8A9EEE899FEF89A0F089A1F189A2F289A3F389A5F489A5F489A5F589A6
        F489A6F589A7F589A6F489A6F489A5F489A5F489A4F389A4F389A2F289A1F18C
        A3F1899FEF899DEE899CED899BEC8E9DEC4F67EC9498BEFFFFFFF2F2F34757C4
        2C4ADF3454DD3357E0335BE2335EE53362E63365E83367E93369EA336BEC336D
        ED336EEE336FEF3370EF336FEF336FEF336EEF336DEE336CED336BEC3369EB3E
        6FEA3365E73361E7335EE4335AE13457E23D59DADFE0E4FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      TabOrder = 5
      OnClick = actRemoverItemExecute
    end
    object btnOrcamento: TBitBtn
      Left = 553
      Top = 5
      Width = 97
      Height = 55
      Caption = 'Or'#231'amento (F8)'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCEDEDEDEDEDEDEDEDEDEDEDEDECECECF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAE
        9F4F8A554F89554F89564F89564E8855558C59C5CAC5FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA2BA1
        4000C04D00C45600C95C00C95C00C45600C24766A36CFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F82BA9
        4C05C96C06D17606D87D06D87D06D17605CB6560A76AFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F84BB4
        6395EFC393F0C492F2C692F2C694F0C68DEFB870AB74FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F835BC
        6340FBB344F5B043F6B043F5B045F5B13CF9A766AC73FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F82CBD
        6000F79400F08F00F19100F09000F08F00F58962AC71FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F82CBB
        5E00F39100EC8C00ED8D00ED8D00ED8C00F28762AC71FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F82CB9
        5D00F08A00E88500E98600E98600E98600EE8162AB71FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F92CB6
        5B00EB8200E47D00E47E00E47E00E47D00EA7962AA70FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD2DB3
        590BE98110E27E13E27F14E28016E38111E77B64A971FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED
        9AA79A8E9E8E90A09090A09090A09090A090909F90909F9091A0918E9D8E1EAE
        4B36E88D3EE28C3BE28B3AE28A3AE28A2CE5803A974B97A59790A09090A09090
        A09090A09090A09090A09090A0908D9E8DA2ADA2F4F4F4FFFFFFFFFFFFA1B5A2
        00A62A00A63700A93900AB3C00AE3F00AF4100B04200B04300B04200AC3F02C2
        553CE18744E08A41E0883FDF8740E08830DD7E00B54700AE4000B14300B14200
        B14200B04000AE3E00AC3B00A93800A83600A224BDC6BDFFFFFFFFFFFF8BAD8F
        00B54600B45300B85800BC5C00BF6000C26300C46500C56600C46500C26307CD
        6645DE844CDE8949DE8847DE8748DD8638DA7C00C56300C36400C56600C56600
        C46500C26300BF6100BC5C00B75700B35400B141ADBBADFFFFFFFFFFFF8EAD91
        21C55A2DCA742ACC752AD0792AD37D29D57F29D68129D88228D88227D6803CD8
        8155DC8851DC8750DC874EDB864DDB844FDA842FD68024D67F24D77F24D67E23
        D57D23D37A23D07722CD7222C96D23C66C0EBA42AFBBAFFFFFFFFFFFFF8EAC8F
        67D47599DFA391DD9E90DEA08FDFA18EE0A28DE1A38CE1A48CE2A685E2A260DB
        8A59DA8759DA8757DA8656DA8652D9835CDB8980E1A080E19E7FDF9C7EDE997D
        DD977BDB937BD9907AD88D79D68A79D58729BE3DAFBBAFFFFFFFFFFFFF8EAC8F
        46C85774D2826CD17E6BD3806AD48168D48367D68465D68564D78663D88762D9
        8762D98860D9875FD9875ED9865CD8845AD78258D67F56D47C54D47953D27751
        D07350CE704FCC6C4DC9674CC8624FC76225BA38AFBBAFFFFFFFFFFFFF8CAA8D
        50C95D82D58C79D38778D58877D68975D68A74D78B73D88C71D98C70DA8D6FDA
        8D69D88967D88866D88764D78663D78463D68465D68564D68262D57F61D37D5F
        D17A5ED0765CCE735BCB6E59C96A5ECA6B2CBA3AADB9ADFFFFFFFFFFFF9DB59E
        3BBF478ED69588D59187D69287D69386D79485D89584D89684D99785E09976D9
        8F6BD6866ED7896DD7886BD68769D5856CD5877CDC937DDD927CD6907BD68E7B
        D58B7AD38979D28779D18479CF8275CE7C1DB129BDC6BDFFFFFFFFFFFFF2F3F2
        8EC99683C98D83C88D83C88E83C78E83C78E83C78F83C78F83CB8F81AF871EA0
        3B68D78278D78D74D58972D58875D68A5AD27537964984B88C84CD8F84C98E84
        C98E84C98D84C98D84CA8D84CA8D83CC8B98CF9CF9F9F9FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF329C
        486FD9837ED68E79D58B79D48A7CD68C5FD474689D70FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8329D
        4575D78385D69080D58C7FD48C82D68E64D375629C6CFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8329A
        427BD7838CD69287D48E86D48D89D69169D275629B6BFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F83298
        4080D68492D6958DD4918CD49090D6936ED174629A6BFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F83296
        3D86D68699D69994D59492D49397D69773D07662996BFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F83394
        3D8BD88A9FD99F9AD79A99D7999DD89D79D17B62986BFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F83294
        3C91DB90A5DBA5A0DAA09FDA9FA4DBA37ED48061976AFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB3894
        45A8E5A5BDE7BCB9E5B7B8E5B6BCE7BB94DD95679971FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96B4
        9D5CB16E62AF7260AF7160AF7161B0715CB06DC0CBC3FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      TabOrder = 6
      Visible = False
      OnClick = actOrcamentoExecute
    end
  end
  object gridCliente: TDBGridEh [4]
    Left = 130
    Top = 380
    Width = 923
    Height = 116
    DataSource = dsSelCliente
    DynProps = <>
    FooterParams.Color = clWindow
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ReadOnly = True
    TabOrder = 4
    Visible = False
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'nome'
        Footers = <>
        Width = 248
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'documento'
        Footers = <>
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'endereco'
        Footers = <>
        Width = 171
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'bairro'
        Footers = <>
        Width = 135
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'telefone'
        Footers = <>
        Width = 76
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'celular'
        Footers = <>
        Width = 72
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEh4: TDBGridEh
        Left = -749
        Top = -183
        Width = 749
        Height = 183
        DataSource = dsSel
        DynProps = <>
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ReadOnly = True
        TabOrder = 0
        Visible = False
        OnDblClick = dbGridSelDblClick
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'codbarras'
            Footers = <>
            Width = 133
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'descricao'
            Footers = <>
            Width = 373
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'valor_varejo'
            Footers = <>
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'est_atual'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 671
    Top = 472
    object actFinalizar: TAction
      Caption = 'actFinalizar'
      ShortCut = 113
      OnExecute = actFinalizarExecute
    end
    object actIniciar: TAction
      Caption = 'Iniciar Venda'
      ShortCut = 112
      OnExecute = actIniciarExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar (Esc)'
      ShortCut = 114
      OnExecute = actCancelarExecute
    end
    object actOrçamento: TAction
      Caption = 'Loc. Or'#231'amento'
    end
    object actCliente: TAction
      Caption = 'Inf. Cliente'
      ShortCut = 116
      OnExecute = actClienteExecute
    end
    object actSemCliente: TAction
      Caption = 'actSemCliente'
      ShortCut = 115
      OnExecute = actSemClienteExecute
    end
    object actAlterar: TAction
      Caption = 'actAlterar'
      ShortCut = 117
      OnExecute = actAlterarExecute
    end
    object actRemoverItem: TAction
      Caption = 'actRemoverItem'
      ShortCut = 118
      OnExecute = actRemoverItemExecute
    end
    object actSelProduto: TAction
      Caption = 'actSelProduto'
      ShortCut = 123
      OnExecute = actSelProdutoExecute
    end
    object actOrcamento: TAction
      Caption = 'actOrcamento'
      ShortCut = 119
      OnExecute = actOrcamentoExecute
    end
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 767
    Top = 472
    Bitmap = {
      494C010106000800280120002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      000000000000000000000000000000000000000000000000000000000000F6F6
      F400E3E3E2008E8EB000D1D1CA00F6F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F5F400E8E8E4009090B200CBCBC600F7F7
      F600F0F0F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F1F100F1F1F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6F6F300E7E7
      DE006565D0004141E6005151A100D4D4C700F7F7F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F5F400ECECE1006C6CCE003D3DE8004B4BA500D0D0
      C300F7F7F700F0F0F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F1F100F5F5
      F500F5F5F500F1F1F100EEEEEE00ECECEC00EAEAEA00EEEEEE00EEEEEE00F3F3
      F300F6F6F600F3F3F30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F300E8E8DE005D5D
      CD006F6FFA00BABAFF006767F2004C4C9F00D4D4C700F7F7F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F5F5F400ECECE1006666CB006C6CF800A2A2FF005959F6004747
      A300D0D0C200F7F7F700F0F0F100000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F500F6F6F600ECECEC00D7D7
      D700C9C9C900BEBEBE00BBBBBB00C1C1C100C1C1C100C6C6C600CBCBCB00C9C9
      C900C9C9C900E0E0E000F2F2F200F5F5F500F1F1F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F300E8E8DE005D5DCD006464
      FA009494FF008282FF00B5B5FF006B6BF2004B4B9F00D4D4C700F7F7F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F5F400ECECE1006666CB007272F8009191FF004B4BFF007878FF005151
      F6004747A300D1D1C200F7F7F600F0F0F1000000000000000000000000000000
      00000000000000000000F3F3F300F6F6F600DADADA00B6B6B600A0A0A0009494
      940098989800A2A2A200AEAEAE00B6B6B600B9B9B900BABABA00BCBCBC00A9A9
      A9007575750084848400B5B5B500D4D4D400EBEBEB00F4F4F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8E8DD005D5DCD005757FA008383
      FF006F6FFF007E7EFF009090FF00BCBCFF006B6BF2004C4C9F00D4D4C700F7F7
      F60000000000000000000000000000000000000000000000000000000000F5F5
      F400ECECE1006666CB007575F8009B9BFF005757FF004747FF003A3AFF006666
      FF004545F6004848A300D0D0C200F4F4F4000000000000000000000000000000
      000000000000F6F6F600E7E7E700A2A2A200757575007777770088888800A9A9
      A900C7C7C700DADADA00E3E3E200E5E5E500E2E2E200DCDCDC00D5D5D500C8C8
      C800A0A0A0008585850089898900A3A3A300BCBCBC00D8D8D800F1F1F100F1F1
      F100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006060D5004848FA006E6EFF005E5E
      FF006E6EFF007E7EFF008B8BFF009C9CFF00C0C0FF006B6BF2004C4C9F00D4D4
      C700F7F7F6000000000000000000000000000000000000000000F5F5F400ECEC
      E1006666CB007575F800A1A1FF006565FF005656FF004848FF003737FF002929
      FF005050FF003636F6004D4DAA00E1E1DB000000000000000000000000000000
      0000F6F6F600DCDCDC00878787005353530078787800BBBBBB00EBEBEB00FCFC
      FB00FFFFFC00FDFCF600F6F5EE00EDECE500E6E5DE00E1DFD800DCDBD400D7D6
      D100D3D3D200CDCECD00BDBDBD00A8A8A800AEAEAE00C5C5C500D0D0D000EEEE
      EE00F2F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003535F6006060FF005454FF005959
      FF006B6BFF007979FF008787FF009494FF00A4A4FF00C0C0FF006868F2004C4C
      9F00D4D4C700F7F7F600000000000000000000000000F5F5F400ECECE1006666
      CB007373F800A6A6FF007070FF006262FF005454FF004545FF003636FF002121
      FF002A2AFF004545FF003E3EEB00E7E7E600000000000000000000000000F6F6
      F600D7D7D7008B8B8B006C6C6C009F9F9F00EFEFEF00FFFFFF00FFFFFE00F4F3
      F000C7C9D800949BC1006F7AB4005B6AAF005867AD00606DAC00747FAD00959A
      B100B6B6B800C5C3BC00BCBCB800BEBEBE00C0C0C000BBBBBB00CBCBCB00D3D3
      D300EEEEEE00F1F1F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECEF0004545F5005E5EFF005E5E
      FF006464FF007474FF008181FF008D8DFF009A9AFF00A7A7FF00BEBEFF006565
      F2004C4C9E00D4D4C700F7F7F60000000000F5F5F300ECECE2006666CA007070
      F800A7A7FF007878FF006B6BFF005E5EFF004F4FFF004040FF002E2EFF003333
      FF004646FF003F3FEF00D5D5EC00F7F7F1000000000000000000F4F4F400E5E5
      E5008A8A8A0080808000D1D1D100FFFFFF00FFFFFF00EFEFEF00949AC5003A4A
      A7000E26A5000220AF000324BA000628C100062BC400062BC400062ABF000A2C
      B500203AA80052609F009496A200B8B6AF00BDBDBC00CECECE00C4C4C400C8C8
      C800D5D5D500F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCF000CCCCEE004747F3006262
      FF006565FF006B6BFF007979FF008585FF009090FF009A9AFF00A5A5FF00B7B7
      FF006060F1004C4C9D00D4D4C700FBFBF900EDEDE2006565C9006C6CF600A5A5
      FF007D7DFF007171FF006565FF005757FF004A4AFF003737FF003B3BFF004C4C
      FE004141ED00D4D4EA00FBFBF100EFEFF00000000000F1F1F100F4F4F4009A9A
      9A007B7B7B00E0E0E000FFFFFF00FFFFFD00B3B7D4002E3DA3000017A6000524
      BB000E30C8001236CF001339D400143BD700143DD900143EDB00153EDC00143E
      DD00103ADA000831CE001131B00058669F00BDBBBA00D4D3CF00DADADA00C9C9
      C900C3C3C300E0E0E000F3F3F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFF000FCFCF000CCCCED004747
      F1006363FE006969FF006E6EFF007B7BFF008585FF008E8EFF009696FF009E9E
      FF00AEAEFF005B5BEF004F4F9E00CACAB9006969CA006666F500A0A0FF007F7F
      FF007474FF006969FF005C5CFF004F4FFF003F3FFF004242FF004E4EFE004242
      EB00D4D4EA00FBFBF100EFEFF0000000000000000000F7F7F700C8C8C8006F6F
      6F00D9D9D900FFFFFF00FFFEFA008087BE0003189E000320B6000E2FC5001034
      CC001238D400133DDC001440E1001542E5001543E6001544E8001544E8001544
      E8001544E8001544E7001241E6000631CF00314AA900BCBDC500E6E5E000E7E7
      E700C6C6C600C6C6C600EFEFEF00F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFF000FCFCF000CCCC
      ED004747EF006262FE006A6AFF006F6FFF007A7AFF008282FF008989FF008E8E
      FF009393FF00A1A1FF005959EC002929B3006666F5009999FF007D7DFF007474
      FF006A6AFF005F5FFF005454FF004444FF004646FF004E4EFE004141E900D4D4
      E900FBFBF100EFEFF0000000000000000000F1F1F100F4F4F40088888800B5B5
      B500FFFFFF00FFFFFC00757EBB000011A0000926BC000E2EC5000F33CE001139
      D900133FE2001443EA001546EF001548F2001649F4001649F500164AF500164A
      F5001649F4001649F3001548F1001547F1000736E0002642AF00CDCED500F8F7
      F300EDEDED00BABABA00DBDBDB00F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFF000FCFC
      F100CCCCEC004646EE005F5FFE006969FF006C6CFF007575FF007B7BFF008080
      FF008383FF008686FF008E8EFF007777FF008B8BFF007878FF007070FF006868
      FF005F5FFF005454FF004747FF004949FF004D4DFD004141E700D4D4E900FBFB
      F100EFEFF000000000000000000000000000F5F5F500D2D2D20089898900F9F9
      F900FFFFFF00989DC90000109E000824BA000C2BC3000E30CD000F37D800113D
      E3001342ED001447F5001449F900154AFB00154BFD00154BFD00154BFD00154B
      FD00154BFD00154BFC00154AFB001449F8001446F5000534E0003B53B400F0EF
      ED00FFFFFF00D7D7D700BFBFBF00F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      F000FCFCF100CDCDEC004444EC005A5AFE006464FF006767FF006D6DFF007272
      FF007575FF007676FF007777FF007D7DFF007070FF006A6AFF006363FF005C5C
      FF005353FF004747FF004848FF004A4AFD004040E500D4D4E800FBFBF100EFEF
      F00000000000000000000000000000000000F8F8F800ADADAD00C3C3C300FFFF
      FF00D8DAE50012229C00041CB2000A26BC000C2BC6000D31D1000E38DC00103E
      E7001243F1001347F900144AFD00144BFF00144BFF00144BFF00144BFF00144B
      FF00144BFF00144BFF00144AFF001449FC001347F7001243F2000028CD007F8C
      C300FFFFFE00F5F5F500BEBEBE00ECECEC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFF000FCFCF100CDCDEB004242EA005353FE005D5DFF005F5FFF006363
      FF006565FF006767FF006666FF006363FF006161FF005C5CFF005656FF004E4E
      FF004444FF004646FF004444FD003E3EE300D5D5E700FBFBF200EFEFF0000000
      000000000000000000000000000000000000F2F2F200ACACAC00EFEFEF00FFFF
      FD00656EB400000EA3000922B5000A26BC000B2BC6000D31D1000E38DD00103E
      E8001043F2001147F9001249FD00124AFF00124AFF00124AFF00124AFE00124A
      FE00124AFE00124AFE00124AFF001349FC001146F7001141EF000A38E6001735
      B400DFE0E700FFFFFF00D3D3D300E3E3E3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFF000FCFCF100CECEEA003E3EE8004B4BFE005454FF005454
      FF005757FF005757FF005656FF005454FF005252FF004D4DFF004848FF003F3F
      FF004141FF003F3FFE003C3CE100D5D5E700FBFBF200EFEFF000000000000000
      000000000000000000000000000000000000ECECEC00C5C5C500FFFEFE00DFDF
      E70014239B000319AC00061EB4000320BC000526C600072CD1000932DD000938
      E8000B3DF3000C42FA000D44FE000D45FF000C44FF000D45FF000D45FF000D45
      FF000D45FF000D45FF000D45FF000D43FD000C41F7000F3FED000E3BE4000022
      C3008A94C600FFFFFF00E6E7E600E0E0E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFF000FCFCF100D0D0EB004141E5004343FC004949
      FF004D4DFF004E4EFF004D4DFF004646FF004141FF003E3EFF003939FF003939
      FF003A3AFA003C3CD800D7D7E900FBFBF200EFEFF00000000000000000000000
      000000000000000000000000000000000000E7E7E700DCDCDC00FFFFFF00ACAF
      D000000E9A00051BAD000F239D001E2E88001C2F8D001C3195001D369D001F3A
      A5001E3BA9001D3CAC001F3FB0002142B3002142B4001F41B5001E40B6001E40
      B6001E40B6001E40B6001E40B5001E3FB2001B3DB7000E39DD000D37DF000126
      CD004456B200FDFCF900F3F3F300E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F4F400F9F9E4005757C1002424F4003F3F
      FF004B4BFF004E4EFF004E4EFF004B4BFF003B3BFF002D2DFF002929FF003535
      FF002020F0004B4B9B00E1E1CC00F7F7F7000000000000000000000000000000
      000000000000000000000000000000000000EBEBEB00EBEBEB00FFFFFB009499
      C7001526A800000DA6005861A000D6D4C800CFCEC800C3C2BC00BDBCB600BCBB
      B500BDBCB600BBB9B300B6B4AE00B5B3AD00BAB8B200BDBCB600BDBCB700BDBB
      B700BCBBB600BCBBB600BCBBB600C0BDB600B1B1B2001D3EC700082FD9000428
      CC001E34AA00EBEBEE00FAFAF800EBEBEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F5F400F2F2E4006767BB001111EA002C2CFF004646
      FF005050FF005050FF005050FF004F4FFF004C4CFF003939FF001D1DFF001313
      FF001F1FFF000F0FE20053539200DBDBCD00F7F7F70000000000000000000000
      000000000000000000000000000000000000EEEEEE00EFEFEF00FCFBF600888D
      C300424FB8001021AB005660A900FFFFFF00FFFFFF00FFFFFF00FEFEFE00F6F5
      F500EFEFEE00EDEDEC00EDEDEC00EAEAEA00E5E5E500E3E3E300E7E7E600EDED
      EC00F1F0F000F1F1F100F1F1F000F5F4F100E1E2E7001C3CC6000528CE000525
      C5000F25A500DADBE500FEFDFA00E8E8E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F5F5F400F2F2E4006666B9000000E9001818FF004545FF005454
      FF005353FF005454FF005555FF005656FF005151FF005151FF004343FF001C1C
      FF000101FF000707FF000000E20052529000DCDCCD00F7F7F700000000000000
      000000000000000000000000000000000000EFEFEF00EDEDED00F8F7F3008D92
      C500525DBD004956BF005F68AD00F9F9F300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC00F4F4F400ECECEC00E7E7E700E7E7E700E6E6E600E2E2E200DDDD
      DD00DEDEDE00E3E3E300E9E9E900F0F0ED00D2D4DF001330BD000424C5000420
      BD000D21A000D7D8E300FAFAF700E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F5F400F2F2E4006666B8000000E8000808FF004747FF005A5AFF005858
      FF005959FF005B5BFF005A5AFF004141FF005A5AFF005757FF005757FF005656
      FF003D3DFF001414FF000000FF000000E00053538F00DCDCCD00F7F7F7000000
      00000000000000000000000000000000000000000000EBEBEB00F6F5F1009FA3
      CB005E68BF005D68C4008289C100FAFAF500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FBFAF900F2F2F100EBEBE900E9E9E800E9E8
      E700E6E6E500E1E1E000DEDEDD00E8E7E300C5C8D7000C26B400041FBB00011A
      B30015259C00E1E1E800F0F0EE00ECECEC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5F5
      F400F2F2E4006666B6000000E7000909FF005555FF006C6CFF006767FF006666
      FF006969FF006C6CFF002A2AFF000000FF003535FF006E6EFF006868FF006767
      FF006B6BFF006868FF004444FF000404FF000000DE0053538D00DCDCCE00F7F7
      F70000000000000000000000000000000000F1F1F100E9E9E900F2F2EE00BABC
      D5006D75C2006B75C8008288C500F2F2F200FCFCFE00FBFBFD00F6F7FB00FBFB
      FD00FDFEFE00FDFEFE00FEFEFE00FFFFFF00FFFFFF00FDFDFC00F6F6F400EDED
      EC00E9E9E800EBEBE800EAEAE700EEEDE500B0B4CD00051BAD00031BB2000011
      A900303B9E00EEEDEB00E6E6E500EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5F5F400F2F2
      E5006666B5000000E5000B0BFF006464FF008080FF007979FF007979FF007C7C
      FF007F7FFF003333FF000000FA000000DE000000FD003F3FFF008181FF007B7B
      FF007979FF007A7AFF008181FF005959FF000404FF000000DC0053538C00DCDC
      CE00F7F7F700000000000000000000000000F1F1F100E9E9E900E9E9E700D9D9
      E2008287C6007D85CD007B83CA008A90D0008B92D2008890D2006771C7003B4A
      BA002B3CB8002E40BB003145BF003347C300374BC500384DC700384DC800374B
      C6003448C3003549C0003749BF003A4CBE002336B6000216AC000418AA000007
      9A00666DAC00F1F1EA00E1E1E100F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F400F2F2E5006666
      B3000000E4000C0CFF007171FF009191FF008A8AFF008A8AFF008D8DFF009090
      FF003A3AFF000000F9002E2ED200AFAFD7001E1ED9000000FC004848FF009393
      FF008B8BFF008A8AFF008A8AFF009292FF006565FF000505FF000000DB005353
      8B00DCDCCE00F7F7F7000000000000000000F1F1F100EDEDED00DEDEDE00EDEC
      EB00A4A7CE00878ECF00888ED0008088CD007C83CC007980CC00777FCC00656F
      C7003B49BB001122AE00000DA900000AAA00000CAC00000FAF000011B0000011
      B0000012B0000011AF000010AC00000FA9000011A7000315A6000113A400020C
      8E00B3B5C900E3E2DE00E6E6E600F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F400F2F2E5006666B1000000
      E2000E0EFF008080FF00A5A5FF009C9CFF009C9CFF009F9FFF00A3A3FF004242
      FF000000F9002A2ACE00D9D9E200FFFFF600CDCDE2001C1CD5000000FC005252
      FF00A6A6FF009E9EFF009C9CFF009C9CFF00A5A5FF007373FF000606FF000000
      D90053538A00DCDCCE00F7F7F7000000000000000000F2F2F200DADADA00E6E6
      E400D2D3DF00959ACF00959AD5009197D3008E94D1008B91D000878DD000858D
      D000868DD1007C84CF00606BC6003C4ABB001E2DB1000A1BAA000012A700000F
      A600000FA500000EA400000FA300000EA100000E9F00000D9E0000009300454C
      9A00E4E3DE00D7D7D700EFEFEF00F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1E4006767B0000000E1000F0F
      FF008F8FFF00B8B8FF00AFAFFF00AFAFFF00B2B2FF00B6B6FF004A4AFF000000
      F9002A2ACC00DADAE200FBFBF300EFEFF000FDFDF300CDCDE2001C1CD3000000
      FC005B5BFF00BABAFF00B1B1FF00AFAFFF00AFAFFF00B9B9FF008080FF000707
      FF000000D80053538800DBDBCE00F5F5F40000000000F2F2F200E8E8E800D2D2
      D200EEEDEB00BBBDD7009DA1D5009FA3D8009BA0D600989DD500949AD4009196
      D3008D93D2008A91D2008A91D2008990D2008088CF007079CA005C66C2004853
      BB003845B5002D3AB0002633AC002330AA002430AA002530AA00383D9E00C8C8
      D400E0E0DC00E3E3E300F2F2F200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006666B6000000E0001B1BFF009F9F
      FF00CCCCFF00C1C1FF00C1C1FF00C5C5FF00C9C9FF005151FF000000F8002A2A
      CA00DADAE100FBFBF300EFEFF00000000000EFEFF000FDFDF300CDCDE1001C1C
      D2000000FC006565FF00CDCDFF00C3C3FF00C1C1FF00C1C1FF00CDCDFF008F8F
      FF001313FF000000D70054548F00E4E4DE000000000000000000F3F3F300D9D9
      D900D6D6D500E8E8E900B6B8D600A6AAD900A7ABDB00A3A8D900A0A5D8009DA2
      D7009A9FD500969CD4009399D3008F96D2008C93D2008B91D100898FD100868D
      D000848ACE007E85CC007A81CA00767DC8006F76C6006B71B900C3C5D500EBEB
      E600D9D9D900F1F1F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001111C7000000FF006262FF00EAEA
      FF00D5D5FF00D3D3FF00D8D8FF00DCDCFF005959FF000000F8002A2AC800DADA
      E100FBFBF400EFEFF000000000000000000000000000EFEFF000FDFDF400CDCD
      E0001C1CCF000000FC006F6FFF00E1E1FF00D6D6FF00D3D3FF00D6D6FF00E6E6
      FF004A4AFF000000FE002A2ABE00E8E8E300000000000000000000000000F1F1
      F100C5C5C500D8D8D600E8E8EA00BDBFDA00ADB1DC00AEB2DE00ABAFDD00A8AC
      DB00A5AADA00A2A7D9009FA4D8009CA1D600989ED500959BD4009197D3008E94
      D1008A91D000878DCE00838ACE007C82C9007B80BF00C2C2D600EEEDE900D6D6
      D600ECECEC00F1F1F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4DF001717D0000000FD008484
      FF00F5F5FF00EBEBFF00EFEFFF006161FF000000F8002A2AC600DADAE000FBFB
      F400EFEFF0000000000000000000000000000000000000000000EFEFF000FDFD
      F400CDCDDF001C1CCE000000FB007979FF00F4F4FF00EBEBFF00F2F2FF006D6D
      FF000000FA002222C900D0D0E100F8F8F300000000000000000000000000F2F2
      F200EEEEEE00C5C5C500DDDDDC00F1F1F100CECFE200B6B8DC00B2B6DF00B2B6
      E000B0B4DF00AEB2DD00AAAFDC00A7ACDB00A5A9DA00A1A7D9009EA3D8009BA0
      D600979DD5009197D3008A90CC009B9ECA00D8D9E300F0EFEC00D7D7D700EAEA
      EA00F2F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEF400C6C6DC001515CE000000
      FD009191FF00FEFEFF006969FF000000F7002A2AC400DADAE000FBFBF400EFEF
      F00000000000000000000000000000000000000000000000000000000000EFEF
      F000FDFDF400CDCDDE001C1CCC000000FB008484FF00FFFFFF007777FF000000
      FA002121C700D2D2DD00FCFCF400EFEFF0000000000000000000000000000000
      0000F2F2F20000000000D1D1D100DDDDDC00F8F8F700E9E9F000CBCDE300BBBD
      DE00B5B9DF00B4B8E000B3B7E000B1B5DF00AEB2DE00ABAFDC00A7ABDA00A2A7
      D700A0A4D400AAADD300CBCCE000F2F2F200EBEBE800D8D8D800EBEBEB00F2F2
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEF400C6C6DC001515
      CC000000FC004040FF000000F7002A2AC200DADADF00FBFBF400EFEFF0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFF000FDFDF400CDCDDE001B1BCA000000FB004141FF000000F9002121
      C400D2D2DD00FCFCF400EFEFF000000000000000000000000000000000000000
      000000000000F1F1F100F2F2F200DEDEDE00DDDDDD00F3F3F200FEFEFD00F2F2
      F700DFE0ED00CFD1E500C6C8E100C1C3DF00BEC0DE00BEC0DE00C2C4E000CED0
      E400E4E4EE00F7F7F800F5F5F200E0E0DF00DCDCDD00EEEEEE00F2F2F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEF400C6C6
      DB001515CC000000EE002A2AC100DADADF00FBFBF400EFEFF000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFF000FDFDF400CDCDDD001C1CC9000000EF002121C400D2D2
      DC00FCFCF400EFEFF00000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300EDEDED00E4E4E400EAEAE900F5F5
      F400FCFCFB00FEFEFD00FCFCFC00FAFAFB00FAFAFB00FBFBFB00FEFEFD00FDFD
      FB00F1F1EF00E1E1E000DDDDDD00EAEAEA00F2F2F200F1F1F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      F400BFBFDC005454BE00D6D6E100FBFBF400EFEFF00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFF000FDFDF400C7C7DE005252BD00CDCDDE00FCFC
      F500EFEFF0000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1F1F100EFEFEF00EBEB
      EB00E9E9E900EBEBEB00EDEDED00EEEEED00EFEFEE00EFEFEE00ECECEC00E7E7
      E700E5E5E500ECECEC00F2F2F200F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFDFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6E9FD004ABEF500A4CAEF00B8CFE600DEEFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4E6F80079C0F0005ECEFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFCFC00CCC7BB00F7F6
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F1F200F6F3F500F2F1F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6E9FD0047B7F1005E9ED90090B7DC0062B2FF0093CAFF00E0F0
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8D6F40058A6E4005ECDFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFEDDF00FEDBBD00FEDCBD00FEDDBD00FEDFBD00FEE0BD00FEE1
      BE00FEE1BE00FEE2BE00FDDFBA00FCDEB600FCDBB300FBD9B000FAE3CC00FFFE
      FD00000000000000000000000000000000000000000000000000000000000000
      0000D1E0EC00559DC7006CCDFF00E4F6FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBF4F200959B9200A398
      8900F8F8F6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F3F400E9E9E800C4D2C700E9E8E700F4F3F40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6E9FD0048B7F1005F9CD80091B8DC0056B4FF0046B4FF004FB4
      FF0093CBFF00E2F1FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8D6F30059A5E3005ECDFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEDDC00058B3ED0025ADFF0024ACFF0023ACFF0022ABFF0020A8
      FF001DA6FF001AA3FF0018A0FF00159DFF001E9DFA00D8D2BC00FAE4CB00F6DC
      C200000000000000000000000000000000000000000000000000D9E6EF005EAE
      D80039B3E0001B8DC50000ADFF0009B0FF006CD0FF00E4F6FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5FFFF006BD8FF004AA6FD009EA6
      9E00CDC9BC00F9F9F70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F3
      F400EFEAED0078B4880017993C008AB19200EEEAEC00F3F3F300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6E9FD0049B7F1005E9BD60093B8DC004EB6FF0032B6FF0030B6
      FF003FB6FF0055B7FF0098CEFF00E3F1FF000000000000000000000000000000
      000000000000000000000000000000000000B9D6F30059A4E1005ECDFA000000
      0000000000000000000000000000000000000000000000000000B4E1EF00A3DA
      EB00A3DAEB00A3DAEB00A3DAEB00A3DAEC00A3DBEC00A3DBEC00A3DBEC00A4DB
      EC00A4DBEC00E9D5BC0033B4FB0000D2FF0004D5FF0005D6FF0003D5FF0000D5
      FF0000D3FF0000D1FF0000CEFF0000CBFF0000C7FF00AECBCB00F9E4CA00EFC7
      A000000000000000000000000000000000000000000000000000A0C0D8002B9C
      D200508FAB00508CB10000B1FF0000B1FF0000B1FF0009B3FF006CD1FF00E4F7
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5FFFF006BD8FF00319BFF0041CBFF00A7FD
      FE00B6C0B700C3BCB10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F3F400F0EB
      ED007AB0870004942D0000982B000F9335008BAF9100EEEAEC00F3F3F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6E9FD0049B7F0006F98C400C2BDBA0052B9FF002EB9FF0000B6
      FF0017B6FF0033B7FF0043B8FF005ABAFF00B0D9FF0000000000000000000000
      000000000000000000000000000000000000BAD7F20059A4E0005ECDFA000000
      000000000000000000000000000000000000000000006CCCE60032BEF50033BE
      F50034BFF50034C0F60035C1F60035C2F60036C3F60036C3F60036C4F70036C4
      F70037C5F700CFD1BE0036B8FB001CDCFF003EE3FF0051E6FF0038E3FF0015DE
      FF0000D9FF0000D6FF0000D3FF0000CFFF0000CBFF00AFCCCB00F8E3C900ECC3
      9D00000000000000000000000000000000000000000000000000A0C0D800429A
      C2009A9A9A005E8EAE0000B5FF0000B5FF0000B5FF0000B5FF0000B4FF0009B6
      FF006CD3FF00E4F7FF0000000000000000000000000000000000000000000000
      00000000000000000000F5FFFF006BD8FF00319BFF0051CFFF008DFDFF0067D6
      FF00E7EBEF00FBFAFA0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F3F400F0EBEE007AAF
      8600048C290003902900048F2A0003932B000F8E32008CAF9200EFECED00F4F3
      F400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6EAFD004AB9F0007996B800DAC6B10056BCFF0031BBFF0000B8
      FF0000B7FF0000B6FF0019B6FF003EB9FF007ECBFF0000000000000000000000
      000000000000000000000000000000000000BBD7F2005AA3DE005ECDFA000000
      000000000000000000000000000000000000000000004CD2E5002BCAF70034C0
      F60035C1F60035C2F60036C3F60036C4F70036C4F70037C5F70037C6F70038C7
      F70038C7F700CFD3BE0043BEFB0044E6FF0082EFFF00A6F5FF0078EFFF0039E7
      FF0005DFFF0000DBFF0000D7FF0000D3FF0000CFFF00AFD1CB00F7E3C800EAC0
      9A00000000000000000000000000000000000000000000000000A0C0D800449E
      C4009C9C9C005E8FAE0000B9FF0000B9FF0000B9FF0000B9FF0000B8FF0000B8
      FF0000B7FF0009B8FF006CD4FF00E4F7FF000000000000000000000000000000
      000000000000F5FFFF006BD8FF00319BFF004ECFFF008BFDFF006BD7FF00F3F9
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F3F400F0EBEE0079AC84000384
      230000872300118E31002E9E4B0003882500028B26000F872E0091B09500F1ED
      EF00F3F3F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6EAFD004ABBF0007995B600DAC6B1005ABEFF0033BEFF0000BB
      FF0000B9FF0000B8FF0000B7FF0032BAFF0072CAFF0000000000000000000000
      000000000000000000000000000000000000BBD7F2005BA2DC005DCDF9000000
      0000000000000000000000000000000000000000000078C8D7001FD9FA0035C2
      F60036C3F60036C4F70037C5F70037C6F70038C7F70038C7F70038C8F80038C8
      F80039C9F800D0D4BF004BC3FB0066EEFF00BBF8FF00F4FEFF00ACF7FF0057EF
      FF0009E4FF0000DFFF0000DBFF0000D7FF0000D2FF00B0D4CC00F7E2C800E7BC
      9600000000000000000000000000000000000000000000000000A0C0D80046A2
      C6009F9F9F006090B00000BDFF0000BDFF0000BDFF0000BDFF0000BCFF0033BB
      ED0033BAED0030B9EE0000B8FF0009B9FF006CD4FF00E4F7FF0000000000FDFD
      FC00F3FDFD006BD8FF00319BFF004CCEFF008FFEFF006BD7FF00F3F9FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F3F400EEEBED0078A88100027B1E00017E
      1E00067F23004FB56B006FD8900024994100007F1E0001822000107F2A0092B0
      9600F1EEF000F3F3F30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5EBFD004BBDF0007395BA00CFC1B4005DC1FF0035C1FF0000BD
      FF0000BCFF0000BAFF0000B9FF0034BDFF0075CCFF0000000000000000000000
      000000000000000000000000000000000000BCD7F1005BA1DC005DCDF9000000
      0000000000000000000000000000000000000000000089C6D30021DCF30036C4
      F70037C5F70037C6F70038C7F70038C8F80039C9F80039C9F80039CAF8003FC5
      EF003CCAF500D0D6BF0049C4FB0051EEFF0098F7FF00C2FAFF008CF7FF0045F0
      FF0008E8FF0000E4FF0000DFFF0000DAFF0000D4FF00B1D6CC00F6E2C700E4B8
      9300000000000000000000000000000000000000000000000000A0C0D80048A6
      C800A3A3A3006293B20000C1FF000FC1FA0078C1D600C5C0BB00FEC0A700FEBF
      A700FEBFA700FEBEA700FEBDA600BFBBBC006FB9D80015B8FB006CD4FF00C8CC
      C3009BB7BA00369DFF0053D0FF0086FDFF006CD7FF00F3F9FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F3F400F1EDF00077A6800002721800007519000677
      1E004CAF660034CB640011C64B0053D17B0021913C000076190000791B001078
      250093AF9600F1EFF000F3F3F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5ECFD004BBFF0005C95CD009BBCDC0062C4FF0037C3FF0000C0
      FF0000BEFF0000BDFF0000BBFF0037BFFF0078CEFF00FFFFFE00FFFFFE00FFFF
      FE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00BDD7F1005BA1DA005DCDF9000000
      0000000000000000000000000000000000000000000089C9D50028D9EB0037C6
      F70038C7F70038C8F80039C9F80039C9F80039CAF8003ACBF8003ACBF90047C1
      E50047C2E700D0D7C00062CCFA0029EDFF0053F4FF006DF7FF004DF6FF0022F2
      FF0001ECFF0000E6FF0000E1FF0000DCFF0000D6FF00BCDBC900F5E1C600E2B4
      9000000000000000000000000000000000000000000000000000A0C0D8004AAA
      CA00A8A8A8006596B5006CC4DB00ECC4AF00F4C4AB00BFC5B800A4C8C20099CC
      C7007FCCD4009ED1CC00AED0C800C8C9BD00F8BEA800E6BBAE0064B7DA009193
      8800B8AFA4009FC5CC008AFDFF006ED8FF00F3F9FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4F3F400F0EDEF0077A37E0001691300006D1400056E19004BA9
      630036C8650009BE42000CC2460017CC510055D47D00218B3800006D14000070
      15001071220098B29A00F2F0F200F3F2F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5EDFD004CC0F0005B95CB009DBCDB0065C6FF003AC6FF0000C2
      FF0000C1FF0000BFFF0000BDFF0039C1FF007BD0FE00FFFEFD00FFFEFD00FFFE
      FD00FFFEFD00FFFEFD00FFFEFD00FFFEFD00BDD7F0005BA1D9005DCDF9000000
      0000000000000000000000000000000000000000000089CCD80039CDDC0031CE
      F90039C9F80039CAF8003ACBF8003ACBF9003BCCF9003BCDF9003BCDF9003DCC
      F60051BAD600CAD7C200D0D6C200A0D7D500A5DCD900A9E0DA00A5E1D9009EDD
      D6009BDCD7009ADCD70098DBD70097D9D700A5DBD200FAEFB500F3E0C500DFB1
      8C00F3FCFF000000000000000000000000000000000000000000A0C0D8004DAF
      CC00B0AEAD00C7B5AF00FEC6AA00B3C3B7007BC5C90023C9F00000C8FF0000C7
      FF0000C6FF0000C5FF0000C3FF0033C9F1008DD1D400C1C9BD00FEBCA600C9A6
      9600D3CDC200EDEBE300B8D5D700F1F7FC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F3F400F0EEEF0077A07B0000610E0000640F00056614004BA4600035C4
      630008B840000FBE470010C349000DC648001AD1550058D78000208434000064
      0F0000660F00146B20009BB29C00F2F0F100F3F2F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5EEFD004CC2F0005A93C9009EBDDA0069C9FF003CC8FF0000C5
      FF0000C3FF0000C2FF0000C0FF003BC4FF007DD2FE00FFFEFB00FFFEFB00FFFE
      FB00FFFEFB00FFFEFB00FFFEFB00FFFEFB00BED7EF005BA0D8005DCCF9000000
      0000000000000000000000000000000000000000000089CFDB0054B7C50025DB
      FA003ACBF8003ACBF9003BCDF9003BCDF9003BCEF9003CCFF9003CCFF9003CCF
      FA0054BAD30056D1F000D7D6BF00F5D4B000F6D6B300F6DBB900F6DBB900F7DC
      BB00F7DEBE00F7E0C100F8E2C300F8E3C500F9E4CB00F9E5CE00FAF3EE00E3BD
      A000C6EEFD000000000000000000000000000000000000000000A0C0D8004EB2
      CE00E4C0AD00F8C6AA009CBFB60029CAEB0000CEFF0000CDFF0000CDFF0000CC
      FF0000CAFF0000C9FF0000C7FF0000C5FF0000C3FF0037C6ED00ABCAC300FBBD
      A700DFBFAE00CED1C800C8C1B500FBFAFA000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F3
      F400F0EEF000769D7A0000580800005A0900045D0F004A9E5D0035BF600007B2
      3D000EB844000FBD46000FC1470011C64B000DC849001BD2560056D27D001C78
      2B00005C0A00005D0A0013631B009BB29C00F2F1F200F3F2F300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5EFFD004CC4EF005B92C700A0BED9006DCCFF003ECBFF0000C7
      FF0000C5FF0000C4FF0000C2FF003DC6FF0080D4FE00FFFDF800FFFDF800FFFD
      F800FFFDF800FFFDF800FFFDF800FFFDF800BED7ED005C9FD5005DCCF9000000
      0000000000000000000000000000000000000000000089D2DE0061ACB80024E1
      F8003BCCF9003BCDF9003CCEF9003CCFF9003CD0FA003DD0FA003DD1FA003DD1
      FA0054BBD4003ED0F90063C9E000E2C4A900BDA38C00BCA28B00D8C8BA00FEDC
      B900FED6B100FED5B000FBD6B800B99D8400B4977D00C0AC9B00F1DACA00D9D7
      CF0097E0FB000000000000000000000000000000000000000000A0C0D8009EBF
      C000FECBAC00B9AD9F0012CFF60000D2FF0000D2FF0000D1FF0000D0FF0000D0
      FF0000CEFF0000CDFF0000CAFF0000C8FF0000C6FF0000C4FF001CC3F500AAC6
      BF00FEBDA60074B3CC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F3F400F0EF
      F000759A7700004F03000052040004550A0049995A0035BA5F0008AC3B000EB2
      42000FB643000EBA440012BF49000EC1470011C54B000DC648001ACE540054CB
      78001A7026000053050000550400135D17009EB49F00F3F2F300F3F2F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5F0FE004DC6EF005A91C500A1BDD80071CEFF0040CDFF0000C9
      FF0000C8FF0000C6FF0000C4FF0040C9FF0083D6FD00FFFCF500FFFCF500FFFC
      F500FFFCF500FFFCF500FFFCF500FFFCF500BFD7EB005C9FD5005DCEF9000000
      0000000000000000000000000000000000000000000088D5E1005AB1BD0033E0
      F0003CCEF9003CCFF9003DD0FA003DD1FA003DD1FA003ED2FA003ED3FA003ED3
      FB004DC4E20046CBED003ED3FA0082B4B900C6AF9B00C1A9930074C8DC003CD0
      FA003CCFF9003BCEF90042CAF200BAA08800B5987E0094ACA9003CC9F80037C6
      F70068D3F9000000000000000000000000000000000000000000A8C1D400F6CC
      AF00DAB9A1007EA2B50000D6FF0000D6FF0000D6FF0000D5FF0000D5FF0000D3
      FF0000D2FF0000D0FF0000CEFF0000CCFF0000C9FF0000C6FF0000C4FF0034C3
      EA00BBC1B800E6BCAD00FFFCFB00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F2F300EEEEEE007497
      74000047010000490000034C05004994570034B55D0007A638000EAC3F000FB0
      41000DB33E001EC1590048D584001DC353000CBF440010C249000CC045001BC8
      530056C6770019682100004B0100004B000016581800A2B6A200F3F2F300F3F2
      F300000000000000000000000000000000000000000000000000000000000000
      000000000000B5F1FE004DC7EF005A90C400A3BED70074D0FF0042D0FF0000CC
      FF0000CAFF0000C8FF0000C6FF0041C7FA0084D4F900FFFAF100FFFAF100FFFA
      F100FFFAF100FFFAF100FFFAF100FFFAF100C0D6E9005C9FD4005DCFF9000000
      0000000000000000000000000000000000000000000088D8E30053B7C3004DDA
      E60039D3FA003DD1FA003DD2FA003ED3FA003ED3FB003FD4FB003FD4FB003FD5
      FB0043D1F40052C0DA003FD4FB0083B7BD00CDB9A800C5AF9B0065C7DE003DD1
      FA003CCFFA003CCEF90043CBF300BFA79000B79C830089A9A90038C8F80037C6
      F7003EC7F700FAFEFF0000000000000000000000000000000000D1C8C200F1CC
      AD00C8B3A20070A2C00000DAFF0000DAFF0002DAFF0005DBFF0005DAFF0004D8
      FF0001D6FF0000D4FF0000D1FF0000CFFF0000CCFF0000C9FF0000C6FF0000C3
      FF0082C2C700F8BFA900FFE1D700000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F100F4F3F4007B9C7B00003F
      00000041000003440200488D540033AF5A00069F35000DA53C000DA93E000CAB
      3C001BBA530037CF7C0056DA940053D88C0018C04E000CBB42000FBC46000ABA
      41001BC1500055C07500175D1B00004200000042000016531600A2B6A200F3F2
      F300F2F2F2000000000000000000000000000000000000000000000000000000
      000000000000B5F2FE004DC8EF00598EC200A4BED50078D3FF0044D2FF0000CE
      FF0000CCFF0000CAFF0000C8FF003DB9E60081CDED00FCF4E700FFF9EC00FFF9
      EC00FFF9EC00FFF9EC00FFF9EC00FFF9EC00C1D5E7005C9FD3005CD0F9000000
      0000000000000000000000000000000000000000000088DBE6004CBCC90086CF
      D6002BDEFB003ED3FB003FD4FB003FD5FB003FD5FB0040D6FB0040D6FB0040D6
      FB0040D6FB0056BDD4003FD5FB0084BBC300D5C3B500CAB6A30067C9E0003DD1
      FA003CD0FA003CCFF90043CBF300C3AC9800BA9F87008AABAB0038C8F80038C7
      F70037C5F700D2F2FD0000000000000000000000000000000000F0CFB500C0BA
      A500C6C1BD0073A5C20002DDFF000DE0FF0018E1FF0020E1FF0025E1FF001EDF
      FF0016DDFF000BD9FF0000D5FF0000D2FF0000CFFF0000CCFF0000C9FF0000C6
      FF0027C2ED00C4BCB000FECDBC00000000000000000000000000000000000000
      000000000000000000000000000000000000F9F6F900C0CEC00002420200003D
      0000034102004888500032A65500059630000C9E39000DA23B000BA4390019B2
      500035C8780035CC7A004CD48A005DDB98004AD3840016BB4B000CB640000EB6
      430009B23E001ABB4E0051B76E0014551600003E0000003F000016521600A4B8
      A400F5F3F500F2F2F20000000000000000000000000000000000000000000000
      000000000000B5F3FE004ECAEF00588EC000A5BED3007BD6FF0046D4FF0000D0
      FF0000CFFF0000CCFF0000CAFF004DC9F200B7A79800C99F8400F9EEDC00FEF7
      E600FEF7E600FEF7E600FEF7E600FEF7E600C1D5E4005E9FD2005CD2F9000000
      0000000000000000000000000000000000000000000088DEE90045C2CF00C0C8
      C90025E7FB003FD5FB0040D6FB0040D7FC0040D7FC0040D7FC0041D8FC0041D8
      FC0041D8FC0056BDD40040D7FC0081C5D100DCCEC200D1BFAF0069CCE2003DD1
      FA003DD0FA003CCFF90043CBF300C7B29F00BFA68F008DAFAF0038C8F80037C6
      F70037C5F700A3E3FB00000000000000000000000000FFF9F500FED4B000A8B2
      A300C9C9C90076A9C50013E4FF0026E6FF0038E8FF0047EAFF0049EAFF0045E8
      FF0035E4FF0022E0FF000FDAFF0000D5FF0000D2FF0000CFFF0000CBFF0000C8
      FF0000C5FF00A5B9B200FEC1A800FFFCFB000000000000000000000000000000
      000000000000000000000000000000000000FDF8FD009FBA9F00004000000340
      020047854E00319D4F00038A29000B9433000B9B37000A9E360018AC4B0031C2
      720032C6750031C6740059CE8D0051D48D0056D6920044CF7F0015B648000CB0
      3E000DAF400007AB3B001BB54C0053B46E0014541600003E0000003E00001854
      1800ABBCAB00F4F3F400F2F2F200000000000000000000000000000000000000
      000000000000B5F4FE004ECCEE00588CBF00A7BED0007FD8FF0048D7FF0000D2
      FF0000D0FF0000CEFF0000CCFF0049D1FD00B3B8B300D7B69C00FBF0DB00FEF4
      E000FEF4E000FEF4E000FEF4E000FEF4E000C1D4E1005E9ED1005CD2F9000000
      0000000000000000000000000000000000000000000088E2EC003EC7D500CACD
      CD0034E7F60040D7FC0040D7FC0041D8FC0041D9FC0041D9FC0041D9FC0041D9
      FC0041D9FC0051C4DE0046D2F3007ECFDF00E4D9D000DBCCC0006ECEE6003DD2
      FA003DD1FA003CCFF90043CCF300CCB7A600C7B29F0095B5B60038C8F80037C6
      F70036C4F70073D5F900000000000000000000000000FFF5EC00FED7B1009BB3
      A900CECECE007FB0CB0026EAFF0041ECFF005CEFFF0070F1FF0077F1FF006DEF
      FF0056EAFF003BE6FF0021E0FF000ADAFF0000D4FF0000D1FF0000CEFF0000CA
      FF0000C6FF0096B9B800FECBB700FFF5F2000000000000000000000000000000
      000000000000000000000000000000000000FDF8FD009EB99D00014900004988
      4F0030924800027E220009882C000A8F30000995310015A548002DBC6D002EC0
      700026BE6B008CD2AA00E2E8E3006ED39C0046CF84004ED28C003ECA7A0013AF
      45000CAA3D000DA93D0007A437001BAE4A0053B06C0013531500003D0000003D
      00001C551C00ABBDAB00F3F1F300F1F1F1000000000000000000000000000000
      000000000000B5F4FE004FCEEF00578BBC00A8BDCE0083DAFF004AD9FF0000D5
      FF0000D2FF0000D0FF0000CEFF004BD4FF0091DDF800FEF2DA00FEF2DA00FEF2
      DA00FEF2DA00FEF2DA00FEF2DA00FEF2DA00C2D3DE005E9ED0005CD4F9000000
      0000000000000000000000000000000000000000000088E5EE0038CDDB00D1D3
      D3004BE7F2003FD9FC0041D9FC0042DAFC0042DBFD0042DBFD0042DBFD0042DB
      FD0042DAFC0047D1F10050C6E00080D3E300EBE3DC00E3D9CE0071D1E8003DD2
      FA003DD1FA003CCFF90043CBF400D0BCAC00D0BEAE009DBABB0038C7F70037C6
      F70036C4F70043C6F700000000000000000000000000FFF2E600FED9B20094B3
      AA00D4D4D40087B5CF0039EEFF005CF2FF007FF4FF009BF7FF00A7F7FF0096F5
      FF0078F1FF0055EBFF0032E4FF0013DDFF0000D7FF0000D3FF0000D0FF0000CC
      FF0000C8FF008DB9BC00FED7C600FFF1EB000000000000000000000000000000
      000000000000000000000000000000000000FCF8FC009DB89D00398241003E9E
      5C000A7E2A00077B23000983290008892A00139A400029B466002AB96B0022B9
      650087CEA600F7EFF300FAF4F700E3EBE60067D097003ECA7E0047CD850036C3
      710010A840000BA33A000BA23A00049C33001BA8470050A86700104F1100003E
      0000003C00001E571E00C0CCC000F6F5F6000000000000000000000000000000
      000000000000B5F5FE004FCFEF005C8AB700B5BBC00085DCFF004CDBFF0000D7
      FF0000D4FF0000D2FF0000D0FF004CD6FF0093DEF700FEEDD600FEEDD600FEED
      D600FEEDD600FEEDD600FEEDD600FEEDD600C2D1DC005E9ECE005CD4F9000000
      0000000000000000000000000000000000000000000088E8F10031D4E100D8DA
      DA0087E2E90032E2FD0042DBFD0043DCFD0043DDFD0043DDFD0043DDFD0043DC
      FD0042DBFD0042DAFC0045D4F4007DD7EA00F1EBE600EAE2DB007FD3E6003DD2
      FA003DD0FA003CCFF90052C9EA00D3C2B200D8C9BC009FBDC10038C7F70037C5
      F70036C4F70035C2F600DEF5FE000000000000000000FFF5EB00FEDBB30098B4
      A800D9D9D900B4D6E4006BEAF80072F6FF009DF9FF00C6FBFF00D7FCFF00BEF9
      FF0094F5FF0069EFFF0041E8FF001BE0FF0002D9FF0000D5FF0000D1FF0000CE
      FF0000CAFF009CBDBC00FFE2D500FFF7F3000000000000000000000000000000
      000000000000000000000000000000000000F8F4F700C5D6C80027863E000C7E
      2C00198B3E0011843200067C2300118D370024A7590025AE5F001EB05D0085CB
      A300F7F0F300F3F2F200EFF0F000F7F2F500E3EAE60063CC920038C4780040C7
      7E0030BB6A0011A23E000F9E3A000D9C380003952F001AA043004FA26300104E
      1100003D00000036000056825600FAF7FA000000000000000000000000000000
      000000000000B5F6FE004FD1EE00738AA600DDC5AC0089DFFF004EDEFF0000D9
      FF0000D6FF0000D4FF0000D1FF004FD8FF0096DEF600FEE8D000FEE8D000FEE8
      D000FEE8D000FEE8D000FEE8D000FEE8D000C3CFD8005E9DCD005CD6FA000000
      0000000000000000000000000000000000000000000088ECF4002ADAE700E0E1
      E100D2E2E30026EBFD0043DDFD0044DEFD0044DEFE0044DEFE0044DEFD0043DD
      FD0043DCFD0042DBFD0041D9FC0061DAF500F1ECE700F1ECE700C7D7D40060D0
      EB005BCDEB005ECAE600AABBB600DACCBF00E0D4C9007EC1D20038C7F70037C5
      F70036C3F60035C1F600AEE6FB000000000000000000FFFAF400FEDEB40095B9
      AB00AEE9ED00EEEEEE00E9EDF000C3EEF500BBF6FC00DBFDFF00FAFFFF00D1FC
      FF00A1F7FF0071F1FF0043EAFF0021E2FF0002DAFF0000D6FF0000D2FF0000CF
      FF0000CBFF00B6C6C000FFECE300FFFBFA000000000000000000000000000000
      00000000000000000000000000000000000000000000FAF6F900A5C8AD00127C
      2D00118332001A8D3F00148A38001E994A0020A1520018A24F0082C69D00F7F0
      F400F3F2F200000000000000000000000000F7F2F500E3EAE5005CC88D0036C0
      740040C37C0031B86A001AA04300189C3F000D943500018A28001C963F00509C
      61000F4C100000380000447C4400F9F6F9000000000000000000000000000000
      000000000000B5F7FE0050D2EE007389A400DDC5AC008CE1FF0050E0FF0000DA
      FF0000D8FF0000D5FF0000D2FF0051DAFF0099DFF500FEE2CB00FEE2CB00FEE2
      CB00FEE2CB00FEE2CB00FEE2CB00FEE2CB00C4CDD6005F9DCC005CD6F9000000
      0000000000000000000000000000000000000000000087EEF70024E0ED00E7E8
      E800E7E8E80035EEFB0044DFFE0045E0FE0045E0FE0045E0FE0044DFFE0044DE
      FD0043DCFD0042DBFD0041D9FC0040D7FC00CAE2E300F6F3F000F2EDE800E2D6
      CC00D8C9BC00D5C4B600DED2C600E9E0D900DCDAD40049C8F30037C6F70036C4
      F70035C2F60035C1F6007ED6F900000000000000000000000000FEE4BE00D0BF
      A80061DDEB0065ECF400BFF0F200F3F4F400F3F6F700E4F8FB00DDFBFE00BDFB
      FF0093F6FF0069F1FF0041EAFF001BE2FF0002DBFF0000D7FF0000D3FF0000D0
      FF0023C3E900E0E0DA00FFEFE800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFF8FD00A9CA
      B100137F2F00128434001B8F41001A9444001395420080BF9700F7F1F400F3F2
      F3000000000000000000000000000000000000000000F8F3F600DEE9E3005DC6
      8B0038BC730040BE7A0035B26800229B4600209641000C892E00007E21001B89
      37005198600008500900437D4300F9F6F9000000000000000000000000000000
      000000000000B5F8FE0050D4EE007289A400DDC4AC008FE3FF0052E1FF0000DC
      FF0000D9FF0000D7FF0000D4FF0053DCFF009BE0F300FEDCC600FEDCC600FEDC
      C600FEDCC600FEDCC600FEDCC600FEDCC600C4CAD4005F9DCC005CD7F9000000
      0000000000000000000000000000000000000000000087F2F9001DE6F300EFF0
      F000EFF0F00067EFFA0026EDFE002AECFE002AECFE0029EBFE0029EBFE0029EA
      FE0028E9FE0028E8FD0027E7FD0026E6FD0043E4F800D6E1DC00F6F3EF00F5F0
      ED00F3EFEB00F2EDE800F1EBE600E4E4DF0057D9EB0022DCFA0021DBFA0020DA
      FA0020D9FA0023D4F90085D8F900000000000000000000000000FEEED400F8DE
      B500DFC9BD00BEEAF5007BEAF6008BF1F700D0F4F700F6F7F700F4F7F800D0F2
      F80090EFFA0054EFFF0032E9FF0013E2FF0000DBFF0000D8FF0000D4FF0000D0
      FF0079BAC100FEFAF700FFEFE700000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFF8
      FD00A8CAB000117E2E00108432000E8835007EB99100F8F2F500F3F2F3000000
      0000000000000000000000000000000000000000000000000000F8F3F600DFE9
      E3005EC1880039B46D0042B674003AAB64002C964900248E3F00067A23000479
      22002B984F00449455004C854E00F8F5F7000000000000000000000000000000
      000000000000B5F8FE0051D5EE005F85AD00C2B8B30091E4FF0053E3FF0000DD
      FF0000DBFF0000D8FF0000D5FF0055DDFF009FE0F200FED5C000FED5C000FED5
      C000FED5C000FED5C000FED5C000FED5C000C6C7D100609DCB005CD7F9000000
      0000000000000000000000000000000000000000000087F4FC0016ECF900F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F6F6F500EFEAE700E8E1
      DB00E9E1DA00E7DED700EBE4DF00F6F5F400F7F7F70086E2F80015CBF9000000
      0000000000000000000000000000000000000000000000000000FFFCF600FEE6
      B900DEC2A900F7F2EF0000000000C9EEF70091ECF80094F1F800CBF4F700F1F4
      F500EBF0F200A7E5F2004CE1F70008E1FF0000DBFF0000D8FF0000D4FF0022C6
      E700CAD4CE00FAF0EA00FFFBF900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F0
      F000FFF8FD009FC5A900107E2E007DB58D00F8F2F600F3F2F300000000000000
      000000000000000000000000000000000000000000000000000000000000F8F3
      F600E0E9E3005FBA83003DAD690047B0700040A5620035924C0024893E001489
      3900108432001281300088B89300F9F5F8000000000000000000000000000000
      000000000000B4F9FE0052D6EE005283B300AFB3C20094E6FF0054E5FF0000DF
      FF0000DCFF0000D9FF0000D6FF0057DFFF00A1E0F100FECEBA00FECEBA00FECE
      BA00FECEBA00FECEBA00FECEBA00FECEBA00C6C4CE00609CCA005CD8F9000000
      0000000000000000000000000000000000000000000087F7FF000FF1FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000087E8FF000FCEFF000000
      000000000000000000000000000000000000000000000000000000000000FEF2
      DA00FDE8B800D5B8A500FCFBFA000000000000000000CAEEF70084E7F70070E9
      F700AEECF500E9EFF000E4EAEE008DDBEF0032D7F60000D7FF0010CEF4009DBA
      B600FFE9DB009FD3DC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F0F000F7F4F600CADCCF00F2F1F100F3F1F20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F3F600DCE7E0005DB47D0042A766004CAA6C0047A1620048A16300208B
      3F00027620006EAC7E00F6F4F500F2F1F1000000000000000000000000000000
      000000000000B4F9FE0052D8ED005181B200AFB1BF0095E7FF0056E6FF0000E0
      FF0000DDFF0000DAFF0000D7FF005AE1FF00A4E1F000FEC6B300FEC6B300FEC6
      B300FEC6B300FEC6B300FEC6B300FEC6B300C7C1CB00619DC9005CD8F9000000
      0000000000000000000000000000000000000000000087F7FF0006F0FF0066F7
      FF0066F8FF0066FAFF0066FBFF0066FBFF0066FAFF0066F9FF0066F8FF0066F7
      FF0066F5FF0066F4FF0066F2FF0066F1FF0066EFFF0066EEFF0066ECFF0066EB
      FF0066E9FF0066E8FF0066E6FF0066E4FF0066E3FF0036D8FF000FCEFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FE00FEEFCA00F9E6B900D4B6A300F6F1EE0000000000000000000000000080C3
      DC001DD7F0003ED5ED0094E4F200E5EEF000E2EAED0094D0DD00A1B2AB00F7DD
      C700BED9D70018BCEA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F4F600F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8F4F700DCE6DF0062B07B0047A2630050A469004FA26700328E
      49006FAC7E00F9F5F800F4F2F300000000000000000000000000000000000000
      000000000000B4F9FE0053D8ED005180B000B0AEBD0097E8FF0056E7FF0000E1
      FF0000DEFF0000DBFF0000D8FF005CE2FF00A7E0EF00FEBDAD00FEBDAD00FEBD
      AD00FEBDAD00FEBDAD00FEBDAD00FEBDAD00C7BDC800629CC8005CD8F9000000
      0000000000000000000000000000000000000000000087F6FF0000EFFF0000F1
      FF0000F3FF0000F4FF0000F6FF0000F6FF0000F5FF0000F4FF0000F2FF0000F0
      FF0000EEFF0000EBFF0000E9FF0000E6FF0000E4FF0000E1FF0000DFFF0000DC
      FF0000DAFF0000D7FF0000D5FF0000D2FF0000D0FF0000CDFF0066E0FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFEFB00FEF0CB00FDECBA00DCC1A800DDC7BB00F9F5F30000000000C1D6
      E50033C5E300379CAD0024B0C9003FC7E200A6B6B200DABCA600FED6B500DCD8
      CB003CCCF40018BBEA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F4F700DCE6DE0066AC79004C9E61004A9A5D0096C0
      A000F8F4F700F3F2F30000000000000000000000000000000000000000000000
      000000000000B4FAFE0053D8EC00517FAE00B0AABB00ABE9FF007AE9FF006CE8
      FF006FE8FF0072E8FF0075E8FF0088EAFF00C1E2EB00FEB4A600FEB4A600FEB4
      A600FEB4A600FEB4A600FEB4A600FEB4A600C8BAC400639CC7005CD8F9000000
      0000000000000000000000000000000000000000000087F6FF0000EDFF0022D6
      E50022D7E50022D8E50022D8E50022D8E50022D8E50022D8E50022D6E50014DF
      EF0000ECFF0099F7FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFE00FEF4DA00FEECBC00F7E4B800DDC0A600DABFAC00E0C8
      BA00BEAEA40097B6B4008BA49D00B0A89500EDD1B000F4D5B30098D2D700F0FC
      FF00F0F8FB0095C7D70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F4F700DAE4DD0066A7740096BF9F00F7F3
      F600F3F1F2000000000000000000000000000000000000000000000000000000
      000000000000B4F9FE0054D8EC004E7EAE00C3AFB900D5CBD400CECDD600CCCF
      D700CFCFD700D1D0D700D3D2D700D9D2D600E2CACC00E0B5B600E0B5B600E0B5
      B600E0B5B600E0B5B600E0B5B600E0B5B600B5B5C700619AC4005CD8F9000000
      00000000000000000000000000000000000000000000CFFBFF0036EFFF0033F1
      FF0033F2FF0033F3FF0033F4FF0033F4FF0033F4FF0033F3FF0033F1FF0033F1
      FF0099F7FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFCF700FEF2D600FEEAC000FEE7B800FEE5
      B700FEE2B600FEE0B500FEDDB400EADABA0096C9C50044A0B50016B2DF00F0FB
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F3F500E3E9E400EFEFEF00F2F1
      F200000000000000000000000000000000000000000000000000000000000000
      000000000000B4F9FE0050DDEF00407AAC006799C200689AC200689AC300699A
      C3006A9BC3006A9BC4006A9BC4006B9BC4006C9CC5006C9DC4006D9DC4006D9D
      C4006E9EC5006F9FC5006F9EC500709EC6006E9CC4005997C2005BD7F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFBF300FFF9
      F000FFF3E100FFF8F000FFFAF30000000000CCEAF60066D1F20015BEF100F0FB
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F2F300F1F1F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C3FAFF0056F2FE002CD9ED002FE1F2002FE3F3002FE4F3002FE4
      F3002FE2F40030E2F30030E0F30031DFF40031DDF40031DCF50031D9F50031D8
      F40031D7F50032D4F50032D2F40033D0F40033CEF50054D1F3007DE0FC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DBF2FA00FCFE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF00E0FFFE07FFFE7FFF0000000000000000
      C07FFC03FFC003FF0000000000000000803FF801FF00007F0000000000000000
      001FF000FC00003F0000000000000000000FE000F800000F0000000000000000
      0007C000F0000007000000000000000000038000E00000030000000000000000
      00010000C0000003000000000000000000000000800000010000000000000000
      0000000180000000000000000000000080000003000000000000000000000000
      C0000007000000000000000000000000E000000F000000000000000000000000
      F000001F000000000000000000000000F800003F000000000000000000000000
      FC00007F000000000000000000000000FE0000FF000000000000000000000000
      FC00007F000000000000000000000000F800003F000000000000000000000000
      F000001F800000000000000000000000E000000F000000000000000000000000
      C000000700000000000000000000000080000003000000000000000000000000
      0000000180000000000000000000000000000000800000010000000000000000
      00010000C0000003000000000000000000038000E00000030000000000000000
      0007C000E00000070000000000000000000FE000F400000F0000000000000000
      801FF001F800001F0000000000000000C03FF803FE00003F0000000000000000
      E07FFC07FF8000FF0000000000000000FEFFFFBFFFFFFFFFFFFFFFFFFFFFFFFF
      F83FFF1FFFFFFFFFFFFFFF8FFFF8FFFFF80FFF1FFFF8000FF0FFFF87FFF07FFF
      F803FF1FFFF8000FC03FFF03FFE03FFFF800FF1FC000000FC00FFE03FFC01FFF
      F8007F1F8000000FC003FC03FF800FFFF8007F1F8000000FC000F80FFF0007FF
      F8007F1F8000000FC000201FFE0003FFF8007F1F8000000FC000003FFC0001FF
      F800001F8000000FC000007FF80000FFF800001F80000007C00000FFF000007F
      F800001F80000007C00000FFE000003FF800001F80000007C00003FFC000001F
      F800001F80000007C00001FF8000000FF800001F80000003C00001FF00000007
      F800001F80000003C00001FF00000003F800001F80000003800000FF00000001
      F800001F80000003800000FF00000000F800001F80000003800000FF00000000
      F800001F80000001800000FF00000000F800001F80000001800000FF80070000
      F800001F80000001C00001FFC00F8000F800001F80000001C00001FFE01FC000
      F800001F8000001FC20001FFE03FE000F800001F9FFFFF9FE18003FFF07FF000
      F800001F8000001FE0E003FFFCFFF801F800001F8000001FF02003FFFFFFFC03
      F800001F8003FFFFF80003FFFFFFFE07F800001F8007FFFFFE000FFFFFFFFF0F
      F800001FFFFFFFFFFFC10FFFFFFFFF9FF800001FFFFFFFFFFFFFCFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object cdsVenda: TZQuery
    Connection = DM.ZConnection
    OnCalcFields = cdsVendaCalcFields
    CachedUpdates = True
    SQL.Strings = (
      'select v.* from tbvenda v'
      'where v.idvenda = :pidvenda')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidvenda'
        ParamType = ptInput
      end>
    Left = 231
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidvenda'
        ParamType = ptInput
      end>
    object cdsVendaidvenda: TIntegerField
      DisplayLabel = 'ID. Venda'
      FieldName = 'idvenda'
    end
    object cdsVendadatahora: TDateTimeField
      DisplayLabel = 'Data Hora'
      FieldName = 'datahora'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsVendausuario: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'usuario'
    end
    object cdsVendatotal_venda: TFloatField
      DisplayLabel = 'Total Venda'
      FieldName = 'total_venda'
      currency = True
    end
    object cdsVendaaberta: TWideStringField
      FieldName = 'aberta'
      Size = 1
    end
    object cdsVendacodcliente: TIntegerField
      FieldName = 'codcliente'
    end
    object cdsVendatipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
    object cdsVendadescTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'descTipo'
      Size = 10
      Calculated = True
    end
    object cdsVendadesconto: TFloatField
      FieldName = 'desconto'
    end
    object cdsVendaacrescimo: TFloatField
      FieldName = 'acrescimo'
    end
    object cdsVendaforma_pagamento: TWideStringField
      FieldName = 'forma_pagamento'
      Size = 45
    end
    object cdsVendatotal_pagar: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'total_pagar'
      Calculated = True
    end
    object cdsVendasaldo_desconto: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'saldo_desconto'
      Calculated = True
    end
    object cdsVendavalidade: TDateField
      FieldName = 'validade'
    end
    object cdsVendaobs: TWideStringField
      FieldName = 'obs'
      Size = 200
    end
    object cdsVendakilometragem: TIntegerField
      FieldName = 'kilometragem'
    end
  end
  object cdsItemVenda: TZQuery
    Connection = DM.ZConnection
    OnCalcFields = cdsItemVendaCalcFields
    UpdateObject = ZUpdateItem
    CachedUpdates = True
    SQL.Strings = (
      
        'select v.*, p.codbarras, p.descricao, k.codbarras as codbarraski' +
        't, k.descricao as desckit from tbvenda_item v'
      'left join tbproduto p on v.idproduto = p.idproduto'
      'left join tbkit k on v.idkit = k.idkit'
      'where v.idvenda = :pidvenda')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidvenda'
        ParamType = ptInput
      end>
    Left = 367
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidvenda'
        ParamType = ptInput
      end>
    object cdsItemVendaidvenda: TIntegerField
      DisplayLabel = 'item'
      FieldName = 'idvenda'
      Required = True
    end
    object cdsItemVendaiditem: TIntegerField
      FieldName = 'iditem'
      Required = True
    end
    object cdsItemVendaidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object cdsItemVendaqtde: TIntegerField
      DisplayLabel = 'Qtde'
      FieldName = 'qtde'
      Required = True
    end
    object cdsItemVendapreco: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'preco'
      Required = True
      currency = True
    end
    object cdsItemVendacodbarras: TWideStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'codbarras'
      Size = 40
    end
    object cdsItemVendadescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 80
    end
    object cdsItemVendaValorTotal: TCurrencyField
      DisplayLabel = 'Valor Total'
      FieldKind = fkCalculated
      FieldName = 'ValorTotal'
      Calculated = True
    end
    object cdsItemVendadesconto: TFloatField
      DisplayLabel = 'Desconto (R$)'
      FieldName = 'Desconto'
      currency = True
    end
    object cdsItemVendasubtotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'subtotal'
      Calculated = True
    end
    object cdsItemVendadescontoper: TFloatField
      FieldKind = fkCalculated
      FieldName = 'descontoper'
      DisplayFormat = '#0.0" %"'
      Calculated = True
    end
    object cdsItemVendaidkit: TIntegerField
      FieldName = 'idkit'
    end
    object cdsItemVendacodbarraskit: TWideStringField
      FieldName = 'codbarraskit'
      Size = 40
    end
    object cdsItemVendadesckit: TWideStringField
      FieldName = 'desckit'
      Size = 80
    end
    object cdsItemVendaDescCalc: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'DescCalc'
      Size = 80
      Calculated = True
    end
    object cdsItemVendaBarrasCalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'BarrasCalc'
      Size = 30
      Calculated = True
    end
    object cdsItemVendapreco_custo: TFloatField
      FieldName = 'preco_custo'
    end
  end
  object ZUpdateItem: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbvenda_item'
      'WHERE'
      '  tbvenda_item.idvenda = :OLD_idvenda AND'
      '  tbvenda_item.iditem = :OLD_iditem')
    InsertSQL.Strings = (
      'INSERT INTO tbvenda_item'
      
        '  (idvenda, iditem, idproduto, qtde, preco, desconto, idkit, pre' +
        'co_custo)'
      'VALUES'
      
        '  (:idvenda, :iditem, :idproduto, :qtde, :preco, :desconto, :idk' +
        'it, '
      ':preco_custo)')
    ModifySQL.Strings = (
      'UPDATE tbvenda_item SET'
      '  idvenda = :idvenda,'
      '  iditem = :iditem,'
      '  idproduto = :idproduto,'
      '  qtde = :qtde,'
      '  preco = :preco,'
      '  desconto = :desconto,'
      '  idkit = :idkit,'
      '  preco_custo = :preco_custo'
      'WHERE'
      '  tbvenda_item.idvenda = :OLD_idvenda AND'
      '  tbvenda_item.iditem = :OLD_iditem')
    UseSequenceFieldForRefreshSQL = False
    Left = 367
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idvenda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iditem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idproduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'preco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkit'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'preco_custo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idvenda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_iditem'
        ParamType = ptUnknown
      end>
  end
  object dsVenda: TDataSource
    DataSet = cdsVenda
    OnDataChange = dsVendaDataChange
    Left = 639
    Top = 416
  end
  object cdsPesCliente: TZQuery
    Connection = DM.ZConnection
    SQL.Strings = (
      'select codcliente, nome, documento, endereco, bairro, '
      
        'concat(cidade, '#39'-'#39', uf) as cidade, telefone, celular, email from' +
        ' tbcliente')
    Params = <>
    Left = 536
    Top = 312
    object cdsPesClientecodcliente: TIntegerField
      FieldName = 'codcliente'
      Required = True
    end
    object cdsPesClientenome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 60
    end
    object cdsPesClientedocumento: TWideStringField
      FieldName = 'documento'
      Size = 14
    end
    object cdsPesClienteendereco: TWideStringField
      FieldName = 'endereco'
      Size = 60
    end
    object cdsPesClientebairro: TWideStringField
      FieldName = 'bairro'
      Size = 40
    end
    object cdsPesClientecidade: TWideStringField
      FieldName = 'cidade'
      ReadOnly = True
      Size = 43
    end
    object cdsPesClientetelefone: TWideStringField
      FieldName = 'telefone'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 15
    end
    object cdsPesClientecelular: TWideStringField
      FieldName = 'celular'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 15
    end
    object cdsPesClienteemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'Tahoma'
    AddedTitle.Font.Style = []
    FormHeader.AdditionalHeight = 0
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    OnSkinItem = sSkinProvider1SkinItem
    Left = 688
    Top = 80
  end
  object cdsPesProd: TZQuery
    Connection = DM.ZConnection
    ReadOnly = True
    Params = <>
    Left = 568
    Top = 432
  end
  object dsItemVenda: TDataSource
    DataSet = cdsItemVenda
    OnDataChange = dsItemVendaDataChange
    Left = 384
    Top = 448
  end
  object TimerHora: TTimer
    OnTimer = TimerHoraTimer
    Left = 640
    Top = 8
  end
  object dsCliente: TDataSource
    DataSet = cdsPesCliente
    Left = 496
    Top = 312
  end
  object cdsConta: TZQuery
    Connection = DM.ZConnection
    CachedUpdates = True
    SQL.Strings = (
      'select * from tbconta where idconta = :pidconta')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pidconta'
        ParamType = ptUnknown
      end>
    Left = 744
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pidconta'
        ParamType = ptUnknown
      end>
    object cdsContaidconta: TIntegerField
      FieldName = 'idconta'
      Required = True
    end
    object cdsContadata_lancamento: TDateField
      FieldName = 'data_lancamento'
      Required = True
    end
    object cdsContadata_vencimento: TDateField
      FieldName = 'data_vencimento'
    end
    object cdsContadata_pagamento: TDateField
      FieldName = 'data_pagamento'
    end
    object cdsContavalor: TFloatField
      FieldName = 'valor'
    end
    object cdsContadesconto: TFloatField
      FieldName = 'desconto'
    end
    object cdsContaacrescimo: TFloatField
      FieldName = 'acrescimo'
    end
    object cdsContaforma_pagamento: TWideStringField
      FieldName = 'forma_pagamento'
      Size = 45
    end
    object cdsContaidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object cdsContaidvenda: TIntegerField
      FieldName = 'idvenda'
    end
    object cdsContaidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
    object cdsContadescricao: TWideStringField
      FieldName = 'descricao'
      Size = 60
    end
    object cdsContaobs: TWideStringField
      FieldName = 'obs'
      Size = 100
    end
    object cdsContaparcela: TWideStringField
      FieldName = 'parcela'
    end
    object cdsContatipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
    object cdsContausuario_cadastro: TIntegerField
      FieldName = 'usuario_cadastro'
    end
    object cdsContausuario_pagamento: TIntegerField
      FieldName = 'usuario_pagamento'
    end
    object cdsContaidconta_grupo: TIntegerField
      FieldName = 'idconta_grupo'
    end
    object cdsContaidcartao: TIntegerField
      FieldName = 'idcartao'
    end
    object cdsContanumcheque: TWideStringField
      FieldName = 'numcheque'
      Size = 30
    end
    object cdsContabanco: TWideStringField
      FieldName = 'banco'
    end
    object cdsContaagencia: TWideStringField
      FieldName = 'agencia'
      Size = 15
    end
    object cdsContaconta: TWideStringField
      FieldName = 'conta'
      Size = 15
    end
    object cdsContaidgrupoconta: TIntegerField
      FieldName = 'idgrupoconta'
    end
    object cdsContavalor_pago: TFloatField
      FieldName = 'valor_pago'
    end
    object cdsContatipo_cheque: TWideStringField
      FieldName = 'tipo_cheque'
      Size = 1
    end
    object cdsContadocumento_terceiro: TWideStringField
      FieldName = 'documento_terceiro'
      Size = 14
    end
  end
  object qrSel: TZQuery
    Connection = DM.ZConnection
    OnFilterRecord = qrSelFilterRecord
    SQL.Strings = (
      'select idproduto, codbarras, descricao, valor_custo, '
      'valor_varejo, controla_estoque, '#10'est_atual, '
      #39'tbproduto'#39' as tabela from '#10'tbproduto')
    Params = <>
    Left = 496
    Top = 520
    object qrSelcodbarras: TWideStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'codbarras'
      Size = 40
    end
    object qrSeldescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 40
    end
    object qrSelvalor_varejo: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'valor_varejo'
      currency = True
    end
    object qrSelest_atual: TIntegerField
      DisplayLabel = 'Estoque'
      FieldName = 'est_atual'
    end
    object qrSelidproduto: TIntegerField
      FieldName = 'idproduto'
      Required = True
    end
    object qrSelvalor_custo: TFloatField
      FieldName = 'valor_custo'
      currency = True
    end
    object qrSeltabela: TWideStringField
      FieldName = 'tabela'
      ReadOnly = True
      Size = 9
    end
  end
  object dsSel: TDataSource
    DataSet = qrSel
    Left = 440
    Top = 512
  end
  object qrPrecoCliente: TZQuery
    Connection = DM.ZConnection
    SQL.Strings = (
      'select preco, v.codcliente from tbvenda_item vi'
      'inner join tbvenda v on vi.idvenda = v.idvenda'
      'where vi.idproduto = :pidproduto and v.codcliente = :pcodcliente'
      'order by vi.idvenda desc limit 1')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidproduto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcodcliente'
        ParamType = ptInput
      end>
    Left = 264
    Top = 512
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidproduto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcodcliente'
        ParamType = ptInput
      end>
  end
  object qrSelCliente: TZQuery
    Connection = DM.ZConnection
    OnFilterRecord = qrSelClienteFilterRecord
    SQL.Strings = (
      'select codcliente, nome, documento, endereco, bairro, '
      
        'concat(cidade,'#39'-'#39', uf) as cidade, telefone, celular, email from ' +
        'tbcliente')
    Params = <>
    Left = 248
    Top = 216
    object qrSelClientecodcliente: TIntegerField
      FieldName = 'codcliente'
      Required = True
    end
    object qrSelClientenome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Required = True
      Size = 60
    end
    object qrSelClientedocumento: TWideStringField
      DisplayLabel = 'Documento'
      FieldName = 'documento'
      OnGetText = qrSelClientedocumentoGetText
      Size = 14
    end
    object qrSelClienteendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 60
    end
    object qrSelClientebairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 40
    end
    object qrSelClientecidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      ReadOnly = True
      Size = 43
    end
    object qrSelClientetelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 15
    end
    object qrSelClientecelular: TWideStringField
      DisplayLabel = 'Celular'
      FieldName = 'celular'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 15
    end
    object qrSelClienteemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
  end
  object dsSelCliente: TDataSource
    DataSet = qrSelCliente
    Left = 280
    Top = 240
  end
end

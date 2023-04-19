inherited FormCadKit: TFormCadKit
  Caption = 'Cadastro de Kits de Produtos'
  ClientHeight = 510
  ClientWidth = 817
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 823
  ExplicitHeight = 539
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 64
    Width = 22
    Height = 13
    Caption = 'C'#243'd.'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 231
    Top = 64
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 704
    Top = 91
    Width = 54
    Height = 13
    Caption = 'Valor Custo'
    FocusControl = DBEdit3
    Visible = False
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 108
    Width = 77
    Height = 13
    Caption = 'Pre'#231'o de Venda'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 227
    Top = 108
    Width = 66
    Height = 13
    Caption = 'Inf. Adicionais'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 156
    Top = 108
    Width = 56
    Height = 13
    Caption = 'Est. M'#237'nimo'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 638
    Top = 64
    Width = 59
    Height = 13
    Caption = 'Dt. Cadastro'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 66
    Top = 64
    Width = 55
    Height = 13
    Caption = 'C'#243'd. Barras'
    FocusControl = DBEdit8
  end
  inherited pnlPrincipal: TPanel
    Width = 817
    ExplicitWidth = 817
    inherited btnPrimeiro: TBitBtn
      Left = 368
      Visible = False
      ExplicitLeft = 368
    end
    inherited btnAnterior: TBitBtn
      Left = 442
      Visible = False
      ExplicitLeft = 442
    end
    inherited btnProximo: TBitBtn
      Left = 516
      Visible = False
      ExplicitLeft = 516
    end
    inherited btnUltimo: TBitBtn
      Left = 590
      Visible = False
      ExplicitLeft = 590
    end
    inherited btnLocalizar: TBitBtn
      Left = 664
      ExplicitLeft = 664
    end
    inherited btnFechar: TBitBtn
      Left = 738
      ExplicitLeft = 738
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 491
    Width = 817
    ExplicitTop = 491
    ExplicitWidth = 817
  end
  object DBEdit1: TDBEdit [10]
    Left = 8
    Top = 80
    Width = 54
    Height = 21
    CharCase = ecUpperCase
    DataField = 'idkit'
    DataSource = dsNavegacao
    Enabled = False
    ReadOnly = True
    TabOrder = 1
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = SelectProximo
  end
  object DBEdit2: TDBEdit [11]
    Left = 231
    Top = 80
    Width = 403
    Height = 21
    CharCase = ecUpperCase
    DataField = 'descricao'
    DataSource = dsNavegacao
    TabOrder = 3
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = SelectProximo
  end
  object DBEdit3: TDBEdit [12]
    Left = 704
    Top = 107
    Width = 134
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'valor_custo'
    DataSource = dsNavegacao
    ReadOnly = True
    TabOrder = 5
    Visible = False
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = SelectProximo
  end
  object DBEdit4: TDBEdit [13]
    Left = 8
    Top = 124
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'valor_varejo'
    DataSource = dsNavegacao
    TabOrder = 6
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = SelectProximo
  end
  object DBEdit5: TDBEdit [14]
    Left = 227
    Top = 124
    Width = 439
    Height = 21
    CharCase = ecUpperCase
    DataField = 'info_adicional'
    DataSource = dsNavegacao
    TabOrder = 8
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = SelectProximo
  end
  object DBEdit6: TDBEdit [15]
    Left = 156
    Top = 124
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    DataField = 'est_minimo'
    DataSource = dsNavegacao
    TabOrder = 7
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = SelectProximo
  end
  object DBEdit7: TDBEdit [16]
    Left = 638
    Top = 80
    Width = 168
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'dt_cadastro'
    DataSource = dsNavegacao
    ReadOnly = True
    TabOrder = 4
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = SelectProximo
  end
  object DBEdit8: TDBEdit [17]
    Left = 66
    Top = 80
    Width = 161
    Height = 21
    CharCase = ecUpperCase
    DataField = 'codbarras'
    DataSource = dsNavegacao
    TabOrder = 2
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = SelectProximo
  end
  object Panel1: TPanel [18]
    Left = 0
    Top = 155
    Width = 817
    Height = 336
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 9
    object DBGridEh1: TDBGridEh
      Left = 0
      Top = 72
      Width = 817
      Height = 216
      Align = alBottom
      DataGrouping.GroupLevels = <>
      DataSource = dsKitProduto
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      RowDetailPanel.Color = clBtnFace
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGridEh1DblClick
      OnGetCellParams = DBGridEh1GetCellParams
      OnKeyPress = DBGridEh1KeyPress
      Columns = <
        item
          EditButtons = <>
          FieldName = 'codbarras'
          Footers = <>
          ReadOnly = True
          Width = 140
        end
        item
          EditButtons = <>
          FieldName = 'descricao'
          Footers = <>
          ReadOnly = True
          Width = 257
        end
        item
          EditButtons = <>
          FieldName = 'qtde'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'valor_varejo'
          Footers = <>
          ReadOnly = True
        end
        item
          EditButtons = <>
          FieldName = 'valor_custo'
          Footers = <>
          ReadOnly = True
        end
        item
          EditButtons = <>
          FieldName = 'valor_total'
          Footers = <>
          Title.Caption = 'Total do Item'
          Width = 73
        end
        item
          EditButtons = <>
          FieldName = 'est_atual'
          Footers = <>
          ReadOnly = True
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'Completo'
          Footers = <>
          ReadOnly = True
          Width = 48
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 817
      Height = 23
      Align = alTop
      Caption = 'Produtos do Kit'
      TabOrder = 0
    end
    object btnAdicionar: TBitBtn
      Left = 594
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FF64B89C64B89CFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C98
        EEC998EEC964B89CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FF64B89C5EE1A35EE1A364B89CFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C63
        E5A863E5A864B89CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FF64B89C64B89C64B89C64B89C67E9AD67E9AD64B89C64B89C64B89C64B8
        9CFB00FFFB00FFFB00FFFB00FFFB00FF64B89CA7F6D5A7F6D5A7F6D5A7F6D56D
        EDB26DEDB2A7F6D5A7F6D5A7F6D5A7F6D564B89CFB00FFFB00FFFB00FFFB00FF
        64B89C72F2B872F2B872F2B872F2B872F2B872F2B872F2B872F2B872F2B872F2
        B864B89CFB00FFFB00FFFB00FFFB00FFFB00FF64B89C64B89C64B89C64B89C76
        F6BD76F6BD64B89C64B89C64B89C64B89CFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FF64B89C7BFAC27BFAC264B89CFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C7E
        FDC57EFDC564B89CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FF64B89C81FFC881FFC864B89CFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64
        B89C64B89CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btnAdicionarClick
    end
    object btnRemover: TBitBtn
      Left = 673
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Remover'
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
      TabOrder = 3
      OnClick = btnRemoverClick
    end
    object edProduto: TLabeledEdit
      Left = 70
      Top = 43
      Width = 450
      Height = 21
      EditLabel.Width = 103
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o do Produto'
      TabOrder = 4
      OnKeyPress = edProdutoKeyPress
    end
    object edQuantidade: TLabeledEdit
      Left = 526
      Top = 43
      Width = 62
      Height = 21
      EditLabel.Width = 55
      EditLabel.Height = 13
      EditLabel.Caption = 'Quantidade'
      NumbersOnly = True
      TabOrder = 5
      Text = '1'
      OnKeyPress = edQuantidadeKeyPress
    end
    object btnCliente: TBitBtn
      Left = 3
      Top = 41
      Width = 61
      Height = 25
      Action = actLocProd
      Caption = '(F5)'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 1
      TabStop = False
    end
    object Panel3: TPanel
      Left = 0
      Top = 288
      Width = 817
      Height = 48
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 7
      object Label9: TLabel
        Left = 687
        Top = 6
        Width = 81
        Height = 13
        Caption = 'Valor Total do Kit'
      end
      object Label10: TLabel
        Left = 560
        Top = 6
        Width = 99
        Height = 13
        Caption = 'Valor de Custo do Kit'
      end
      object lbStatus: TLabel
        Tag = 1
        Left = 8
        Top = 5
        Width = 213
        Height = 16
        Caption = 'Kit n'#227'o dispon'#237'vel em estoque.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object edTotalKit: TCurrencyEdit
        Left = 685
        Top = 21
        Width = 121
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        TabOrder = 2
      end
      object edCustoKit: TCurrencyEdit
        Left = 560
        Top = 21
        Width = 121
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        TabOrder = 1
      end
      object edKitCompleto: TLabeledEdit
        Left = 418
        Top = 21
        Width = 121
        Height = 21
        TabStop = False
        EditLabel.Width = 126
        EditLabel.Height = 13
        EditLabel.Caption = 'Kits completos em estoque'
        ReadOnly = True
        TabOrder = 0
        Text = '0'
      end
    end
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsCadKit
  end
  inherited ActionList1: TActionList
    Left = 492
    Top = 108
    inherited actPrimeiro: TDataSetFirst
      ShortCut = 0
    end
    inherited actAnterior: TDataSetPrior
      ShortCut = 0
    end
    inherited actProximo: TDataSetNext
      ShortCut = 0
    end
    inherited actUltimo: TDataSetLast
      ShortCut = 0
    end
    inherited actLocalizar: TAction
      ShortCut = 0
    end
    object actLocProd: TAction
      Caption = 'actLocProd'
      ShortCut = 116
      OnExecute = actLocProdExecute
    end
  end
  inherited dsPesquisa: TDataSource
    Left = 200
  end
  object dsKitProduto: TDataSource
    DataSet = DM.cdsKitProduto
    Left = 632
    Top = 288
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
    Left = 560
    Top = 120
  end
end

inherited FormCadVeiculo: TFormCadVeiculo
  Caption = 'Cadastro de Ve'#237'culos'
  ClientHeight = 568
  ClientWidth = 634
  OnShow = FormShow
  ExplicitWidth = 640
  ExplicitHeight = 597
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 63
    Width = 62
    Height = 13
    Caption = 'Cod. Ve'#237'culo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 89
    Top = 63
    Width = 27
    Height = 13
    Caption = 'Placa'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 245
    Top = 63
    Width = 30
    Height = 13
    Caption = 'Marca'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 481
    Top = 63
    Width = 35
    Height = 13
    Caption = 'Modelo'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 386
    Top = 63
    Width = 19
    Height = 13
    Caption = 'Ano'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 104
    Width = 44
    Height = 13
    Caption = 'Renavan'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 160
    Top = 104
    Width = 31
    Height = 13
    Caption = 'Chassi'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 8
    Top = 146
    Width = 51
    Height = 13
    Caption = 'Valor IPVA'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 160
    Top = 146
    Width = 60
    Height = 13
    Caption = 'Dt. Pg. IPVA'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 320
    Top = 104
    Width = 63
    Height = 13
    Caption = 'Valor DPVAT'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 472
    Top = 104
    Width = 72
    Height = 13
    Caption = 'Dt. Pg. DPVAT'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 320
    Top = 146
    Width = 96
    Height = 13
    Caption = 'Valor Licenciamento'
    FocusControl = DBEdit12
  end
  object Label13: TLabel [12]
    Left = 472
    Top = 146
    Width = 105
    Height = 13
    Caption = 'Dt. Pg. Licenciamento'
    FocusControl = DBEdit13
  end
  object Label14: TLabel [13]
    Left = 8
    Top = 186
    Width = 53
    Height = 13
    Caption = 'Propriet'#225'rio'
  end
  inherited pnlPrincipal: TPanel
    Width = 634
    ExplicitWidth = 634
    inherited btnPrimeiro: TBitBtn
      Left = 185
      TabOrder = 3
      Visible = False
      ExplicitLeft = 185
    end
    inherited btnAnterior: TBitBtn
      Left = 259
      Visible = False
      ExplicitLeft = 259
    end
    inherited btnProximo: TBitBtn
      Left = 333
      Visible = False
      ExplicitLeft = 333
    end
    inherited btnUltimo: TBitBtn
      Left = 407
      Visible = False
      ExplicitLeft = 407
    end
    inherited btnLocalizar: TBitBtn
      Left = 481
      ExplicitLeft = 481
    end
    inherited btnExcluir: TBitBtn
      TabOrder = 4
    end
    inherited btnFechar: TBitBtn
      Left = 555
      ExplicitLeft = 555
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 549
    Width = 634
    ExplicitTop = 549
    ExplicitWidth = 634
  end
  object DBEdit1: TDBEdit [16]
    Left = 8
    Top = 79
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    DataField = 'codveiculo'
    DataSource = dsNavegacao
    Enabled = False
    TabOrder = 1
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit2: TDBEdit [17]
    Left = 89
    Top = 79
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    DataField = 'placa'
    DataSource = dsNavegacao
    TabOrder = 2
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit3: TDBEdit [18]
    Left = 245
    Top = 79
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    DataField = 'marca'
    DataSource = dsNavegacao
    TabOrder = 3
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit4: TDBEdit [19]
    Left = 481
    Top = 79
    Width = 135
    Height = 21
    CharCase = ecUpperCase
    DataField = 'modelo'
    DataSource = dsNavegacao
    TabOrder = 5
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit5: TDBEdit [20]
    Left = 386
    Top = 79
    Width = 77
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ano'
    DataSource = dsNavegacao
    TabOrder = 4
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBGridVeiculo: TDBGrid [21]
    Left = 0
    Top = 368
    Width = 634
    Height = 181
    Align = alBottom
    DataSource = dsNavegacao
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codveiculo'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'placa'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'marca'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'modelo'
        Width = 300
        Visible = True
      end>
  end
  object DBEdit6: TDBEdit [22]
    Left = 8
    Top = 120
    Width = 144
    Height = 21
    DataField = 'renavan'
    DataSource = dsNavegacao
    TabOrder = 6
  end
  object DBEdit7: TDBEdit [23]
    Left = 160
    Top = 120
    Width = 144
    Height = 21
    DataField = 'chassi'
    DataSource = dsNavegacao
    TabOrder = 7
  end
  object DBEdit8: TDBEdit [24]
    Left = 8
    Top = 162
    Width = 144
    Height = 21
    DataField = 'valor_ipva'
    DataSource = dsNavegacao
    TabOrder = 10
  end
  object DBEdit9: TDBEdit [25]
    Left = 160
    Top = 162
    Width = 144
    Height = 21
    DataField = 'dt_pgipva'
    DataSource = dsNavegacao
    TabOrder = 11
  end
  object DBEdit10: TDBEdit [26]
    Left = 320
    Top = 120
    Width = 144
    Height = 21
    DataField = 'valor_dpvat'
    DataSource = dsNavegacao
    TabOrder = 8
  end
  object DBEdit11: TDBEdit [27]
    Left = 472
    Top = 120
    Width = 144
    Height = 21
    DataField = 'dt_pgdpvat'
    DataSource = dsNavegacao
    TabOrder = 9
  end
  object DBEdit12: TDBEdit [28]
    Left = 320
    Top = 162
    Width = 144
    Height = 21
    DataField = 'valor_licenciamento'
    DataSource = dsNavegacao
    TabOrder = 12
  end
  object DBEdit13: TDBEdit [29]
    Left = 472
    Top = 162
    Width = 144
    Height = 21
    DataField = 'dt_pglicenciamento'
    DataSource = dsNavegacao
    TabOrder = 13
  end
  object DBLookupComboBox1: TDBLookupComboBox [30]
    Left = 8
    Top = 202
    Width = 353
    Height = 21
    DataField = 'idfornecedor'
    DataSource = dsNavegacao
    KeyField = 'idfornecedor'
    ListField = 'razao'
    ListSource = DM.dslkfornecedor
    TabOrder = 14
  end
  object BitBtn1: TBitBtn [31]
    Left = 364
    Top = 201
    Width = 30
    Height = 25
    Hint = 'Localizar'
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
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
    TabStop = False
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn [32]
    Left = 397
    Top = 201
    Width = 30
    Height = 25
    Hint = 'Novo registro'
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
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
    TabStop = False
    OnClick = BitBtn2Click
  end
  object Panel1: TPanel [33]
    Left = 8
    Top = 229
    Width = 618
    Height = 130
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 19
    object Label15: TLabel
      Left = 9
      Top = 12
      Width = 77
      Height = 13
      Caption = 'Funcion'#225'rios:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGridEh1: TDBGridEh
      Left = 5
      Top = 36
      Width = 605
      Height = 86
      Align = alCustom
      DataGrouping.GroupLevels = <>
      DataSource = dsFuncVeiculo
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'idfuncionario'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'nome'
          Footers = <>
          Width = 498
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object btnAdicionar: TBitBtn
      Left = 93
      Top = 7
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
      TabOrder = 1
      OnClick = btnAdicionarClick
    end
    object btnRemover: TBitBtn
      Left = 174
      Top = 7
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
      TabOrder = 2
      OnClick = btnRemoverClick
    end
  end
  object DBCheckBox1: TDBCheckBox [34]
    Left = 433
    Top = 205
    Width = 72
    Height = 17
    Caption = 'Rastreador'
    DataField = 'rastreador'
    DataSource = dsNavegacao
    TabOrder = 20
    ValueChecked = 'T'
    ValueUnchecked = 'F'
    OnClick = DBCheckBox1Click
  end
  object btnRatrear: TBitBtn [35]
    Left = 509
    Top = 198
    Width = 75
    Height = 25
    Caption = 'Rastrear....'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 21
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsCadVeiculo
    OnDataChange = dsNavegacaoDataChange
    Left = 432
    Top = 112
  end
  inherited ActionList1: TActionList
    Top = 163
  end
  inherited dsPesquisa: TDataSource
    Left = 560
    Top = 408
  end
  object dsFuncVeiculo: TDataSource
    DataSet = DM.qrFuncVeiculo
    Left = 384
    Top = 304
  end
end

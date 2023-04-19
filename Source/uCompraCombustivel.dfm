inherited FormCompCombustivel: TFormCompCombustivel
  Caption = 'Compra de Combust'#237'vel'
  ClientHeight = 264
  ClientWidth = 447
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 453
  ExplicitHeight = 289
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 11
    Top = 72
    Width = 14
    Height = 13
    Caption = 'ID.'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 87
    Top = 74
    Width = 53
    Height = 13
    Caption = 'Dt. Compra'
  end
  object Label3: TLabel [2]
    Left = 11
    Top = 165
    Width = 54
    Height = 13
    Caption = 'Qtde. Litros'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 117
    Top = 165
    Width = 47
    Height = 13
    Caption = 'V. p/ Litro'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 218
    Top = 72
    Width = 53
    Height = 13
    Caption = 'Nota Fiscal'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 259
    Top = 165
    Width = 51
    Height = 13
    Caption = 'Valor Total'
    FocusControl = DBEdit2
  end
  object Label7: TLabel [6]
    Left = 11
    Top = 118
    Width = 54
    Height = 13
    Caption = 'Fornecedor'
  end
  inherited pnlPrincipal: TPanel
    Width = 447
    inherited btnPrimeiro: TBitBtn
      Left = -2
      TabOrder = 0
      Visible = False
    end
    inherited btnAnterior: TBitBtn
      Left = 72
      TabOrder = 2
      Visible = False
    end
    inherited btnProximo: TBitBtn
      Left = 146
      TabOrder = 4
      Visible = False
    end
    inherited btnUltimo: TBitBtn
      Left = 220
      TabOrder = 6
      Visible = False
    end
    inherited btnNovo: TBitBtn
      TabOrder = 1
    end
    inherited btnSalvar: TBitBtn
      TabOrder = 3
    end
    inherited btnCancelar: TBitBtn
      TabOrder = 5
    end
    inherited btnLocalizar: TBitBtn
      Left = 294
      Visible = False
    end
    inherited btnExcluir: TBitBtn
      TabOrder = 7
    end
    inherited btnFechar: TBitBtn
      Left = 368
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 245
    Width = 447
  end
  object DBEdit1: TDBEdit [9]
    Left = 11
    Top = 88
    Width = 62
    Height = 21
    DataField = 'Idestoque_gas'
    DataSource = dsNavegacao
    Enabled = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit3: TDBEdit [10]
    Left = 11
    Top = 181
    Width = 97
    Height = 21
    DataField = 'qtde'
    DataSource = dsNavegacao
    TabOrder = 7
  end
  object DBEdit4: TDBEdit [11]
    Left = 117
    Top = 181
    Width = 134
    Height = 21
    DataField = 'valor_unit'
    DataSource = dsNavegacao
    TabOrder = 8
  end
  object DBEdit5: TDBEdit [12]
    Left = 218
    Top = 88
    Width = 131
    Height = 21
    DataField = 'nota_fiscal'
    DataSource = dsNavegacao
    TabOrder = 3
  end
  object DBDateEdit1: TDBDateEdit [13]
    Left = 87
    Top = 88
    Width = 121
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    DataField = 'data_compra'
    DataSource = dsNavegacao
    NumGlyphs = 2
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [14]
    Left = 259
    Top = 181
    Width = 134
    Height = 21
    DataField = 'valor_total'
    DataSource = dsNavegacao
    TabOrder = 9
  end
  object DBLookupComboBox1: TDBLookupComboBox [15]
    Left = 11
    Top = 133
    Width = 361
    Height = 21
    DataField = 'idfornecedor'
    DataSource = dsNavegacao
    KeyField = 'idfornecedor'
    ListField = 'razao'
    ListSource = DM.dslkfornecedor
    TabOrder = 6
  end
  object BitBtn1: TBitBtn [16]
    Left = 379
    Top = 131
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
    TabOrder = 4
    TabStop = False
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn [17]
    Left = 411
    Top = 131
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
    TabOrder = 5
    TabStop = False
    OnClick = BitBtn2Click
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.qrCompCombustivel
  end
end
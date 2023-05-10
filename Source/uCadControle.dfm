inherited frmCadControle: TfrmCadControle
  Caption = 'frmCadControle'
  ClientHeight = 281
  ClientWidth = 877
  OnShow = FormShow
  ExplicitWidth = 883
  ExplicitHeight = 310
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel [0]
    Left = 8
    Top = 72
    Width = 9
    Height = 14
    Caption = 'ID'
  end
  object Label2: TLabel [1]
    Left = 194
    Top = 72
    Width = 22
    Height = 14
    Caption = 'Data'
  end
  object Label3: TLabel [2]
    Left = 323
    Top = 72
    Width = 32
    Height = 14
    Caption = 'Cliente'
  end
  object Label4: TLabel [3]
    Left = 577
    Top = 72
    Width = 56
    Height = 14
    Caption = 'Fornecedor'
  end
  object Label5: TLabel [4]
    Left = 83
    Top = 72
    Width = 47
    Height = 14
    Caption = 'N'#186' Pedido'
  end
  object Label6: TLabel [5]
    Left = 286
    Top = 127
    Width = 64
    Height = 14
    Caption = 'Qtde Enviada'
  end
  object Label7: TLabel [6]
    Left = 8
    Top = 129
    Width = 37
    Height = 14
    Caption = 'Produto'
  end
  object Label8: TLabel [7]
    Left = 371
    Top = 127
    Width = 52
    Height = 14
    Caption = 'Pre'#231'o Unit.'
  end
  object Label9: TLabel [8]
    Left = 456
    Top = 129
    Width = 64
    Height = 14
    Caption = 'Prev. Entrega'
  end
  object Label10: TLabel [9]
    Left = 583
    Top = 129
    Width = 62
    Height = 14
    Caption = 'Data Entrega'
  end
  object Label11: TLabel [10]
    Left = 710
    Top = 129
    Width = 31
    Height = 14
    Caption = 'Status'
  end
  inherited pnlPrincipal: TPanel
    Width = 877
    ExplicitWidth = 877
    inherited btnPrimeiro: TBitBtn
      Left = 409
      Visible = False
      ExplicitLeft = 409
    end
    inherited btnAnterior: TBitBtn
      Left = 486
      Visible = False
      ExplicitLeft = 486
    end
    inherited btnProximo: TBitBtn
      Left = 563
      Visible = False
      ExplicitLeft = 563
    end
    inherited btnUltimo: TBitBtn
      Left = 640
      Visible = False
      ExplicitLeft = 640
    end
    inherited btnSalvar: TBitBtn
      Left = 80
      ExplicitLeft = 80
    end
    inherited btnCancelar: TBitBtn
      Left = 157
      ExplicitLeft = 157
    end
    inherited btnLocalizar: TBitBtn
      Left = 717
      Visible = False
      ExplicitLeft = 717
    end
    inherited btnExcluir: TBitBtn
      Left = 234
      ExplicitLeft = 234
    end
    inherited btnFechar: TBitBtn
      Left = 794
      ExplicitLeft = 794
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 262
    Width = 877
    ExplicitTop = 262
    ExplicitWidth = 877
  end
  object DBEdit2: TDBEdit [13]
    Left = 8
    Top = 88
    Width = 70
    Height = 22
    DataField = 'id'
    DataSource = dsNavegacao
    Enabled = False
    TabOrder = 2
  end
  object DBDateEdit1: TDBDateEdit [14]
    Left = 194
    Top = 88
    Width = 121
    Height = 22
    DataField = 'data'
    DataSource = dsNavegacao
    NumGlyphs = 2
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox [15]
    Left = 323
    Top = 88
    Width = 240
    Height = 22
    DataField = 'idcliente'
    DataSource = dsNavegacao
    KeyField = 'codcliente'
    ListField = 'nome'
    ListSource = DM.dslkcliente
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox [16]
    Left = 577
    Top = 88
    Width = 240
    Height = 22
    DataField = 'idfornecedor'
    DataSource = dsNavegacao
    KeyField = 'idfornecedor'
    ListField = 'razao'
    ListSource = DM.dslkfornecedor
    TabOrder = 5
  end
  object DBEdit1: TDBEdit [17]
    Left = 83
    Top = 88
    Width = 108
    Height = 22
    DataField = 'npedido'
    DataSource = dsNavegacao
    TabOrder = 6
  end
  object DBEdit3: TDBEdit [18]
    Left = 283
    Top = 145
    Width = 70
    Height = 22
    DataField = 'qtde_enviada'
    DataSource = dsNavegacao
    TabOrder = 7
  end
  object DBEdit4: TDBEdit [19]
    Left = 8
    Top = 145
    Width = 240
    Height = 22
    DataField = 'Produto'
    DataSource = dsNavegacao
    TabOrder = 8
  end
  object DBEdit5: TDBEdit [20]
    Left = 368
    Top = 145
    Width = 70
    Height = 22
    DataField = 'preco_unit'
    DataSource = dsNavegacao
    TabOrder = 9
  end
  object DBDateEdit2: TDBDateEdit [21]
    Left = 456
    Top = 145
    Width = 121
    Height = 22
    DataField = 'prev_entrega'
    DataSource = dsNavegacao
    NumGlyphs = 2
    TabOrder = 10
  end
  object DBDateEdit3: TDBDateEdit [22]
    Left = 583
    Top = 145
    Width = 121
    Height = 22
    DataField = 'data_entrega'
    DataSource = dsNavegacao
    NumGlyphs = 2
    TabOrder = 11
  end
  object DBLookupComboBox3: TDBLookupComboBox [23]
    Left = 710
    Top = 145
    Width = 150
    Height = 22
    DataField = 'idstatus'
    DataSource = dsNavegacao
    KeyField = 'idstatus'
    ListField = 'descricao'
    ListSource = DM.dsLKStatus
    TabOrder = 12
  end
  object btnCliente: TBitBtn [24]
    Left = 248
    Top = 144
    Width = 30
    Height = 25
    Hint = 'Localizar'
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
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    TabStop = False
    OnClick = btnClienteClick
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsControle
    Left = 428
    Top = 104
  end
  inherited dsPesquisa: TDataSource
    Left = 524
    Top = 120
  end
end

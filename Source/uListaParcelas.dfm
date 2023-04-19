object FormListaParcelas: TFormListaParcelas
  Left = 0
  Top = 0
  Caption = 'Parcelas do movimento'
  ClientHeight = 392
  ClientWidth = 928
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 928
    Height = 352
    Align = alClient
    AllowedOperations = []
    DataGrouping.GroupLevels = <>
    DataSource = dsParcelas
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentFont = False
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'parcela'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'data_lancamento'
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'data_vencimento'
        Footers = <>
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'data_pagamento'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'valor'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'desconto'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'acrescimo'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Totalpagar'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'valor_pago'
        Footers = <>
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 352
    Width = 928
    Height = 40
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      928
      40)
    object btnConfirmar: TBitBtn
      Left = 667
      Top = 6
      Width = 120
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Confirmar (F2)'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 0
      OnClick = actConfirmarExecute
    end
    object BitBtn2: TBitBtn
      Left = 797
      Top = 6
      Width = 120
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Cancelar (Esc)'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = actCancelarExecute
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 6
      Width = 120
      Height = 30
      Caption = 'Adicionar'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn4: TBitBtn
      Left = 142
      Top = 6
      Width = 120
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Selecionar'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
  end
  object qrParcelas: TZQuery
    Connection = DM.ZConnection
    SortedFields = 'parcela'
    CachedUpdates = True
    SQL.Strings = (
      'select * from tbconta')
    Params = <>
    IndexFieldNames = 'parcela Asc'
    Left = 456
    Top = 136
    object qrParcelasidconta: TIntegerField
      FieldName = 'idconta'
      Required = True
    end
    object qrParcelasdata_lancamento: TDateField
      DisplayLabel = 'Dt. Lan'#231'amento'
      FieldName = 'data_lancamento'
      Required = True
    end
    object qrParcelasdata_vencimento: TDateField
      DisplayLabel = 'Dt. Vencimento'
      FieldName = 'data_vencimento'
    end
    object qrParcelasdata_pagamento: TDateField
      DisplayLabel = 'Data Pagamento'
      FieldName = 'data_pagamento'
    end
    object qrParcelasvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
    object qrParcelasdesconto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'desconto'
      currency = True
    end
    object qrParcelasacrescimo: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'acrescimo'
      currency = True
    end
    object qrParcelasparcela: TWideStringField
      DisplayLabel = 'Parcela'
      FieldName = 'parcela'
    end
    object qrParcelasidconta_grupo: TIntegerField
      FieldName = 'idconta_grupo'
    end
    object qrParcelasvalor_pago: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'valor_pago'
    end
    object qrParcelasTotalpagar: TCurrencyField
      DisplayLabel = 'Total a pagar'
      FieldKind = fkCalculated
      FieldName = 'Totalpagar'
      Calculated = True
    end
    object qrParcelasconta: TWideStringField
      FieldName = 'conta'
      Size = 15
    end
    object qrParcelasbanco: TWideStringField
      FieldName = 'banco'
    end
    object qrParcelasagencia: TWideStringField
      FieldName = 'agencia'
      Size = 15
    end
    object qrParcelasnumcheque: TWideStringField
      FieldName = 'numcheque'
      Size = 30
    end
    object qrParcelasforma_pagamento: TWideStringField
      FieldName = 'forma_pagamento'
      Size = 45
    end
    object qrParcelasidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object qrParcelasidvenda: TIntegerField
      FieldName = 'idvenda'
    end
    object qrParcelasidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
    object qrParcelasdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qrParcelasobs: TWideStringField
      FieldName = 'obs'
      Size = 100
    end
    object qrParcelastipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
    object qrParcelasusuario_cadastro: TIntegerField
      FieldName = 'usuario_cadastro'
    end
    object qrParcelasusuario_pagamento: TIntegerField
      FieldName = 'usuario_pagamento'
    end
    object qrParcelasidcartao: TIntegerField
      FieldName = 'idcartao'
    end
    object qrParcelasautomatica: TWideStringField
      FieldName = 'automatica'
      Size = 1
    end
    object qrParcelasidgrupoconta: TIntegerField
      FieldName = 'idgrupoconta'
    end
    object qrParcelasdocumento: TWideStringField
      FieldName = 'documento'
      Size = 30
    end
  end
  object dsParcelas: TDataSource
    DataSet = qrParcelas
    Left = 456
    Top = 64
  end
  object ActionList1: TActionList
    Left = 536
    Top = 176
    object actConfirmar: TAction
      Caption = 'actConfirmar'
      ShortCut = 113
      OnExecute = actConfirmarExecute
    end
    object actCancelar: TAction
      Caption = 'actCancelar'
      ShortCut = 27
      OnExecute = actCancelarExecute
    end
  end
end

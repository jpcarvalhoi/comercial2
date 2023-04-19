object FormRelProdutos: TFormRelProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Produtos'
  ClientHeight = 355
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 7
    Width = 47
    Height = 13
    Caption = 'Categoria'
  end
  object Panel1: TPanel
    Left = 0
    Top = 314
    Width = 364
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object btnVisualizar: TBitBtn
      Left = 275
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Visualisar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btnVisualizarClick
    end
    object btnMinimo: TBitBtn
      Left = 12
      Top = 8
      Width = 95
      Height = 25
      Caption = 'Estoque M'#237'nimo'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnVisualizarClick
    end
    object BitBtn3: TBitBtn
      Left = 188
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Limpar Filtros'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
  object dblkCategoria: TDBLookupComboBox
    Left = 16
    Top = 23
    Width = 241
    Height = 21
    KeyField = 'idcategoria'
    ListField = 'descricao'
    ListSource = dsCategoria
    TabOrder = 1
    OnKeyDown = dblkCategoriaKeyDown
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 50
    Width = 281
    Height = 66
    Caption = 'Data de Cadastro'
    TabOrder = 2
    object Label2: TLabel
      Left = 9
      Top = 17
      Width = 25
      Height = 13
      Caption = 'In'#237'cio'
    end
    object Label3: TLabel
      Left = 142
      Top = 17
      Width = 16
      Height = 13
      Caption = 'Fim'
    end
    object DateEdit2: TDateEdit
      Left = 142
      Top = 32
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object DateEdit1: TDateEdit
      Left = 9
      Top = 32
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 121
    Width = 334
    Height = 48
    Caption = 'Estoque'
    TabOrder = 3
    object cbCampo: TComboBox
      Left = 8
      Top = 18
      Width = 95
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnKeyDown = cbCampoKeyDown
      Items.Strings = (
        'Estoque Atual'
        'Estoque M'#237'nimo')
    end
    object cbConta: TComboBox
      Left = 109
      Top = 18
      Width = 132
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnKeyDown = cbCampoKeyDown
      Items.Strings = (
        '<= (menor ou igual '#224')'
        '>= (maior ou igual '#224')'
        '= (igual '#224')'
        '<> (diferente de)')
    end
    object edTotal: TEdit
      Left = 247
      Top = 18
      Width = 68
      Height = 21
      NumbersOnly = True
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 178
    Width = 334
    Height = 50
    Caption = 'Prefeitura'
    TabOrder = 4
    Visible = False
    object edCliente: TEdit
      Left = 7
      Top = 20
      Width = 288
      Height = 21
      ReadOnly = True
      TabOrder = 0
      OnKeyDown = edClienteKeyDown
    end
    object btnPrefeitura: TBitBtn
      Left = 299
      Top = 20
      Width = 28
      Height = 21
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFAAAAAAAAAA
        AAFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFAAAAAAF8F8F8F9F9F9AAAAAAFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFAAAAAAF8F8F8E3E3E3ECEC
        ECAAAAAAFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DBA945DBA945DBA
        945DAAAAAAF8F8F8E3E3E3ECECECAAAAAAFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFBA945DFCEED8FCEED8FCEED8FCEED8BA945DE3E3E3ECECECAAAAAAFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DF8E7D1F0C694F0C694F0C694F0
        C694F8E7D1BA945DAAAAAAFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945D
        F7E4CFEDBF8FEDBF8FEDBF8FEDBF8FEDBF8FEDBF8FF7E4CFBA945DFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFBA945DF8E6D1EFC492EFC492EFC492EFC492EF
        C492EFC492F8E6D1BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945D
        FAE9D3F3CC98F3CC98F3CC98F3CC98F3CC98F3CC98FAE9D3BA945DFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFBA945DFCEDD7F8D6A1F8D6A1F8D6A1F8D6A1F8
        D6A1F8D6A1FCEDD7BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        BA945DFEF1DAFCDFA8FCDFA8FCDFA8FCDFA8FEF1DABA945DFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DFFF4DCFFF4DCFFF4DCFF
        F4DCBA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFBA945DBA945DBA945DBA945DFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
      ParentDoubleBuffered = False
      TabOrder = 1
      TabStop = False
      OnClick = btnPrefeituraClick
    end
  end
  object gbProduto: TGroupBox
    Left = 16
    Top = 242
    Width = 334
    Height = 50
    Caption = 'Produto'
    TabOrder = 5
    Visible = False
    object edProduto: TEdit
      Left = 7
      Top = 20
      Width = 288
      Height = 21
      ReadOnly = True
      TabOrder = 0
      OnKeyDown = edClienteKeyDown
    end
    object BitBtn1: TBitBtn
      Left = 299
      Top = 20
      Width = 28
      Height = 21
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFAAAAAAAAAA
        AAFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFAAAAAAF8F8F8F9F9F9AAAAAAFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFAAAAAAF8F8F8E3E3E3ECEC
        ECAAAAAAFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DBA945DBA945DBA
        945DAAAAAAF8F8F8E3E3E3ECECECAAAAAAFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFBA945DFCEED8FCEED8FCEED8FCEED8BA945DE3E3E3ECECECAAAAAAFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DF8E7D1F0C694F0C694F0C694F0
        C694F8E7D1BA945DAAAAAAFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945D
        F7E4CFEDBF8FEDBF8FEDBF8FEDBF8FEDBF8FEDBF8FF7E4CFBA945DFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFBA945DF8E6D1EFC492EFC492EFC492EFC492EF
        C492EFC492F8E6D1BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945D
        FAE9D3F3CC98F3CC98F3CC98F3CC98F3CC98F3CC98FAE9D3BA945DFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFBA945DFCEDD7F8D6A1F8D6A1F8D6A1F8D6A1F8
        D6A1F8D6A1FCEDD7BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        BA945DFEF1DAFCDFA8FCDFA8FCDFA8FCDFA8FEF1DABA945DFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DFFF4DCFFF4DCFFF4DCFF
        F4DCBA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFBA945DBA945DBA945DBA945DFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
      ParentDoubleBuffered = False
      TabOrder = 1
      TabStop = False
      OnClick = BitBtn1Click
    end
  end
  object lbLote: TLabeledEdit
    Left = 16
    Top = 215
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    EditLabel.Width = 21
    EditLabel.Height = 13
    EditLabel.Caption = 'Lote'
    TabOrder = 6
    Visible = False
  end
  object dsCategoria: TDataSource
    DataSet = DM.cdsCategoria
    Left = 200
    Top = 16
  end
end

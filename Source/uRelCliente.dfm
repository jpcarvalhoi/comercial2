inherited FormRelCliente: TFormRelCliente
  BorderStyle = bsDialog
  Caption = 'Selecionar Cliente'
  ClientHeight = 169
  ClientWidth = 339
  ExplicitWidth = 345
  ExplicitHeight = 198
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox [0]
    Left = 0
    Top = 11
    Width = 334
    Height = 50
    Caption = 'Prefeitura'
    TabOrder = 0
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
  object Panel1: TPanel [1]
    Left = 0
    Top = 128
    Width = 339
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object btnVisualizar: TBitBtn
      Left = 256
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Visualisar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btnVisualizarClick
    end
  end
  inherited ActionList: TActionList
    Left = 40
    Top = 24
  end
end

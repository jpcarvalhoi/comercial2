inherited FormProgress: TFormProgress
  Left = 457
  Top = 378
  Caption = 'Processo da Opera'#231#227'o'
  ClientHeight = 129
  ClientWidth = 295
  OldCreateOrder = True
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  ExplicitWidth = 311
  ExplicitHeight = 164
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox [0]
    Left = 9
    Top = 5
    Width = 284
    Height = 92
    Caption = ' Progresso: '
    TabOrder = 0
    object lbAndamento: TLabel
      Left = 14
      Top = 19
      Width = 63
      Height = 13
      Caption = 'Andamento...'
    end
    object Label1: TLabel
      Left = 8
      Top = 64
      Width = 85
      Height = 13
      Caption = 'Tempo Decorrido:'
    end
    object lbTempo: TLabel
      Left = 96
      Top = 64
      Width = 51
      Height = 13
      Caption = '00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sGauge: TsGauge
      Left = 10
      Top = 34
      Width = 263
      Height = 13
      SkinData.SkinSection = 'GAUGE'
      ForeColor = clBlack
      Suffix = '%'
    end
    object BitBtn1: TBitBtn
      Left = 200
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Cancelar'
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
      TabOrder = 0
      Visible = False
    end
  end
  object StatusBar1: TStatusBar [1]
    Left = 0
    Top = 110
    Width = 295
    Height = 19
    Panels = <
      item
        Text = 'Por favor aguarde...'
        Width = 50
      end>
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 8
    Top = 65
  end
end

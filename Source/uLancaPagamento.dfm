inherited frmLancaPagamento: TfrmLancaPagamento
  Caption = 'Pagamento / Vale'
  ClientHeight = 226
  ClientWidth = 401
  OnCreate = FormCreate
  ExplicitWidth = 407
  ExplicitHeight = 255
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 9
    Top = 70
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 126
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  inherited pnlPrincipal: TPanel
    Width = 401
    inherited btnPrimeiro: TBitBtn
      Left = -48
      Visible = False
    end
    inherited btnAnterior: TBitBtn
      Left = 26
      Visible = False
    end
    inherited btnProximo: TBitBtn
      Left = 100
      Visible = False
    end
    inherited btnUltimo: TBitBtn
      Left = 174
      Visible = False
    end
    inherited btnLocalizar: TBitBtn
      Left = 248
      Visible = False
    end
    inherited btnFechar: TBitBtn
      Left = 322
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 207
    Width = 401
  end
  object DBEdit1: TDBEdit [4]
    Left = 8
    Top = 145
    Width = 121
    Height = 21
    DataField = 'valor'
    DataSource = dsNavegacao
    TabOrder = 2
  end
  object DBDateEdit1: TDBDateEdit [5]
    Left = 8
    Top = 85
    Width = 121
    Height = 21
    DataField = 'data'
    DataSource = dsNavegacao
    NumGlyphs = 2
    TabOrder = 3
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsControlePg
    Left = 256
    Top = 80
  end
  inherited ActionList1: TActionList
    Left = 332
    Top = 108
  end
end

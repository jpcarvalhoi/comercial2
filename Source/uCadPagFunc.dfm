inherited FormCadPagFunc: TFormCadPagFunc
  Caption = 'Pagamento de Funcion'#225'rios'
  ClientHeight = 352
  ClientWidth = 504
  OnShow = FormShow
  ExplicitWidth = 510
  ExplicitHeight = 381
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 72
    Width = 55
    Height = 13
    Caption = 'Funcion'#225'rio'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 120
    Width = 58
    Height = 13
    Caption = 'Sal'#225'rio base'
    FocusControl = DBEdit1
  end
  object Label3: TLabel [2]
    Left = 119
    Top = 120
    Width = 56
    Height = 13
    Caption = 'Bonifica'#231#227'o'
    FocusControl = DBEdit2
  end
  object Label4: TLabel [3]
    Left = 231
    Top = 120
    Width = 45
    Height = 13
    Caption = 'Encargos'
    FocusControl = DBEdit3
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 168
    Width = 87
    Height = 13
    Caption = 'Outros acr'#233'scimos'
    FocusControl = DBEdit3
  end
  object Label6: TLabel [5]
    Left = 119
    Top = 168
    Width = 51
    Height = 13
    Caption = 'Descontos'
    FocusControl = DBEdit3
  end
  object Label7: TLabel [6]
    Left = 8
    Top = 216
    Width = 25
    Height = 13
    Caption = 'Obs.:'
    FocusControl = DBEdit6
  end
  object Label8: TLabel [7]
    Left = 234
    Top = 168
    Width = 64
    Height = 13
    Caption = 'Total a Pagar'
    FocusControl = DBEdit7
  end
  object Label9: TLabel [8]
    Left = 8
    Top = 266
    Width = 76
    Height = 13
    Caption = 'Dt. Lan'#231'amento'
    FocusControl = DBEdit8
  end
  object Label10: TLabel [9]
    Left = 252
    Top = 72
    Width = 73
    Height = 13
    Caption = 'Dt. Vencimento'
  end
  object Label11: TLabel [10]
    Left = 378
    Top = 71
    Width = 71
    Height = 13
    Caption = 'Dt. Pagamento'
  end
  object Label12: TLabel [11]
    Left = 347
    Top = 168
    Width = 52
    Height = 13
    Caption = 'Valor Pago'
    FocusControl = DBEdit9
  end
  inherited pnlPrincipal: TPanel
    Width = 504
    ExplicitWidth = 504
    inherited btnPrimeiro: TBitBtn
      Left = 55
      TabOrder = 1
      Visible = False
      ExplicitLeft = 55
    end
    inherited btnAnterior: TBitBtn
      Left = 129
      TabOrder = 3
      Visible = False
      ExplicitLeft = 129
    end
    inherited btnProximo: TBitBtn
      Left = 203
      TabOrder = 5
      Visible = False
      ExplicitLeft = 203
    end
    inherited btnUltimo: TBitBtn
      Left = 277
      Visible = False
      ExplicitLeft = 277
    end
    inherited btnSalvar: TBitBtn
      TabOrder = 2
    end
    inherited btnCancelar: TBitBtn
      TabOrder = 4
    end
    inherited btnLocalizar: TBitBtn
      Left = 351
      Visible = False
      ExplicitLeft = 351
    end
    inherited btnExcluir: TBitBtn
      TabOrder = 6
    end
    inherited btnFechar: TBitBtn
      Left = 425
      ExplicitLeft = 425
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 333
    Width = 504
    ExplicitTop = 333
    ExplicitWidth = 504
  end
  object DBLookupComboBox1: TDBLookupComboBox [14]
    Left = 8
    Top = 88
    Width = 233
    Height = 21
    DataField = 'idfuncionario'
    DataSource = dsNavegacao
    KeyField = 'idfuncionario'
    ListField = 'nome'
    ListSource = DM.dslkFuncionario
    TabOrder = 1
  end
  object DBEdit1: TDBEdit [15]
    Left = 8
    Top = 136
    Width = 105
    Height = 21
    DataField = 'salario'
    DataSource = dsNavegacao
    TabOrder = 4
  end
  object DBEdit2: TDBEdit [16]
    Left = 119
    Top = 136
    Width = 105
    Height = 21
    DataField = 'bonificacao'
    DataSource = dsNavegacao
    TabOrder = 5
  end
  object DBEdit3: TDBEdit [17]
    Left = 231
    Top = 136
    Width = 105
    Height = 21
    DataField = 'encargo'
    DataSource = dsNavegacao
    TabOrder = 6
  end
  object DBEdit4: TDBEdit [18]
    Left = 8
    Top = 184
    Width = 105
    Height = 21
    DataField = 'acrescimo'
    DataSource = dsNavegacao
    TabOrder = 7
  end
  object DBEdit5: TDBEdit [19]
    Left = 119
    Top = 184
    Width = 105
    Height = 21
    DataField = 'desconto'
    DataSource = dsNavegacao
    TabOrder = 8
  end
  object DBEdit6: TDBEdit [20]
    Left = 8
    Top = 232
    Width = 481
    Height = 21
    DataField = 'obs'
    DataSource = dsNavegacao
    TabOrder = 11
  end
  object DBEdit7: TDBEdit [21]
    Left = 234
    Top = 184
    Width = 105
    Height = 21
    DataField = 'Total_Pagar'
    DataSource = dsNavegacao
    TabOrder = 9
  end
  object DBEdit8: TDBEdit [22]
    Left = 8
    Top = 282
    Width = 134
    Height = 21
    DataField = 'data_lancamento'
    DataSource = dsNavegacao
    ReadOnly = True
    TabOrder = 12
  end
  object DBDateEdit1: TDBDateEdit [23]
    Left = 252
    Top = 88
    Width = 115
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    DataField = 'data_vencimento'
    DataSource = dsNavegacao
    NumGlyphs = 2
    TabOrder = 2
  end
  object DBDateEdit2: TDBDateEdit [24]
    Left = 378
    Top = 88
    Width = 115
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    DataField = 'data_pagamento'
    DataSource = dsNavegacao
    ReadOnly = True
    NumGlyphs = 2
    TabOrder = 3
  end
  object DBEdit9: TDBEdit [25]
    Left = 347
    Top = 184
    Width = 105
    Height = 21
    DataField = 'valor_pago'
    DataSource = dsNavegacao
    ReadOnly = True
    TabOrder = 10
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsCadConta
  end
  inherited ActionList1: TActionList
    Left = 356
    Top = 236
  end
  inherited dsPesquisa: TDataSource
    Left = 304
    Top = 256
  end
end

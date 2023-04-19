inherited FormCadTransportadora: TFormCadTransportadora
  Caption = 'Cadastro de Tranpostadora'
  ClientHeight = 342
  ClientWidth = 751
  OnShow = FormShow
  ExplicitWidth = 757
  ExplicitHeight = 371
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 94
    Top = 72
    Width = 63
    Height = 13
    Caption = 'Raz'#227'o Social'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 72
    Width = 22
    Height = 13
    Caption = 'C'#243'd.'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 464
    Top = 72
    Width = 27
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 115
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 399
    Top = 115
    Width = 27
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 157
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 193
    Top = 157
    Width = 14
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 610
    Top = 72
    Width = 59
    Height = 13
    Caption = 'Dt. Cadastro'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 610
    Top = 115
    Width = 19
    Height = 13
    Caption = 'Cep'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 240
    Top = 157
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 384
    Top = 157
    Width = 32
    Height = 13
    Caption = 'Celular'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 10
    Top = 202
    Width = 28
    Height = 13
    Caption = 'E-mail'
    FocusControl = DBEdit12
  end
  object Label13: TLabel [12]
    Left = 251
    Top = 205
    Width = 18
    Height = 13
    Caption = 'Site'
    FocusControl = DBEdit13
  end
  inherited pnlPrincipal: TPanel
    Width = 751
    ExplicitWidth = 751
    inherited btnPrimeiro: TBitBtn
      Left = 302
      ExplicitLeft = 302
    end
    inherited btnAnterior: TBitBtn
      Left = 376
      ExplicitLeft = 376
    end
    inherited btnProximo: TBitBtn
      Left = 450
      ExplicitLeft = 450
    end
    inherited btnUltimo: TBitBtn
      Left = 524
      ExplicitLeft = 524
    end
    inherited btnLocalizar: TBitBtn
      Left = 598
      ExplicitLeft = 598
    end
    inherited btnFechar: TBitBtn
      Left = 672
      ExplicitLeft = 672
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 323
    Width = 751
    ExplicitTop = 323
    ExplicitWidth = 751
  end
  object DBEdit1: TDBEdit [15]
    Left = 94
    Top = 88
    Width = 356
    Height = 21
    CharCase = ecUpperCase
    DataField = 'razaosocial'
    DataSource = dsNavegacao
    TabOrder = 2
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit2: TDBEdit [16]
    Left = 8
    Top = 88
    Width = 76
    Height = 21
    CharCase = ecUpperCase
    DataField = 'idtransportadora'
    DataSource = dsNavegacao
    Enabled = False
    TabOrder = 1
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit3: TDBEdit [17]
    Left = 464
    Top = 88
    Width = 133
    Height = 21
    CharCase = ecUpperCase
    DataField = 'cnpj'
    DataSource = dsNavegacao
    TabOrder = 3
    OnEnter = EditEnter
    OnExit = EditExit
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit4: TDBEdit [18]
    Left = 8
    Top = 131
    Width = 377
    Height = 21
    CharCase = ecUpperCase
    DataField = 'endereco'
    DataSource = dsNavegacao
    TabOrder = 5
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit5: TDBEdit [19]
    Left = 399
    Top = 131
    Width = 198
    Height = 21
    CharCase = ecUpperCase
    DataField = 'bairro'
    DataSource = dsNavegacao
    TabOrder = 6
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit6: TDBEdit [20]
    Left = 8
    Top = 173
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    DataField = 'cidade'
    DataSource = dsNavegacao
    TabOrder = 8
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit7: TDBEdit [21]
    Left = 193
    Top = 173
    Width = 30
    Height = 21
    CharCase = ecUpperCase
    DataField = 'uf'
    DataSource = dsNavegacao
    TabOrder = 9
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit8: TDBEdit [22]
    Left = 607
    Top = 88
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'dt_cadastro'
    DataSource = dsNavegacao
    TabOrder = 4
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit9: TDBEdit [23]
    Left = 610
    Top = 131
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'cep'
    DataSource = dsNavegacao
    TabOrder = 7
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit10: TDBEdit [24]
    Left = 240
    Top = 173
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    DataField = 'telefone'
    DataSource = dsNavegacao
    TabOrder = 10
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit11: TDBEdit [25]
    Left = 384
    Top = 173
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    DataField = 'celular'
    DataSource = dsNavegacao
    TabOrder = 11
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit12: TDBEdit [26]
    Left = 10
    Top = 221
    Width = 228
    Height = 21
    DataField = 'email'
    DataSource = dsNavegacao
    TabOrder = 12
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit13: TDBEdit [27]
    Left = 251
    Top = 221
    Width = 225
    Height = 21
    DataField = 'site'
    DataSource = dsNavegacao
    TabOrder = 13
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object GroupBox1: TGroupBox [28]
    Left = 8
    Top = 248
    Width = 633
    Height = 63
    Caption = 'Contato'
    TabOrder = 14
    object Label14: TLabel
      Left = 7
      Top = 16
      Width = 28
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit14
    end
    object Label15: TLabel
      Left = 247
      Top = 16
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit15
    end
    object Label16: TLabel
      Left = 391
      Top = 16
      Width = 28
      Height = 13
      Caption = 'E-mail'
      FocusControl = DBEdit16
    end
    object DBEdit14: TDBEdit
      Left = 7
      Top = 32
      Width = 234
      Height = 21
      CharCase = ecUpperCase
      DataField = 'contato_nome'
      DataSource = dsNavegacao
      TabOrder = 0
      OnEnter = EditEnter
      OnExit = EditExit
    end
    object DBEdit15: TDBEdit
      Left = 247
      Top = 32
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      DataField = 'contato_telefone'
      DataSource = dsNavegacao
      TabOrder = 1
      OnEnter = EditEnter
      OnExit = EditExit
    end
    object DBEdit16: TDBEdit
      Left = 391
      Top = 32
      Width = 228
      Height = 21
      DataField = 'contato_email'
      DataSource = dsNavegacao
      TabOrder = 2
      OnEnter = EditEnter
      OnExit = EditExit
    end
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsTransportadora
  end
end

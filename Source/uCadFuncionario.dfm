inherited FormCadFuncionario: TFormCadFuncionario
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 611
  ClientWidth = 752
  OnShow = FormShow
  ExplicitTop = -89
  ExplicitWidth = 758
  ExplicitHeight = 640
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 64
    Width = 72
    Height = 13
    Caption = 'ID. Funcion'#225'rio'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 86
    Top = 64
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 291
    Top = 147
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 409
    Top = 147
    Width = 32
    Height = 13
    Caption = 'Celular'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 106
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 256
    Top = 106
    Width = 27
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 416
    Top = 106
    Width = 21
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 8
    Top = 147
    Width = 28
    Height = 13
    Caption = 'E-mail'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 264
    Top = 189
    Width = 32
    Height = 13
    Caption = 'Sal'#225'rio'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 9
    Top = 190
    Width = 25
    Height = 13
    Caption = 'Setor'
  end
  object Label11: TLabel [10]
    Left = 366
    Top = 64
    Width = 62
    Height = 13
    Caption = 'Dt. Admiss'#227'o'
    FocusControl = DBEdit10
  end
  object Label12: TLabel [11]
    Left = 634
    Top = 64
    Width = 59
    Height = 13
    Caption = 'Dt. Cadastro'
    FocusControl = DBEdit11
  end
  object Label13: TLabel [12]
    Left = 529
    Top = 106
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit12
  end
  object Label14: TLabel [13]
    Left = 714
    Top = 106
    Width = 14
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit13
  end
  object Label15: TLabel [14]
    Left = 486
    Top = 64
    Width = 16
    Height = 13
    Caption = 'RG'
    FocusControl = DBEdit14
  end
  object Label24: TLabel [15]
    Left = 384
    Top = 189
    Width = 100
    Height = 13
    Caption = 'Unidade de Trabalho'
    FocusControl = DBEdit23
  end
  object Label25: TLabel [16]
    Left = 529
    Top = 147
    Width = 28
    Height = 13
    Caption = 'Cargo'
    FocusControl = DBEdit24
  end
  inherited pnlPrincipal: TPanel
    Width = 752
    ExplicitWidth = 752
    inherited btnPrimeiro: TBitBtn
      Left = 303
      Visible = False
      ExplicitLeft = 303
    end
    inherited btnAnterior: TBitBtn
      Left = 377
      Visible = False
      ExplicitLeft = 377
    end
    inherited btnProximo: TBitBtn
      Left = 451
      Visible = False
      ExplicitLeft = 451
    end
    inherited btnUltimo: TBitBtn
      Left = 525
      Visible = False
      ExplicitLeft = 525
    end
    inherited btnLocalizar: TBitBtn
      Left = 599
      ExplicitLeft = 599
    end
    inherited btnFechar: TBitBtn
      Left = 673
      ExplicitLeft = 673
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 592
    Width = 752
    ExplicitTop = 475
    ExplicitWidth = 752
  end
  object DBEdit1: TDBEdit [19]
    Left = 8
    Top = 80
    Width = 72
    Height = 21
    DataField = 'idfuncionario'
    DataSource = dsNavegacao
    Enabled = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [20]
    Left = 86
    Top = 80
    Width = 274
    Height = 21
    CharCase = ecUpperCase
    DataField = 'nome'
    DataSource = dsNavegacao
    TabOrder = 2
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit3: TDBEdit [21]
    Left = 291
    Top = 163
    Width = 110
    Height = 21
    CharCase = ecUpperCase
    DataField = 'telefone'
    DataSource = dsNavegacao
    TabOrder = 12
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit4: TDBEdit [22]
    Left = 409
    Top = 163
    Width = 110
    Height = 21
    CharCase = ecUpperCase
    DataField = 'celular'
    DataSource = dsNavegacao
    TabOrder = 13
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit5: TDBEdit [23]
    Left = 8
    Top = 122
    Width = 242
    Height = 21
    CharCase = ecUpperCase
    DataField = 'endereco'
    DataSource = dsNavegacao
    TabOrder = 6
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit6: TDBEdit [24]
    Left = 256
    Top = 122
    Width = 150
    Height = 21
    CharCase = ecUpperCase
    DataField = 'bairro'
    DataSource = dsNavegacao
    TabOrder = 7
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit7: TDBEdit [25]
    Left = 416
    Top = 122
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    DataField = 'cep'
    DataSource = dsNavegacao
    TabOrder = 8
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit8: TDBEdit [26]
    Left = 8
    Top = 163
    Width = 274
    Height = 21
    CharCase = ecLowerCase
    DataField = 'email'
    DataSource = dsNavegacao
    TabOrder = 11
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBEdit9: TDBEdit [27]
    Left = 264
    Top = 205
    Width = 106
    Height = 21
    CharCase = ecUpperCase
    DataField = 'salario'
    DataSource = dsNavegacao
    TabOrder = 16
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object DBLookupComboBox1: TDBLookupComboBox [28]
    Left = 9
    Top = 205
    Width = 242
    Height = 21
    DataField = 'idsetor'
    DataSource = dsNavegacao
    KeyField = 'idsetor'
    ListField = 'descricao'
    ListSource = DM.dsSetor
    TabOrder = 15
    OnKeyDown = DBLookupComboBox1KeyDown
  end
  object DBEdit10: TDBEdit [29]
    Left = 366
    Top = 80
    Width = 110
    Height = 21
    DataField = 'dtadmissao'
    DataSource = dsNavegacao
    TabOrder = 3
  end
  object DBEdit11: TDBEdit [30]
    Left = 634
    Top = 80
    Width = 110
    Height = 21
    DataField = 'dtcadastro'
    DataSource = dsNavegacao
    ReadOnly = True
    TabOrder = 5
  end
  object DBEdit12: TDBEdit [31]
    Left = 529
    Top = 122
    Width = 177
    Height = 21
    DataField = 'cidade'
    DataSource = dsNavegacao
    TabOrder = 9
  end
  object DBEdit13: TDBEdit [32]
    Left = 714
    Top = 122
    Width = 30
    Height = 21
    DataField = 'uf'
    DataSource = dsNavegacao
    TabOrder = 10
  end
  object DBEdit14: TDBEdit [33]
    Left = 486
    Top = 80
    Width = 138
    Height = 21
    DataField = 'rg'
    DataSource = dsNavegacao
    TabOrder = 4
  end
  object GroupBox1: TGroupBox [34]
    Left = 8
    Top = 234
    Width = 729
    Height = 58
    Caption = 'Contato 1'
    TabOrder = 18
    object Label16: TLabel
      Left = 8
      Top = 13
      Width = 71
      Height = 13
      Caption = 'Nome Contato '
      FocusControl = DBEdit15
    end
    object Label17: TLabel
      Left = 187
      Top = 13
      Width = 55
      Height = 13
      Caption = 'Tel Contato'
      FocusControl = DBEdit16
    end
    object Label18: TLabel
      Left = 304
      Top = 13
      Width = 55
      Height = 13
      Caption = 'Cel Contato'
      FocusControl = DBEdit17
    end
    object Label19: TLabel
      Left = 421
      Top = 13
      Width = 64
      Height = 13
      Caption = 'Email contato'
      FocusControl = DBEdit18
    end
    object DBEdit15: TDBEdit
      Left = 8
      Top = 29
      Width = 173
      Height = 21
      DataField = 'nome_contato'
      DataSource = dsNavegacao
      TabOrder = 0
    end
    object DBEdit16: TDBEdit
      Left = 187
      Top = 29
      Width = 110
      Height = 21
      DataField = 'tel1_contato'
      DataSource = dsNavegacao
      TabOrder = 1
    end
    object DBEdit17: TDBEdit
      Left = 304
      Top = 29
      Width = 110
      Height = 21
      DataField = 'tel2_contato'
      DataSource = dsNavegacao
      TabOrder = 2
    end
    object DBEdit18: TDBEdit
      Left = 421
      Top = 29
      Width = 294
      Height = 21
      DataField = 'email_contato'
      DataSource = dsNavegacao
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox [35]
    Left = 8
    Top = 298
    Width = 729
    Height = 59
    Caption = 'Contato 2'
    TabOrder = 19
    object Label20: TLabel
      Left = 8
      Top = 13
      Width = 71
      Height = 13
      Caption = 'Nome Contato '
      FocusControl = DBEdit19
    end
    object Label21: TLabel
      Left = 187
      Top = 13
      Width = 55
      Height = 13
      Caption = 'Tel Contato'
      FocusControl = DBEdit20
    end
    object Label22: TLabel
      Left = 304
      Top = 13
      Width = 55
      Height = 13
      Caption = 'Cel Contato'
      FocusControl = DBEdit21
    end
    object Label23: TLabel
      Left = 421
      Top = 13
      Width = 64
      Height = 13
      Caption = 'Email contato'
      FocusControl = DBEdit22
    end
    object DBEdit19: TDBEdit
      Left = 8
      Top = 29
      Width = 173
      Height = 21
      DataField = 'nome_contato2'
      DataSource = dsNavegacao
      TabOrder = 0
    end
    object DBEdit20: TDBEdit
      Left = 187
      Top = 29
      Width = 110
      Height = 21
      DataField = 'tel1_contato2'
      DataSource = dsNavegacao
      TabOrder = 1
    end
    object DBEdit21: TDBEdit
      Left = 304
      Top = 29
      Width = 110
      Height = 21
      DataField = 'tel2_contato2'
      DataSource = dsNavegacao
      TabOrder = 2
    end
    object DBEdit22: TDBEdit
      Left = 421
      Top = 29
      Width = 294
      Height = 21
      DataField = 'email_contato2'
      DataSource = dsNavegacao
      TabOrder = 3
    end
  end
  object DBEdit23: TDBEdit [36]
    Left = 384
    Top = 205
    Width = 214
    Height = 21
    DataField = 'unidade_trabalho'
    DataSource = dsNavegacao
    TabOrder = 17
  end
  object DBEdit24: TDBEdit [37]
    Left = 529
    Top = 163
    Width = 215
    Height = 21
    DataField = 'cargo'
    DataSource = dsNavegacao
    TabOrder = 14
  end
  object GroupBox3: TGroupBox [38]
    Left = 8
    Top = 363
    Width = 137
    Height = 101
    Caption = 'Exame M'#233'dico'
    TabOrder = 20
    object Label26: TLabel
      Left = 8
      Top = 16
      Width = 49
      Height = 13
      Caption = 'Dt. Exame'
      FocusControl = DBEdit25
    end
    object Label27: TLabel
      Left = 8
      Top = 54
      Width = 56
      Height = 13
      Caption = 'Vencimento'
      FocusControl = DBEdit26
    end
    object DBEdit25: TDBEdit
      Left = 8
      Top = 32
      Width = 110
      Height = 21
      DataField = 'dtexamemedico'
      DataSource = dsNavegacao
      TabOrder = 0
    end
    object DBEdit26: TDBEdit
      Left = 8
      Top = 70
      Width = 110
      Height = 21
      DataField = 'dtvctoexamemedico'
      DataSource = dsNavegacao
      TabOrder = 1
    end
  end
  object GroupBox4: TGroupBox [39]
    Left = 163
    Top = 363
    Width = 137
    Height = 101
    Caption = 'Exame de Integra'#231#227'o'
    TabOrder = 21
    object Label28: TLabel
      Left = 8
      Top = 16
      Width = 49
      Height = 13
      Caption = 'Dt. Exame'
      FocusControl = DBEdit27
    end
    object Label29: TLabel
      Left = 8
      Top = 54
      Width = 56
      Height = 13
      Caption = 'Vencimento'
      FocusControl = DBEdit28
    end
    object DBEdit27: TDBEdit
      Left = 8
      Top = 32
      Width = 110
      Height = 21
      DataField = 'dtexameintegracao'
      DataSource = dsNavegacao
      TabOrder = 0
    end
    object DBEdit28: TDBEdit
      Left = 8
      Top = 70
      Width = 110
      Height = 21
      DataField = 'dtvctoexameintegracao'
      DataSource = dsNavegacao
      TabOrder = 1
    end
  end
  object GroupBox5: TGroupBox [40]
    Left = 315
    Top = 363
    Width = 206
    Height = 101
    Caption = 'CNH'
    TabOrder = 22
    object Label30: TLabel
      Left = 8
      Top = 16
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = DBEdit29
    end
    object Label31: TLabel
      Left = 8
      Top = 54
      Width = 45
      Height = 13
      Caption = 'Categoria'
      FocusControl = DBEdit30
    end
    object Label32: TLabel
      Left = 88
      Top = 54
      Width = 56
      Height = 13
      Caption = 'Vencimento'
      FocusControl = DBEdit31
    end
    object DBEdit29: TDBEdit
      Left = 8
      Top = 32
      Width = 185
      Height = 21
      DataField = 'cnhnumero'
      DataSource = dsNavegacao
      TabOrder = 0
    end
    object DBEdit30: TDBEdit
      Left = 8
      Top = 70
      Width = 65
      Height = 21
      DataField = 'cnhcategoria'
      DataSource = dsNavegacao
      TabOrder = 1
    end
    object DBEdit31: TDBEdit
      Left = 88
      Top = 70
      Width = 110
      Height = 21
      DataField = 'cnhvcto'
      DataSource = dsNavegacao
      TabOrder = 2
    end
  end
  object GroupBox6: TGroupBox [41]
    Left = 8
    Top = 470
    Width = 518
    Height = 107
    Caption = 'Dados banc'#225'rios '
    TabOrder = 24
    object Label33: TLabel
      Left = 8
      Top = 15
      Width = 46
      Height = 13
      Caption = 'N'#186' Banco'
      FocusControl = DBEdit32
    end
    object Label34: TLabel
      Left = 64
      Top = 15
      Width = 31
      Height = 13
      Caption = 'Banco'
      FocusControl = DBEdit33
    end
    object Label35: TLabel
      Left = 220
      Top = 15
      Width = 39
      Height = 13
      Caption = 'Ag'#234'ncia'
      FocusControl = DBEdit34
    end
    object Label36: TLabel
      Left = 334
      Top = 15
      Width = 28
      Height = 13
      Caption = 'Conta'
      FocusControl = DBEdit35
    end
    object Label37: TLabel
      Left = 448
      Top = 15
      Width = 47
      Height = 13
      Caption = 'Opera'#231#227'o'
      FocusControl = DBEdit36
    end
    object Label38: TLabel
      Left = 11
      Top = 57
      Width = 46
      Height = 13
      Caption = 'N'#186' Banco'
      FocusControl = DBEdit37
    end
    object Label39: TLabel
      Left = 67
      Top = 57
      Width = 31
      Height = 13
      Caption = 'Banco'
      FocusControl = DBEdit38
    end
    object Label40: TLabel
      Left = 223
      Top = 57
      Width = 39
      Height = 13
      Caption = 'Ag'#234'ncia'
      FocusControl = DBEdit39
    end
    object Label41: TLabel
      Left = 337
      Top = 57
      Width = 28
      Height = 13
      Caption = 'Conta'
      FocusControl = DBEdit40
    end
    object Label42: TLabel
      Left = 451
      Top = 57
      Width = 47
      Height = 13
      Caption = 'Opera'#231#227'o'
      FocusControl = DBEdit41
    end
    object DBEdit32: TDBEdit
      Left = 8
      Top = 31
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      DataField = 'numbanco'
      DataSource = dsNavegacao
      MaxLength = 3
      TabOrder = 0
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object DBEdit33: TDBEdit
      Left = 64
      Top = 31
      Width = 149
      Height = 21
      CharCase = ecUpperCase
      DataField = 'banco'
      DataSource = dsNavegacao
      TabOrder = 1
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object DBEdit34: TDBEdit
      Left = 220
      Top = 31
      Width = 107
      Height = 21
      CharCase = ecUpperCase
      DataField = 'agencia'
      DataSource = dsNavegacao
      TabOrder = 2
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object DBEdit35: TDBEdit
      Left = 334
      Top = 31
      Width = 107
      Height = 21
      DataField = 'conta'
      DataSource = dsNavegacao
      TabOrder = 3
    end
    object DBEdit36: TDBEdit
      Left = 448
      Top = 31
      Width = 47
      Height = 21
      CharCase = ecUpperCase
      DataField = 'operacao'
      DataSource = dsNavegacao
      TabOrder = 4
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object DBEdit37: TDBEdit
      Left = 11
      Top = 73
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      DataField = 'numbanco2'
      DataSource = dsNavegacao
      MaxLength = 3
      TabOrder = 5
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object DBEdit38: TDBEdit
      Left = 67
      Top = 73
      Width = 149
      Height = 21
      CharCase = ecUpperCase
      DataField = 'banco2'
      DataSource = dsNavegacao
      TabOrder = 6
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object DBEdit39: TDBEdit
      Left = 223
      Top = 73
      Width = 107
      Height = 21
      CharCase = ecUpperCase
      DataField = 'agencia2'
      DataSource = dsNavegacao
      TabOrder = 7
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object DBEdit40: TDBEdit
      Left = 337
      Top = 73
      Width = 107
      Height = 21
      CharCase = ecUpperCase
      DataField = 'conta2'
      DataSource = dsNavegacao
      TabOrder = 8
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object DBEdit41: TDBEdit
      Left = 451
      Top = 73
      Width = 47
      Height = 21
      CharCase = ecUpperCase
      DataField = 'operacao2'
      DataSource = dsNavegacao
      TabOrder = 9
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsFuncionario
  end
  inherited ActionList1: TActionList
    Left = 231
    Top = 175
  end
  inherited dsPesquisa: TDataSource
    Top = 102
  end
end

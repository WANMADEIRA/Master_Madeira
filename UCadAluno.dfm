object frmCadAluno: TfrmCadAluno
  Left = 0
  Top = 0
  Caption = 'Cadastro de Alunos'
  ClientHeight = 720
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PGPrincipal: TPageControl
    Left = 8
    Top = 0
    Width = 558
    Height = 314
    ActivePage = Endereco
    TabOrder = 1
    object Principal: TTabSheet
      Caption = 'Principal'
      object EditCodAluno: TLabel
        Left = 24
        Top = 13
        Width = 78
        Height = 13
        Caption = 'Codigo do Aluno'
      end
      object Label2: TLabel
        Left = 24
        Top = 77
        Width = 72
        Height = 13
        Caption = 'Nome do Aluno'
      end
      object Label3: TLabel
        Left = 24
        Top = 123
        Width = 59
        Height = 13
        Caption = 'Nome do Pai'
      end
      object Label4: TLabel
        Left = 24
        Top = 169
        Width = 65
        Height = 13
        Caption = 'Nome do M'#227'e'
      end
      object Label5: TLabel
        Left = 372
        Top = 13
        Width = 28
        Height = 13
        Caption = 'Idade'
      end
      object Label9: TLabel
        Left = 24
        Top = 215
        Width = 60
        Height = 13
        Caption = 'Escolaridade'
      end
      object EditCodigo: TDBEdit
        Left = 24
        Top = 32
        Width = 121
        Height = 21
        DataField = 'CODIGO_ALUNO'
        DataSource = DS
        TabOrder = 0
      end
      object EditNomePai: TDBEdit
        Left = 24
        Top = 146
        Width = 469
        Height = 21
        DataField = 'NOMEPAI_ALUNO'
        DataSource = DS
        TabOrder = 1
      end
      object EditNomeMae: TDBEdit
        Left = 24
        Top = 192
        Width = 469
        Height = 21
        DataField = 'NOMEMAE_ALUNO'
        DataSource = DS
        TabOrder = 2
      end
      object Editidade: TDBEdit
        Left = 372
        Top = 32
        Width = 121
        Height = 21
        DataField = 'IDADE_ALUNO'
        DataSource = DS
        TabOrder = 3
      end
      object EditNomealuno: TDBEdit
        Left = 24
        Top = 100
        Width = 469
        Height = 21
        DataField = 'NOME_ALUNO'
        DataSource = DS
        TabOrder = 4
      end
      object Button1: TButton
        Left = 194
        Top = 30
        Width = 25
        Height = 25
        Caption = '<<'
        TabOrder = 5
        OnClick = btnprimeiroClick
      end
      object Button2: TButton
        Left = 225
        Top = 30
        Width = 25
        Height = 25
        Caption = '<'
        TabOrder = 6
        OnClick = bntanteriorClick
      end
      object Button3: TButton
        Left = 256
        Top = 30
        Width = 25
        Height = 25
        Caption = '>'
        TabOrder = 7
        OnClick = btnproximoClick
      end
      object Button4: TButton
        Left = 287
        Top = 30
        Width = 25
        Height = 25
        Caption = '>>'
        TabOrder = 8
        OnClick = btnUltimoClick
      end
      object DBEdit1: TDBEdit
        Left = 102
        Top = 238
        Width = 160
        Height = 21
        DataField = 'DESCRICAO_ESCOLARIDADE'
        DataSource = DS
        TabOrder = 9
      end
      object cod_aluno: TDBEdit
        Left = 24
        Top = 238
        Width = 72
        Height = 21
        DataField = 'ESCOLARIDADE_CODIGO'
        DataSource = DS
        TabOrder = 10
      end
    end
    object Endereco: TTabSheet
      Caption = 'Endere'#231'o'
      ImageIndex = 1
      object Bairro: TLabel
        Left = 16
        Top = 41
        Width = 39
        Height = 13
        Caption = 'BAIRRO'
      end
      object Label1: TLabel
        Left = 16
        Top = 87
        Width = 21
        Height = 13
        Caption = 'RUA'
      end
      object Label6: TLabel
        Left = 16
        Top = 147
        Width = 38
        Height = 13
        Caption = 'CIDADE'
      end
      object Label7: TLabel
        Left = 400
        Top = 147
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object Label8: TLabel
        Left = 400
        Top = 93
        Width = 43
        Height = 13
        Caption = 'NUMERO'
      end
      object DBeditBairro: TDBEdit
        Left = 16
        Top = 60
        Width = 505
        Height = 21
        DataField = 'BAIRRO_END'
        DataSource = DSEndereco
        TabOrder = 0
      end
      object DBEdit_Rua: TDBEdit
        Left = 16
        Top = 112
        Width = 337
        Height = 21
        DataField = 'RUA_END'
        DataSource = DSEndereco
        TabOrder = 1
      end
      object DBEditCidade: TDBEdit
        Left = 16
        Top = 166
        Width = 337
        Height = 21
        DataField = 'CIDADE_END'
        DataSource = DSEndereco
        TabOrder = 2
      end
      object DBEditEstado: TDBEdit
        Left = 400
        Top = 166
        Width = 121
        Height = 21
        DataField = 'ESTADO_END'
        DataSource = DSEndereco
        TabOrder = 3
      end
      object Dbedit_numero: TDBEdit
        Left = 400
        Top = 112
        Width = 121
        Height = 21
        DataField = 'NUMERO_END'
        DataSource = DSEndereco
        TabOrder = 4
      end
      object btnprimeiro: TButton
        Left = 218
        Top = 13
        Width = 25
        Height = 25
        Caption = '<<'
        TabOrder = 5
        OnClick = btnprimeiroClick
      end
      object bntanterior: TButton
        Left = 249
        Top = 14
        Width = 25
        Height = 25
        Caption = '<'
        TabOrder = 6
        OnClick = bntanteriorClick
      end
      object btnproximo: TButton
        Left = 280
        Top = 14
        Width = 25
        Height = 25
        Caption = '>'
        TabOrder = 7
        OnClick = btnproximoClick
      end
      object btnUltimo: TButton
        Left = 311
        Top = 14
        Width = 25
        Height = 25
        Caption = '>>'
        TabOrder = 8
        OnClick = btnUltimoClick
      end
    end
  end
  object Panel1: TPanel
    Left = 568
    Top = 0
    Width = 105
    Height = 323
    TabOrder = 0
    object BtnInsert: TButton
      Left = 16
      Top = 31
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 0
      OnClick = BtnInsertClick
    end
    object BtnGravar: TButton
      Left = 16
      Top = 90
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = BtnGravarClick
    end
    object BtnExcluir: TButton
      Left = 16
      Top = 196
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = BtnExcluirClick
    end
    object BtnCancelar: TButton
      Left = 16
      Top = 142
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = BtnCancelarClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 320
    Width = 661
    Height = 184
    DataSource = DS
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 510
    Width = 660
    Height = 171
    DataSource = DSEndereco
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DS: TDataSource
    DataSet = DMCadAluno.CDSCadastro
    OnStateChange = DSStateChange
    Left = 612
    Top = 264
  end
  object DSEndereco: TDataSource
    DataSet = DMCadAluno.ClientDSEndereco
    Left = 492
    Top = 264
  end
end

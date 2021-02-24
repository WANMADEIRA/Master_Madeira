object FPaiCadastro: TFPaiCadastro
  Left = 0
  Top = 0
  Caption = 'FPaiCadastro'
  ClientHeight = 351
  ClientWidth = 683
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PGPrincipal: TPageControl
    Left = 8
    Top = 47
    Width = 558
    Height = 295
    ActivePage = Principal
    TabOrder = 0
    object Principal: TTabSheet
      Caption = 'Principal'
    end
  end
  object Panel1: TPanel
    Left = 572
    Top = 47
    Width = 105
    Height = 295
    TabOrder = 1
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 683
    Height = 41
    Align = alTop
    TabOrder = 2
    object EditCodAluno: TLabel
      Left = 24
      Top = 14
      Width = 78
      Height = 13
      Caption = 'Codigo do Aluno'
    end
    object Button1: TButton
      Left = 546
      Top = 9
      Width = 25
      Height = 25
      Caption = '<<'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 577
      Top = 9
      Width = 25
      Height = 25
      Caption = '<'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 608
      Top = 9
      Width = 25
      Height = 25
      Caption = '>'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 639
      Top = 9
      Width = 25
      Height = 25
      Caption = '>>'
      TabOrder = 3
      OnClick = Button4Click
    end
    object EditCodigo: TDBEdit
      Left = 108
      Top = 11
      Width = 121
      Height = 21
      DataField = 'CODIGO_ALUNO'
      TabOrder = 4
    end
  end
  object DS: TDataSource
    OnStateChange = DSStateChange
    Left = 312
    Top = 8
  end
end

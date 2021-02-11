object Form1: TForm1
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
      ExplicitTop = 112
      ExplicitHeight = 286
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
    end
    object BtnGravar: TButton
      Left = 16
      Top = 90
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 1
    end
    object BtnExcluir: TButton
      Left = 16
      Top = 196
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
    end
    object BtnCancelar: TButton
      Left = 16
      Top = 142
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 683
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitLeft = 248
    ExplicitWidth = 185
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
    end
    object Button2: TButton
      Left = 577
      Top = 9
      Width = 25
      Height = 25
      Caption = '<'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 608
      Top = 9
      Width = 25
      Height = 25
      Caption = '>'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 639
      Top = 9
      Width = 25
      Height = 25
      Caption = '>>'
      TabOrder = 3
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
end

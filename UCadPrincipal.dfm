object Principal: TPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 299
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 224
    Top = 87
    Width = 121
    Height = 113
    Color = clNavy
    ParentBackground = False
    TabOrder = 0
    object CADaluno: TSpeedButton
      Left = 8
      Top = 7
      Width = 105
      Height = 97
      Caption = 'Cadastro de Alunos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = CADalunoClick
    end
  end
  object Panel2: TPanel
    Left = 368
    Top = 87
    Width = 121
    Height = 113
    Color = clSilver
    ParentBackground = False
    TabOrder = 1
    object CadEscola: TSpeedButton
      Left = 8
      Top = 7
      Width = 107
      Height = 101
      Caption = 'Cadastro de Escolaridade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = CadEscolaClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 15
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Aluno1: TMenuItem
        Caption = 'Aluno'
        OnClick = Aluno1Click
      end
      object Escolaridade1: TMenuItem
        Caption = 'Escolaridade'
        OnClick = Escolaridade1Click
      end
    end
    object Manuteno1: TMenuItem
      Caption = 'Manuten'#231#227'o'
    end
  end
end

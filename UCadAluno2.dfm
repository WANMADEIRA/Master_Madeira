inherited FCadAluno2: TFCadAluno2
  Caption = 'FCadAluno2'
  ClientHeight = 353
  ClientWidth = 683
  ExplicitWidth = 699
  ExplicitHeight = 392
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 683
    Height = 312
    ExplicitWidth = 683
    ExplicitHeight = 310
  end
  inherited PGPrincipal: TPageControl
    inherited Principal: TTabSheet
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
      object Label9: TLabel
        Left = 24
        Top = 215
        Width = 60
        Height = 13
        Caption = 'Escolaridade'
      end
      object Label5: TLabel
        Left = 372
        Top = 13
        Width = 28
        Height = 13
        Caption = 'Idade'
      end
      object imgAluno: TImage
        Left = 278
        Top = 0
        Width = 88
        Height = 94
        Stretch = True
        OnClick = JvDBImage1Click
      end
      object EditNomealuno: TDBEdit
        Left = 24
        Top = 100
        Width = 469
        Height = 21
        DataField = 'NOME_ALUNO'
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
      object DBEdit2: TDBEdit
        Left = 151
        Top = 234
        Width = 342
        Height = 21
        DataField = 'DESCRICAO_ESCOLARIDADE'
        DataSource = DS
        TabOrder = 4
      end
      object cod_Esc_Alu: TDBEdit
        Left = 24
        Top = 234
        Width = 121
        Height = 21
        DataField = 'ESCOLARIDADE_CODIGO'
        DataSource = DS
        TabOrder = 5
      end
      object Panel3: TPanel
        Left = 151
        Top = -4
        Width = 121
        Height = 98
        Caption = 'Foto'
        Color = clBackground
        ParentBackground = False
        TabOrder = 6
        object JvDBImage1: TJvDBImage
          Left = 8
          Top = 14
          Width = 105
          Height = 77
          Proportional = True
          Stretch = True
          TabOrder = 0
          OnClick = JvDBImage1Click
        end
      end
    end
    object TabSheet1: TTabSheet
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
    end
  end
  inherited Panelpai: TPanel
    Width = 683
    ExplicitWidth = 683
  end
  inherited Panel1: TPanel
    Top = 67
    ExplicitTop = 67
  end
  object OpenPictureDialog: TOpenPictureDialog
    DefaultExt = '*.jpg'
    Left = 204
    Top = 39
  end
end

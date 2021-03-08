inherited FCadAluno2: TFCadAluno2
  Caption = 'FCadAluno2'
  ClientHeight = 351
  ExplicitHeight = 390
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Height = 310
  end
  inherited PGPrincipal: TPageControl
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 550
      ExplicitHeight = 267
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
        Left = 153
        Top = -1
        Width = 121
        Height = 98
        Caption = 'Foto'
        Color = clBackground
        ParentBackground = False
        TabOrder = 6
        object DBImage1: TDBImage
          Left = 7
          Top = 11
          Width = 108
          Height = 78
          DataField = 'IMAGEM_ALUNO'
          DataSource = DS
          Proportional = True
          Stretch = True
          TabOrder = 0
          OnClick = DBImage1Click
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
  inherited Panel2: TPanel
    inherited EditCodigo: TDBEdit
      DataSource = DS
    end
  end
  object OpenPictureDialog: TOpenPictureDialog
    DefaultExt = '*.jpg'
    Left = 332
    Top = 111
  end
end

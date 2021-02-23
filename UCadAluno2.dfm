inherited FCadAluno2: TFCadAluno2
  Caption = 'FCadAluno2'
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
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
      object cod_aluno: TDBEdit
        Left = 24
        Top = 238
        Width = 72
        Height = 21
        DataField = 'ESCOLARIDADE_CODIGO'
        DataSource = DS
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 102
        Top = 238
        Width = 160
        Height = 21
        DataField = 'DESCRICAO_ESCOLARIDADE'
        DataSource = DS
        TabOrder = 4
      end
      object Editidade: TDBEdit
        Left = 372
        Top = 32
        Width = 121
        Height = 21
        DataField = 'IDADE_ALUNO'
        DataSource = DS
        TabOrder = 5
      end
    end
  end
  inherited Panel1: TPanel
    inherited BtnCancelar: TButton
      Top = 136
      ExplicitTop = 136
    end
  end
  inherited Panel2: TPanel
    inherited EditCodigo: TDBEdit
      DataSource = DS
    end
  end
end

inherited FCadEscolaridade: TFCadEscolaridade
  Caption = 'Escolaridade'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PGPrincipal: TPageControl
    inherited Principal: TTabSheet
      object Escolaridade: TLabel
        Left = 24
        Top = 40
        Width = 109
        Height = 13
        Caption = 'Descri'#231#227'o Escolaridade'
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 68
        Width = 497
        Height = 21
        DataField = 'DESCRICAO_ESCOLARIDADE'
        DataSource = DS
        TabOrder = 0
      end
    end
  end
end

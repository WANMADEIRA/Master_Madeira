inherited DMCadAluno2: TDMCadAluno2
  OldCreateOrder = True
  inherited CDSCadastro: TClientDataSet
    AfterOpen = CDSCadastroAfterOpen
  end
  inherited SQLDS: TSQLDataSet
    AfterOpen = SQLDSAfterOpen
  end
end

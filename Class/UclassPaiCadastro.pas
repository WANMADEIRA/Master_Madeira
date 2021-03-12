unit UClassPaiCadastro;

interface

uses
  Data.DB;

Type
  TClassPaiCadastro = Class
    Class function SQLCadastro: String; virtual;
    Class procedure ConfigurarCampos(Fields: TFields); virtual;
    Class function NomeTabela: String; virtual;
    Class function CampoChave: String; virtual;
    Class Function SQLCOnsulta: String; virtual;
    Class Function DescricaoTabela: String; Virtual;
  End;

implementation

{ TClassCadAluno }

class function TClassPaiCadastro.SQLCadastro: String;
begin
  Result := '';

end;

class function TClassPaiCadastro.SQLCOnsulta: String;
begin

end;

class function TClassPaiCadastro.CampoChave: String;
begin
 // Result := 'CODIGO_ALUNO';
end;

class procedure TClassPaiCadastro.ConfigurarCampos(Fields: TFields);

begin


end;

class function TClassPaiCadastro.DescricaoTabela: String;
begin

end;

class function TClassPaiCadastro.NomeTabela: String;
begin
  // Result := 'ALUNOS';
end;

end.

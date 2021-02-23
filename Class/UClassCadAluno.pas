unit UClassCadAluno;

interface

uses
<<<<<<< HEAD
  Data.DB;

Type
  TClassCadAluno = Class
    Class function SQLCadastro: String;
    Class procedure ConfigurarCampos(Fields: TFields);
    class function CampoChave: String;
=======
  Data.DB, UclassPaiCadastro;

Type
  TClassCadAluno = Class (TclassPaiCadastro)
    Class function SQLCadastro: String; override;
    Class procedure ConfigurarCampos(Fields: TFields); override;
    class function CampoChave: String; override;
    Class function NomeTabela: String; override;
>>>>>>> c6e5c62d4481c5055a748dad4e88b0541bc2bbf9
  End;

implementation

{ TClassCadAluno }

class function TClassCadAluno.SQLCadastro: String;
begin
  Result := 'Select ALUNOS.CODIGO_ALUNO,          ' + #13 +
    'ALUNOS.NOME_ALUNO,                   ' + #13 +
    'ALUNOS.IDADE_ALUNO,                  ' + #13 +
    'ALUNOS.NOMEMAE_ALUNO,                ' + #13 +
    'ALUNOS.NOMEPAI_ALUNO,                ' + #13 +
    'ESCOLARIDADE.DESCRICAO_ESCOLARIDADE, ' + #13 +
    'ALUNOS.ESCOLARIDADE_CODIGO           ' + #13 +
    'from ALUNOS                          ' + #13 +
    'left join ESCOLARIDADE on (ESCOLARIDADE.CODIGO_ESCOLARIDADE = ALUNOS.ESCOLARIDADE_CODIGO)';
<<<<<<< HEAD

end;
=======
>>>>>>> c6e5c62d4481c5055a748dad4e88b0541bc2bbf9

class function TClassCadAluno.CampoChave: String;
begin
  Result := 'CODIGO_ALUNO';
end;

class function TClassCadAluno.CampoChave: String;
begin
  Result := 'CODIGO_ALUNO';
end;

class procedure TClassCadAluno.ConfigurarCampos(Fields: TFields);
var
  Field: TField;
begin
  for Field in Fields do
  begin
    if Field.FieldName = 'CODIGO_ALUNO' then
      Field.DisplayLabel := 'CODIGO DO ALUNO'
    ELSE if Field.FieldName = 'NOME_ALUNO' then
      Field.DisplayLabel := 'NOME'
    ELSE if Field.FieldName = 'NOMEMAE_ALUNO' then
      Field.DisplayLabel := 'NOME DA MÃE'
    ELSE if Field.FieldName = 'NOMEPAI_ALUNO' then
      Field.DisplayLabel := 'NOME DO PAI'
    ELSE if Field.FieldName = 'IDADE_ALUNO' then
      Field.DisplayLabel := 'IDADE DO ALUNO'
    ELSE if Field.FieldName = 'AUTOINC_END' then
      Field.DisplayLabel := 'COD. ENDEREÇO'
    ELSE if Field.FieldName = 'BAIRRO_END' then
      Field.DisplayLabel := 'BAIRRO'
    ELSE if Field.FieldName = 'RUA_END' then
      Field.DisplayLabel := 'NOME DA RUA'
    ELSE if Field.FieldName = 'CIDADE_END' then
      Field.DisplayLabel := 'CIDADE DO ALUNO'
    ELSE if Field.FieldName = 'ESTADO_END' then
      Field.DisplayLabel := 'ESTADO'
    ELSE if Field.FieldName = 'NUMERO_END' then
      Field.DisplayLabel := 'NÚMERO';
  end;
<<<<<<< HEAD

  if (Field.FieldName <> CampoChave) THEN
    Field.ProviderFlags := [pfInUpdate]
  Else
    Field.ProviderFlags := [pfInKey, pfInWhere];
end;
=======

  if (Field.FieldName <> CampoChave) THEN
    Field.ProviderFlags := [pfInUpdate]
  Else
    Field.ProviderFlags := [pfInKey, pfInWhere];
end;

class function TClassCadAluno.NomeTabela: String;
 begin
  Result:= 'ALUNOS';
 end;
>>>>>>> c6e5c62d4481c5055a748dad4e88b0541bc2bbf9

end.

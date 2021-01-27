unit UClassCadAluno;

interface

uses
  Data.DB;
 Type
   TClassCadAluno = Class
    Class function SQLCadastro: String;
    Class procedure ConfigurarCampos(Fields: TFields);
 End;

implementation

{ TClassCadAluno }



class function TClassCadAluno.SQLCadastro: String;
begin
  Result :=
        'Select ALUNOS.CODIGO_ALUNO,          '  + #13 +
        'ALUNOS.NOME_ALUNO,                   '  + #13 +
        'ALUNOS.IDADE_ALUNO,                  '  + #13 +
        'ALUNOS.NOMEMAE_ALUNO,                '  + #13 +
        'ALUNOS.NOMEPAI_ALUNO,                '  + #13 +
        'ENDERECO.AUTOINC_END,                '  + #13 +
        'ENDERECO.ALUNO_END,                  '  + #13 +
        'ENDERECO.RUA_END,                    '  + #13 +
        'ENDERECO.CIDADE_END,                 '  + #13 +
        'ENDERECO.ESTADO_END,                 '  + #13 +
        'ENDERECO.BAIRRO_END,                 '  + #13 +
        'ENDERECO.NUMERO_END,                 '  + #13 +
        'ESCOLARIDADE.DESCRICAO_ESCOLARIDADE, '  + #13 +
        'ESCOLARIDADE.CODIGO_ESCOLARIDADE    '  + #13 +
        'from ALUNOS                         '  + #13 +
        'left join ENDERECO on (ALUNOS.CODIGO_ALUNO = ENDERECO.ALUNO_END)    ' + #13 +
        'left join ESCOLARIDADE on (ESCOLARIDADE.CODIGO_ESCOLARIDADE = ALUNOS.ESCOLARIDADE_CODIGO)';

end;

class procedure TClassCadAluno.ConfigurarCampos(Fields: TFields);
 var
  Field: TField;
begin
    for Field in Fields do
    begin
     if Field.FieldName      = 'CODIGO_ALUNO'  then
      Field.DisplayLabel    := 'CODIGO DO ALUNO'
     ELSE if Field.FieldName = 'NOME_ALUNO'    then
      Field.DisplayLabel    := 'NOME'
     ELSE if Field.FieldName = 'NOMEMAE_ALUNO' then
      Field.DisplayLabel    := 'NOME DA M�E'
     ELSE if Field.FieldName = 'NOMEPAI_ALUNO' then
      Field.DisplayLabel    := 'NOME DO PAI'
     ELSE if Field.FieldName = 'IDADE_ALUNO'   then
      Field.DisplayLabel    := 'IDADE DO ALUNO'
     ELSE if Field.FieldName = 'AUTOINC_END'   then
      Field.DisplayLabel    := 'COD. ENDERE�O'
     ELSE if Field.FieldName = 'BAIRRO_END'    then
      Field.DisplayLabel    := 'BAIRRO'
     ELSE if Field.FieldName = 'RUA_END'       then
      Field.DisplayLabel    := 'NOME DA RUA'
     ELSE if Field.FieldName = 'CIDADE_END'    then
      Field.DisplayLabel    := 'CIDADE DO ALUNO'
     ELSE if Field.FieldName = 'ESTADO_END'    then
      Field.DisplayLabel    := 'ESTADO'
     ELSE if Field.FieldName = 'NUMERO_END'    then
      Field.DisplayLabel    := 'N�MERO';
    end;
end;


end.
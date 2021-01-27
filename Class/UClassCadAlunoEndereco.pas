unit UClassCadAlunoEndereco;

interface

uses
  Data.DB;
 Type
   TClassCadAlunoEndereco = Class
    Class function SQLCadastro: String;
    Class procedure ConfigurarCampos(Fields: TFields);
 End;

implementation

{ TClassCadAlunoEndereco }

class procedure TClassCadAlunoEndereco.ConfigurarCampos(Fields: TFields);
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
      Field.DisplayLabel    := 'NOME DA MÃE'
     ELSE if Field.FieldName = 'NOMEPAI_ALUNO' then
      Field.DisplayLabel    := 'NOME DO PAI'
     ELSE if Field.FieldName = 'IDADE_ALUNO'   then
      Field.DisplayLabel    := 'IDADE DO ALUNO'
     ELSE if Field.FieldName = 'AUTOINC_END'   then
      Field.DisplayLabel    := 'COD. ENDEREÇO'
     ELSE if Field.FieldName = 'BAIRRO_END'    then
      Field.DisplayLabel    := 'BAIRRO'
     ELSE if Field.FieldName = 'RUA_END'       then
      Field.DisplayLabel    := 'NOME DA RUA'
     ELSE if Field.FieldName = 'CIDADE_END'    then
      Field.DisplayLabel    := 'CIDADE DO ALUNO'
     ELSE if Field.FieldName = 'ESTADO_END'    then
      Field.DisplayLabel    := 'ESTADO'
     ELSE if Field.FieldName = 'NUMERO_END'    then
      Field.DisplayLabel    := 'NÚMERO';
    end;
end;

class function TClassCadAlunoEndereco.SQLCadastro: String;
begin
 Result:=
 'SELECT ENDERECO.AUTOINC_END,' + #13 +
 'ENDERECO.ALUNO_END,' + #13 +
 'ENDERECO.RUA_END,' + #13 +
 'ENDERECO.CIDADE_END,' + #13 +
 'ENDERECO.ESTADO_END,' + #13 +
 'ENDERECO.BAIRRO_END,' + #13 +
 'ENDERECO.NUMERO_END' + #13 +
 'FROM ENDERECO ENDERECO' + #13 +
 'WHERE ENDERECO.ALUNO_END = :CODIGO_ALUNO';

end;

end.

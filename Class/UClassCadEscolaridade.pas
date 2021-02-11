unit UClassCadEscolaridade;

interface

uses
  Data.DB;
 Type
   TClassCadEscolaridade = Class
    Class function SQLCadastro: String;
    Class procedure ConfigurarCampos(Fields: TFields);
 End;

implementation

{ TClassCadAlunoEndereco }

class procedure TClassCadEscolaridade.ConfigurarCampos(Fields: TFields);
var
  Field: TField;
 begin
    for Field in Fields do
    begin
     if Field.FieldName      = 'CODIGO_ESCOLARIDADE'       then
      Field.DisplayLabel    := 'CODIGO DA ESCOLARIDADE'
     ELSE if Field.FieldName = 'DESCRICAO_ESCOLARIDADE'    then
      Field.DisplayLabel    := 'ESCOLARIDADE';

    end;
 end;
class function TClassCadEscolaridade.SQLCadastro: String;
begin
 Result:=
 'SELECT escolaridade.codigo_escolaridade,'       +#13+
 'escolaridade.descricao_escolaridade,     '      +#13+
 'ALUNOS.ESCOLARIDADE_CODIGO                '     +#13+
 'FROM ESCOLARIDADE        '                            +#13+
 'LEFT join ALUNOS on (ESCOLARIDADE.CODIGO_ESCOLARIDADE = ALUNOS.ESCOLARIDADE_CODIGO)'+#13+
 'WHERE ESCOLARIDADE.CODIGO_ESCOLARIDADE = :CODIGO_ESCOLARIDADE' ;




 {'SELECT escolaridade.codigo_escolaridade,'+#13+
 'escolaridade.descricao_escolaridade,    '+#13+
 'ALUNOS.ESCOLARIDADE_CODIGO'              +#13+
 'FROM ESCOLARIDADE                       '+#13+
 'WHERE ESCOLARIDADE.CODIGO_ESCOLARIDADE = :CODIGO_ESCOLARIDADE';}
end;

end.

unit UClassCadEscolaridade;

interface

uses
  Data.DB, UclassPaiCadastro;
 Type
   TClassCadEscolaridade = Class (TClassPaiCadastro)
    Class function SQLCadastro: String; override;
    Class procedure ConfigurarCampos(Fields: TFields); override;
    Class function CampoChave: String; override;
    Class function NomeTabela: String; override;
 End;

implementation

{ TClassCadAlunoEndereco }

class function TClassCadEscolaridade.CampoChave: String;
begin
   Result:= 'CODIGO_ESCOLARIDADE';
end;

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
class function TClassCadEscolaridade.NomeTabela: String;
begin
   Result := 'ESCOLARIDADE';
end;

class function TClassCadEscolaridade.SQLCadastro: String;
begin
 Result:=  'SELECT escolaridade.codigo_escolaridade,'       +#13+
           'escolaridade.descricao_escolaridade'      +#13+
           'FROM ESCOLARIDADE' ;
// 'ALUNOS.ESCOLARIDADE_CODIGO                '     +#13+
 // 'LEFT join ALUNOS on (ESCOLARIDADE.CODIGO_ESCOLARIDADE = ALUNOS.ESCOLARIDADE_CODIGO)'+#13+
// 'WHERE ESCOLARIDADE.CODIGO_ESCOLARIDADE = :CODIGO_ESCOLARIDADE' ;




 {'SELECT escolaridade.codigo_escolaridade,'+#13+
 'escolaridade.descricao_escolaridade,    '+#13+
 'ALUNOS.ESCOLARIDADE_CODIGO'              +#13+
 'FROM ESCOLARIDADE                       '+#13+
 'WHERE ESCOLARIDADE.CODIGO_ESCOLARIDADE = :CODIGO_ESCOLARIDADE';}
end;

end.

unit UClassCadEscolaridade;

interface

uses
<<<<<<< HEAD
  Data.DB;
 Type
   TClassCadEscolaridade = Class
    Class function SQLCadastro: String;
    Class procedure ConfigurarCampos(Fields: TFields);
=======
  Data.DB, UclassPaiCadastro;
 Type
   TClassCadEscolaridade = Class (TClassPaiCadastro)
    Class function SQLCadastro: String; override;
    Class procedure ConfigurarCampos(Fields: TFields); override;
    Class function CampoChave: String; override;
    Class function NomeTabela: String; override;
>>>>>>> c6e5c62d4481c5055a748dad4e88b0541bc2bbf9
 End;

implementation

{ TClassCadAlunoEndereco }

<<<<<<< HEAD
=======
class function TClassCadEscolaridade.CampoChave: String;
begin
   Result:= 'CODIGO_ESCOLARIDADE';
end;

>>>>>>> c6e5c62d4481c5055a748dad4e88b0541bc2bbf9
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
<<<<<<< HEAD
class function TClassCadEscolaridade.SQLCadastro: String;
begin
 Result:=
 'SELECT escolaridade.codigo_escolaridade,'       +#13+
 'escolaridade.descricao_escolaridade,     '      +#13+
 'ALUNOS.ESCOLARIDADE_CODIGO                '     +#13+
 'FROM ESCOLARIDADE        '                            +#13+
 'LEFT join ALUNOS on (ESCOLARIDADE.CODIGO_ESCOLARIDADE = ALUNOS.ESCOLARIDADE_CODIGO)'+#13+
 'WHERE ESCOLARIDADE.CODIGO_ESCOLARIDADE = :CODIGO_ESCOLARIDADE' ;
=======
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
>>>>>>> c6e5c62d4481c5055a748dad4e88b0541bc2bbf9




 {'SELECT escolaridade.codigo_escolaridade,'+#13+
 'escolaridade.descricao_escolaridade,    '+#13+
 'ALUNOS.ESCOLARIDADE_CODIGO'              +#13+
 'FROM ESCOLARIDADE                       '+#13+
 'WHERE ESCOLARIDADE.CODIGO_ESCOLARIDADE = :CODIGO_ESCOLARIDADE';}
end;

end.

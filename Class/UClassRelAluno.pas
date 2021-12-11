unit UClassRelAluno;

interface

uses
  System.Classes, Datasnap.DBClient, UDMConexao, frxClass, frxDBSet,
  UClassPaiRel;

type
   TClassRelAluno = class(TClassPaiRel)


private

   FFiltroAlunoInicial: Integer;
   FFiltroAlunoFinal: Integer;

   FListafrxDataSet: array of TfrxDBDataSet;
   FCDSAluno, FCDSendereco : TClientDataSet;
   function SQLAluno: String;
   function SQLEndereco: String;


public
   //constructor Create(); [ta no pai]
   //destructor Destroy;


   procedure Processar(); override;
   constructor Create; override;
   property CDSAluno: TClientDataSet read FCDSAluno;
   property CDSEndereco: TClientDataSet read FCDSEndereco;

end;

implementation

uses
  System.SysUtils;

{ TClassRelAluno }

constructor TClassRelAluno.create;
begin
 inherited;

  FModeloRel:= 'RelAluno.fr3';
  FCDSAluno := TClientDataSet.Create(nil);
  FCDSendereco:= TClientDataSet.Create(nil);

end;

function TClassRelAluno.SQLEndereco: String;
begin
   Result:= 'select endereco.autoinc_end,' +#13+
            'endereco.aluno_end,' +#13+
            'endereco.rua_end, endereco.cidade_end,' +#13+
            'endereco.estado_end,' +#13+
            'endereco.bairro_end,' +#13+
            'endereco.numero_end' +#13+
            'from endereco';

end;

function TClassRelAluno.SQLAluno: String;
begin
   Result:='Select ALUNOS.CODIGO_ALUNO,' +#13+
           'ALUNOS.NOME_ALUNO,' +#13+
           'alunos.idade_aluno,' +#13+
           'alunos.nomemae_aluno,' +#13+
           'alunos.nomepai_aluno,' +#13+
           'alunos.escolaridade_codigo,' +#13+
           'escolaridade.descricao_escolaridade' +#13+
           'from ALUNOS' +#13+
           'left join ESCOLARIDADE on (ESCOLARIDADE.CODIGO_ESCOLARIDADE = ALUNOS.ESCOLARIDADE_CODIGO)' +#13+
           'where ALUNOS.CODIGO_ALUNO between ' + InttoStr(FFiltroAlunoInicial) + ' and ' + InttoStr (FFiltroAlunoFinal);
end;





procedure TClassRelAluno.Processar;
begin
 FFiltroAlunoInicial:= ParametroPeloNome('FiltroAlnunIni');
 FFiltroAlunoFinal:= ParametroPeloNome('FiltroAlnunFinal');

 FCDSAluno.Data:= DMConexao.ExecuteReader(SQLAluno);
 FCDSendereco.Data:= DMConexao.ExecuteReader(SQLEndereco);

 RegistraCDS('frPrincipal', FCDSAluno);
 RegistraCDS('frEndereco', FCDSendereco);
end;


end.

unit UClassRelAluno;

interface

uses
  System.Classes, Datasnap.DBClient, UDMConexao, frxClass, frxDBSet;

type
   TClassRelAluno = class(TPersistent)


private
   FListafrxDataSet: array of TfrxDBDataSet;
   FCDSAluno, FCDSendereco : TClientDataSet;
   Ffrxreport: TfrxReport;
   function SQLAluno: String;
   function SQLEndereco: String;

   procedure RegistraCDS(Nome: String; CDS: TCLientDataSet);
public
   constructor Create();
   destructor Destroy;

   procedure MostrarRelatorio();
   procedure Processar();
   property CDSAluno: TClientDataSet read FCDSAluno;
   property CDSEndereco: TClientDataSet read FCDSEndereco;

end;

implementation

{ TClassRelAluno }

constructor TClassRelAluno.Create;
begin
 inherited;
  FCDSAluno := TClientDataSet.Create(nil);
  FCDSendereco:= TClientDataSet.Create(nil);
  Ffrxreport:= TfrxReport.Create(nil);
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
           'left join ESCOLARIDADE on (ESCOLARIDADE.CODIGO_ESCOLARIDADE = ALUNOS.ESCOLARIDADE_CODIGO)';
end;




destructor TClassRelAluno.Destroy;
begin
  FCDSAluno.Free;
  FCDSendereco.Free;
  Ffrxreport.Free;
    inherited;
end;

procedure TClassRelAluno.MostrarRelatorio;
begin
 Ffrxreport.loadFromfILE('RelAluno.fr3');
 Ffrxreport.ShowReport();
end;

procedure TClassRelAluno.Processar;
begin
 FCDSAluno.Data:= DMConexao.ExecuteReader(SQLAluno);
 FCDSendereco.Data:= DMConexao.ExecuteReader(SQLEndereco);

 RegistraCDS('frPrincipal', FCDSAluno);
 RegistraCDS('frEndereco', FCDSendereco);
end;






procedure TClassRelAluno.RegistraCDS(Nome: String; CDS: TCLientDataSet);
 Var
  frxTemp: TfrxDBDataset;
begin

  frxTemp:= TfrxDBDataset.Create(nil);
  frxTemp.UserName:= Nome;
  frxTemp.DataSet:= CDS;

  Ffrxreport.DataSets.Add(frxTemp);
end;

end.

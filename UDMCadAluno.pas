unit UDMCadAluno;

interface

uses
  System.SysUtils, System.Classes, Datasnap.Provider, Data.DB,
  Datasnap.DBClient,
  Data.FMTBcd, Data.SqlExpr, Data.DBXFirebird,Vcl.Dialogs;

type
  TDMCadAluno = class(TDataModule)
    CDSCadastro: TClientDataSet;
    DSProvider: TDataSetProvider;
    SQLDS: TSQLDataSet;
    SQLDDSEndereco: TSQLDataSet;
    ClientDSEndereco: TClientDataSet;
    DSLink: TDataSource;
    procedure CDSCadastroNewRecord(DataSet: TDataSet);
    procedure CDSCadastroBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure CDSCadastroAfterOpen(DataSet: TDataSet);
    procedure ClientDSEnderecoAfterOpen(DataSet: TDataSet);
    procedure ClientDSEnderecoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadAluno: TDMCadAluno;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses UDMConexao, UClassCadAluno, UClassCadAlunoEndereco;

{$R *.dfm}

procedure TDMCadAluno.CDSCadastroAfterOpen(DataSet: TDataSet);
begin
 TClassCadAluno.ConfigurarCampos(CDSCadastro.Fields);
end;

procedure TDMCadAluno.CDSCadastroBeforePost(DataSet: TDataSet);
begin
   IF ((Trim(DataSet.FieldByName('Nome_aluno').AsString) = '') or (Trim(DataSet.FieldByName('NOMEMAE_ALUNO').AsString) = '') or (Trim(DataSet.FieldByName('NOMEPAI_ALUNO').AsString) = '') or (DataSet.FieldByName('IDADE_ALUNO').IsNull )) then
    begin
     MessageDlg('Não é possivel gravar nomes vazio',mtWarning,mbAbortIgnore,0);
     Abort
    end;
   end;

procedure TDMCadAluno.CDSCadastroNewRecord(DataSet: TDataSet);
begin
  CDSCadastro.FieldByName('CODIGO_ALUNO').AsInteger := DMConexao.ProximoCodigo('ALUNOS', 'CODIGO_ALUNO');
end;

procedure TDMCadAluno.ClientDSEnderecoAfterOpen(DataSet: TDataSet);
begin
 TClassCadAlunoEndereco.ConfigurarCampos(DataSet.Fields);
end;

procedure TDMCadAluno.ClientDSEnderecoNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('AUTOINC_END').AsInteger := DMConexao.ProximoCodigo('ENDERECO', 'AUTOINC_END');
  DataSet.FieldByName('ALUNO_END').AsInteger := CDSCadastro.FieldByName('CODIGO_ALUNO').AsInteger;
end;

procedure TDMCadAluno.DataModuleCreate(Sender: TObject);
begin
 SQLDS.SQLConnection:= DMConexao.SQLConnection1;
 SQLDDSEndereco.SQLConnection:= DMConexao.SQLConnection1;

 SQLDS.CommandText:= TClassCadAluno.SQLCadastro;
 SQLDDSEndereco.CommandText:= TClassCadAlunoEndereco.SQLCadastro;

 CDSCadastro.Open;

 ClientDSEndereco.DataSetField := TDataSetField (CDSCadastro.FieldByName('SQLDDSEndereco'));

end;

end.

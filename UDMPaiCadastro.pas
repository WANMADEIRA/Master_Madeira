unit UDMPaiCadastro;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider,
  Data.DB, Datasnap.DBClient, UclassPaiCadastro, UDMConexao;

type
  TDMPaiCadastro = class(TDataModule)
    CDSCadastro: TClientDataSet;
    DSProvider: TDataSetProvider;
    SQLDS: TSQLDataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure CDSCadastroAfterDelete(DataSet: TDataSet);
    procedure CDSCadastroAfterPost(DataSet: TDataSet);
    procedure CDSCadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    FClassFilha : TClassPaiCadastro;
    Procedure AbrirCadastro(Codigo: Integer);
    procedure PrimeiroRegistro;
    Procedure UltimoRegistro;
  end;

var
  DMPaiCadastro: TDMPaiCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMPaiCadastro.AbrirCadastro(Codigo: Integer);
begin
  CDSCadastro.Close;
  SQLDS.CommandText := FClassFilha.SQLCadastro;
  CDSCadastro.FetchParams;
  CDSCadastro.ParamByName('COD').AsInteger := Codigo ;
  CDSCadastro.Open;
end;

procedure TDMPaiCadastro.CDSCadastroAfterDelete(DataSet: TDataSet);
begin
 CDSCadastro.ApplyUpdates(-1);
end;

procedure TDMPaiCadastro.CDSCadastroAfterPost(DataSet: TDataSet);
begin
 CDSCadastro.ApplyUpdates(-1);
end;

procedure TDMPaiCadastro.CDSCadastroNewRecord(DataSet: TDataSet);
begin
 CDSCadastro.FieldByName(FClassFilha.CampoChave).AsInteger :=  DMConexao.ProximoCodigo(FclassFilha.NomeTabela, FClassFilha.CampoChave);
end;

procedure TDMPaiCadastro.DataModuleCreate(Sender: TObject);
begin
  SQLDS.SQLConnection := DMConexao.SQLConnection1;

end;

procedure TDMPaiCadastro.PrimeiroRegistro;
 Var
  Codigo: Integer;
begin
  Codigo:=1;
  Codigo:= DMConexao.ExecuteScalar('select min(' + FClassFilha.CampoChave + ') From' + FClassFilha.NomeTabela);
  DMPaiCadastro.AbrirCadastro(Codigo);
end;

procedure TDMPaiCadastro.UltimoRegistro;
 Var
  Codigo: Integer;
begin
  Codigo:= DMConexao.ExecuteScalar('select min (CODIGO_ALUNO)from alunos');
  //Codigo:= DMConexao.ExecuteScalar('select max(' + FClassFilha.CampoChave + ') From' + FClassFilha.NomeTabela);
  DMPaiCadastro.AbrirCadastro(Codigo);

end;

end.

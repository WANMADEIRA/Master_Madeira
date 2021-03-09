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
    FCodigoAtual: Integer;
    { Private declarations }
  public
    FClassFilha: TClassPaiCadastro;

    Procedure AbrirCadastro(Codigo: Integer);
    procedure PrimeiroRegistro;
    Procedure UltimoRegistro;
    Procedure Proximo;
    Procedure Anterior;
    Property CodigoAtual : Integer read FcodigoAtual;
  end;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

procedure TDMPaiCadastro.AbrirCadastro(Codigo: Integer);
begin
  FCodigoAtual := Codigo;
  CDSCadastro.Close;
  SQLDS.CommandText := FClassFilha.SQLCadastro;
  CDSCadastro.FetchParams;
  CDSCadastro.ParamByName('COD').AsInteger := Codigo;
  CDSCadastro.Open;
end;

procedure TDMPaiCadastro.Anterior;
VAR
 Codigo :Integer;
begin
  Codigo := DMConexao.ExecuteScalar('select coalesce (max(' + FClassFilha.CampoChave + '), -1) From ' +
                                           FClassFilha.NomeTabela + ' Where ' +
                                           FClassFilha.CampoChave + ' < ' + IntToStr(FCodigoAtual));

  if Codigo > -1 then
   AbrirCadastro(Codigo);
end;

procedure TDMPaiCadastro.Proximo;
VAR
 Codigo :Integer;
begin
  Codigo := DMConexao.ExecuteScalar('select coalesce (min(' + FClassFilha.CampoChave + '), -1) From ' +
                                           FClassFilha.NomeTabela + ' Where ' +
                                           FClassFilha.CampoChave + ' > ' + IntToStr(FCodigoAtual));

  if Codigo > -1 then
   AbrirCadastro(Codigo);
end;

procedure TDMPaiCadastro.CDSCadastroAfterDelete(DataSet: TDataSet);
begin
  CDSCadastro.ApplyUpdates(-1);
end;

procedure TDMPaiCadastro.CDSCadastroAfterPost(DataSet: TDataSet);
begin
  CDSCadastro.ApplyUpdates(-1);
  FCodigoAtual:= CDSCadastro.FieldByName(FClassFilha.CampoChave).AsInteger
end;

procedure TDMPaiCadastro.CDSCadastroNewRecord(DataSet: TDataSet);
begin
  CDSCadastro.FieldByName(FClassFilha.CampoChave).AsInteger := DMConexao.ProximoCodigo(FClassFilha.NomeTabela, FClassFilha.CampoChave);
end;

procedure TDMPaiCadastro.DataModuleCreate(Sender: TObject);
begin
  SQLDS.SQLConnection := DMConexao.SQLConnection1;
  FCodigoAtual := -1;
end;

procedure TDMPaiCadastro.PrimeiroRegistro;
begin
  FCodigoAtual := DMConexao.ExecuteScalar('select min(' + FClassFilha.CampoChave + ') From ' + FClassFilha.NomeTabela);
  AbrirCadastro(FCodigoAtual);
end;

procedure TDMPaiCadastro.UltimoRegistro;
begin
  FCodigoAtual := DMConexao.ExecuteScalar('select max(' + FClassFilha.CampoChave + ') From ' + FClassFilha.NomeTabela);
  AbrirCadastro(FCodigoAtual);

end;

end.

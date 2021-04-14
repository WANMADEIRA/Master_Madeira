unit UDMConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider;

type
  TDMConexao = class(TDataModule)
    SQLConnection1: TSQLConnection;
    SQLDS: TSQLDataSet;
    DSPCommand: TDataSetProvider;
  private
    { Private declarations }
  public
    Function ExecuteScalar (SQL: String): Variant;
    Function ProximoCodigo (Tabela, Campochave: String): Integer;
    Function ExecuteReader (SQL: String): OleVariant;
  end;

var
  DMConexao: TDMConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMConexao }

function TDMConexao.ExecuteReader(SQL: String): OleVariant;
begin
  SQLDS.Close;
  SQLDS.CommandText:= SQL;
  Result:= DSPCommand.Data;

end;

function TDMConexao.ExecuteScalar(SQL: String): Variant;
begin
  SQLDS.Close;
  SQLDS.CommandText:= SQL;
  SQLDS.Open;

  Result:= SQLDS.Fields[0].AsVariant;

end;

function TDMConexao.ProximoCodigo(Tabela, CampoChave: String): Integer;
begin
  Result:= ExecuteScalar('Select Max('+ Campochave +') from ' + Tabela) +1;
end;

end.

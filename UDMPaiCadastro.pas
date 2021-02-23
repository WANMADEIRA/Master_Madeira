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
  end;

var
  DMPaiCadastro: TDMPaiCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

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
  SQLDS.CommandText := FClassFilha.SQLCadastro;

  CDSCadastro.Open;

end;

end.

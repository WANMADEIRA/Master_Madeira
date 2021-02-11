unit UDMPaiCadastro;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider,
  Data.DB, Datasnap.DBClient;

type
  TDMPaiCadastro = class(TDataModule)
    CDSCadastro: TClientDataSet;
    DSProvider: TDataSetProvider;
    SQLDS: TSQLDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPaiCadastro: TDMPaiCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

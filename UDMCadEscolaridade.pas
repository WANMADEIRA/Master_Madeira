unit UDMCadEscolaridade;

interface

uses
  System.SysUtils, System.Classes, UDMPaiCadastro, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, UClassCadEscolaridade;

type
  TDMCadEscolaridade = class(TDMPaiCadastro)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadEscolaridade: TDMCadEscolaridade;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMCadEscolaridade.DataModuleCreate(Sender: TObject);
begin
 Self.FClassFilha := TClassCadEscolaridade.Create;
  inherited;

end;

end.

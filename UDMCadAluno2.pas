unit UDMCadAluno2;

interface

uses
  System.SysUtils, System.Classes, UDMPaiCadastro, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, UClassCadAluno;

type
  TDMCadAluno2 = class(TDMPaiCadastro)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadAluno2: TDMCadAluno2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMCadAluno2.DataModuleCreate(Sender: TObject);
begin
 self.FClassFilha := TClassCadAluno.Create;
  inherited;
end;

end.

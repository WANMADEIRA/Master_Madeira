unit UDMCadAluno2;

interface

uses
  System.SysUtils, System.Classes, UDMPaiCadastro, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, UClassCadAluno, UDMConexao;

type
  TDMCadAluno2 = class(TDMPaiCadastro)
    procedure DataModuleCreate(Sender: TObject);
    procedure SQLDSAfterOpen(DataSet: TDataSet);
    procedure CDSCadastroAfterOpen(DataSet: TDataSet);
  private
    FCarregarImagem: TProc<TField>;
    procedure ValidateEscolaridade(Sender: TField);
    { Private declarations }
  public
    property CarregarImagem: TProc<TField> read FCarregarImagem write FCarregarImagem;
  end;

var
  DMCadAluno2: TDMCadAluno2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMCadAluno2.CDSCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CarregarImagem(DataSet.FieldByName('IMAGEM_ALUNO'));
end;

procedure TDMCadAluno2.DataModuleCreate(Sender: TObject);
begin
  FClassFilha := TClassCadAluno.Create;
  inherited;

 // CDSCadastro.FieldByName('ESCOLARIDADE_CODIGO').OnValidate := ValidateEscolaridade;
end;


Procedure TDMCadAluno2.ValidateEscolaridade(Sender: TField);
var
  Descricao_escolaridade: String;
begin
  Descricao_escolaridade := DMConexao.ExecuteScalar
    ('select escolaridade.descricao_escolaridade ' + #13 +
     'from escolaridade ' + #13 +
     'where escolaridade.codigo_escolaridade = ' + Sender.AsString);

  if (Descricao_escolaridade = '0') then
    raise Exception.Create('Registro não Encontrado');

  CDSCadastro.FieldByName('DESCRICAO_ESCOLARIDADE').AsString := Descricao_escolaridade;
end;

procedure TDMCadAluno2.SQLDSAfterOpen(DataSet: TDataSet);
begin
  DataSet.FieldByName('DESCRICAO_ESCOLARIDADE').ProviderFlags := [];
  inherited;

end;

End.

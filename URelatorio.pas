unit URelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, frxdesgn,
  frxDBSet, UDMConexao, Data.DB, UClassRelAluno;

type
  TFRelatorio = class(TForm)
    frxReport: TfrxReport;
    Panel1: TPanel;
    Editar_Relatorio: TButton;
    Gerar_Relatorio: TButton;
    frxDBDataset: TfrxDBDataset;
    frxDBDatasetDet: TfrxDBDataset;
    DS: TDataSource;
    procedure Gerar_RelatorioClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorio: TFRelatorio;

implementation

uses
  Datasnap.DBClient;

{$R *.dfm}

{procedure TFRelatorio.Editar_RelatorioClick(Sender: TObject);
var

begin

  try
    CDSRel.Data:= DMConexao.ExecuteReader('Select * from Alunos');
    CDSRelDet.Data:= DMConexao.ExecuteReader('select * from ENDERECO');
    frxDBDataset.DataSet := CDSRel;
    frxDBDatasetDet.DataSet := CDSRelDet;
    frxDBDataset.UserName:= 'frPrincipal';
    frxDBDatasetDET.UserName:= 'frEndereco';
    frxReport.DataSets.Add(frxDBDataset);
    frxReport.DataSets.Add(frxDBDatasetdet);

    DS.DataSet:= CDSRel;
    CDSRelDet.MasterSource:= DS;
    CDSRelDet.MasterFields:= 'CODIGO_ALUNO';
    CDSRelDet.IndexFieldNames:= 'ALUNO_END';

    frxreport.loadFromfILE('RelAluno.fr3');
    frxReport.DesignReport();
  finally
    FreeAndNil(CDSRel);
    FreeAndNil(CDSRelDet);
  end;

end;}

procedure TFRelatorio.Gerar_RelatorioClick(Sender: TObject);
 var
  RelAluno: TClassRelAluno;
begin
  RelAluno:= TClassRelAluno.create;
  try
    RelAluno.Processar();

    DS.DataSet:= RelAluno.RetornarCDS(0);
    RelAluno.RetornarCDS(1).MasterSource:= DS;
    RelAluno.RetornarCDS(1).MasterFields:= 'CODIGO_ALUNO';
    RelAluno.RetornarCDS(1).IndexFieldNames:= 'ALUNO_END';

    RelAluno.MostrarRelatorio();

    {frxDBDataset.DataSet := RelAluno.CDSAluno;
    frxDBDatasetDet.DataSet := RelAluno.CDSEndereco;
    frxDBDataset.UserName:= 'frPrincipal';
    frxDBDatasetDET.UserName:= 'frEndereco';
    frxReport.DataSets.Add(frxDBDataset);
    frxReport.DataSets.Add(frxDBDatasetdet);
    DS.DataSet:= RelAluno.CDSAluno;}

  finally
    RelAluno.free;
  end;
  end;
end.

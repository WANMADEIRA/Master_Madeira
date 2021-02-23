program FCadAluno;

uses
  Vcl.Forms,
  UCadAluno in 'UCadAluno.pas' {frmCadAluno},
  UDMCadAluno in 'UDMCadAluno.pas' {DMCadAluno: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  UDMConexao in 'UDMConexao.pas' {DMConexao: TDataModule},
  UClassCadAluno in 'Class\UClassCadAluno.pas',
  UClassCadAlunoEndereco in 'Class\UClassCadAlunoEndereco.pas',
  UClassCadEscolaridade in 'Class\UClassCadEscolaridade.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TfrmCadAluno, frmCadAluno);
  Application.Run;
end.

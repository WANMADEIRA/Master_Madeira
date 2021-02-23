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
<<<<<<< HEAD
  UClassCadEscolaridade in 'Class\UClassCadEscolaridade.pas';
=======
  UClassCadEscolaridade in 'Class\UClassCadEscolaridade.pas',
  UPaiCadastro in 'UPaiCadastro.pas' {FPaiCadastro},
  UDMPaiCadastro in 'UDMPaiCadastro.pas' {DMPaiCadastro: TDataModule},
  UclassPaiCadastro in 'Class\UclassPaiCadastro.pas',
  UCadAluno2 in 'UCadAluno2.pas' {FCadAluno2},
  UDMCadAluno2 in 'UDMCadAluno2.pas' {DMCadAluno2: TDataModule},
  UCadEscolaridade in 'UCadEscolaridade.pas' {FCadEscolaridade},
  UDMCadEscolaridade in 'UDMCadEscolaridade.pas' {DMCadEscolaridade: TDataModule},
  UCadPrincipal in 'UCadPrincipal.pas' {Principal};
>>>>>>> c6e5c62d4481c5055a748dad4e88b0541bc2bbf9

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TPrincipal, Principal);
  Application.Run;
end.

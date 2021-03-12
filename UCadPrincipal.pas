unit UCadPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadAluno2, UCadEscolaridade,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Menus, UCadAluno, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, JvExComCtrls, JvComCtrls;

type
  TPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Aluno1: TMenuItem;
    Escolaridade1: TMenuItem;
    Manuteno1: TMenuItem;
    Panel1: TPanel;
    CADaluno: TSpeedButton;
    Panel2: TPanel;
    CadEscola: TSpeedButton;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    procedure CADalunoClick(Sender: TObject);
    procedure CadEscolaClick(Sender: TObject);


    procedure SpeedButton1Click(Sender: TObject);
    procedure Aluno1Click(Sender: TObject);
    procedure Escolaridade1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

procedure TPrincipal.Aluno1Click(Sender: TObject);
begin
  FCadAluno2 := TFCadAluno2.Create(self);
  FCadAluno2.ShowModal;
end;

procedure TPrincipal.CADalunoClick(Sender: TObject);
begin
  FCadAluno2 := TFCadAluno2.Create(self);
  FCadAluno2.ShowModal;
end;

procedure TPrincipal.CadEscolaClick(Sender: TObject);
 begin
  FCadEscolaridade := TFCadEscolaridade.Create(self);
  FCadEscolaridade.ShowModal;
 end;

procedure TPrincipal.Escolaridade1Click(Sender: TObject);
begin
  FCadEscolaridade := TFCadEscolaridade.Create(self);
  FCadEscolaridade.ShowModal;
end;

procedure TPrincipal.SpeedButton1Click(Sender: TObject);
begin
 frmCadAluno := TfrmCadAluno.Create(self);
 frmCadAluno.ShowModal;
end;








end.

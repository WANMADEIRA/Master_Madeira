unit UCadPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadAluno2, UCadEscolaridade,
  Vcl.Buttons;

type
  TPrincipal = class(TForm)
    CADaluno:  TSpeedButton;
    CadEscola: TSpeedButton;
    procedure CADalunoClick(Sender: TObject);
    procedure CadEscolaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

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

end.

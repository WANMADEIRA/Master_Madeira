unit UPaiCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    PGPrincipal: TPageControl;
    Principal: TTabSheet;
    Panel1: TPanel;
    BtnInsert: TButton;
    BtnGravar: TButton;
    BtnExcluir: TButton;
    BtnCancelar: TButton;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    EditCodAluno: TLabel;
    EditCodigo: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.

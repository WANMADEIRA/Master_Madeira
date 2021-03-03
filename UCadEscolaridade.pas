unit UCadEscolaridade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPaiCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, UDMCadEscolaridade;

type
  TFCadEscolaridade = class(TFPaiCadastro)
    DBEdit1: TDBEdit;
    Escolaridade: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadEscolaridade: TFCadEscolaridade;

implementation

{$R *.dfm}

procedure TFCadEscolaridade.FormCreate(Sender: TObject);
begin
  DMPaiCadastro := TDMCadEscolaridade.Create(self);
  inherited;

end;

end.

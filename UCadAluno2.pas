unit UCadAluno2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPaiCadastro, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, UClassCadAluno, UDMCadAluno2,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFCadAluno2 = class(TFPaiCadastro)
    EditNomealuno: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    EditNomePai: TDBEdit;
    Label4: TLabel;
    EditNomeMae: TDBEdit;
    Label9: TLabel;
    Editidade: TDBEdit;
    Label5: TLabel;
    TabSheet1: TTabSheet;
    Bairro: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cod_Esc_Alu: TDBEdit;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadAluno2: TFCadAluno2;

implementation

{$R *.dfm}

procedure TFCadAluno2.FormCreate(Sender: TObject);
begin
  self.DMCadastro:= TDMCadAluno2.Create(self);
  inherited;
end;

end.

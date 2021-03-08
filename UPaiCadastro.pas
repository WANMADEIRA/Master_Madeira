unit UPaiCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, UClassPaiCadastro, UDMPaiCadastro, Data.DB,
  Vcl.Imaging.jpeg;

type
  TFPaiCadastro = class(TForm)
    PGPrincipal: TPageControl;
    Principal: TTabSheet;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    EditCodAluno: TLabel;
    EditCodigo: TDBEdit;
    DS: TDataSource;
    Image1: TImage;
    Panel1: TPanel;
    BtnInsert: TButton;
    BtnGravar: TButton;
    BtnExcluir: TButton;
    BtnCancelar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnInsertClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public

  protected
    DMPaiCadastro: TDMPaiCadastro;
  end;

var
  FPaiCadastro: TFPaiCadastro;

implementation

{$R *.dfm}

procedure TFPaiCadastro.BtnCancelarClick(Sender: TObject);
begin
  DS.DataSet.Cancel;
end;

procedure TFPaiCadastro.BtnExcluirClick(Sender: TObject);
begin
  DS.DataSet.Delete;
end;

procedure TFPaiCadastro.BtnGravarClick(Sender: TObject);
begin
  DS.DataSet.Post;
end;

procedure TFPaiCadastro.BtnInsertClick(Sender: TObject);
begin
  DS.DataSet.Insert;
end;

procedure TFPaiCadastro.Button1Click(Sender: TObject);
begin
  DMPaiCadastro.PrimeiroRegistro;
end;

procedure TFPaiCadastro.Button2Click(Sender: TObject);
begin
  DMPaiCadastro.Anterior;
end;

procedure TFPaiCadastro.Button3Click(Sender: TObject);
begin
  DMPaiCadastro.Proximo;
end;

procedure TFPaiCadastro.Button4Click(Sender: TObject);
begin
  DMPaiCadastro.UltimoRegistro;
end;

procedure TFPaiCadastro.DSStateChange(Sender: TObject);
var
  Editando: Boolean;
begin
  Editando := DS.DataSet.State in [dsEdit, dsInsert];

  BtnInsert.Enabled := not Editando;
  BtnGravar.Enabled := Editando;
  BtnCancelar.Enabled := Editando;
  BtnExcluir.Enabled := not Editando;
end;



procedure TFPaiCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree;
end;

procedure TFPaiCadastro.FormCreate(Sender: TObject);
begin
  DS.DataSet := DMPaiCadastro.CDSCadastro;
end;

end.

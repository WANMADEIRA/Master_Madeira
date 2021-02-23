unit UPaiCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, UClassPaiCadastro, UDMPaiCadastro, Data.DB;

type
  TFPaiCadastro = class(TForm)
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
    DS: TDataSource;
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

  private
    { Private declarations }
  public
    DMCadastro: TDMPaiCadastro;
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
  DS.DataSet.First;
end;

procedure TFPaiCadastro.Button2Click(Sender: TObject);
begin
  DS.DataSet.prior;
end;

procedure TFPaiCadastro.Button3Click(Sender: TObject);
begin
  DS.DataSet.Next;
end;

procedure TFPaiCadastro.Button4Click(Sender: TObject);
begin
  DS.DataSet.Last;
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



procedure TFPaiCadastro.FormCreate(Sender: TObject);
begin
  DS.DataSet := DMCadastro.CDSCadastro;
end;

end.

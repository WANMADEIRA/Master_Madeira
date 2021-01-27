unit UCadAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmCadAluno = class(TForm)
    PGPrincipal: TPageControl;
    Principal: TTabSheet;
    EditCodigo: TDBEdit;
    EditCodAluno: TLabel;
    EditNomealuno: TDBEdit;
    Label2: TLabel;
    EditNomePai: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    EditNomeMae: TDBEdit;
    Editidade: TDBEdit;
    Label5: TLabel;
    DS: TDataSource;
    Panel1: TPanel;
    BtnInsert: TButton;
    BtnGravar: TButton;
    BtnExcluir: TButton;
    BtnCancelar: TButton;
    DBGrid1: TDBGrid;
    Endereco: TTabSheet;
    DBEdit_Rua: TDBEdit;
    DBeditBairro: TDBEdit;
    DBEditCidade: TDBEdit;
    DBEditEstado: TDBEdit;
    Dbedit_numero: TDBEdit;
    Bairro: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    btnprimeiro: TButton;
    bntanterior: TButton;
    btnproximo: TButton;
    btnUltimo: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    cod_aluno: TDBEdit;
    DSEndereco: TDataSource;
    DBGrid2: TDBGrid;
    procedure BtnInsertClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure bntanteriorClick(Sender: TObject);
    procedure btnproximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);

    procedure DSStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAluno: TfrmCadAluno;

implementation

{$R *.dfm}

uses UDMCadAluno;

procedure TfrmCadAluno.bntanteriorClick(Sender: TObject);
begin
  DS.DataSet.Prior;
end;

procedure TfrmCadAluno.BtnCancelarClick(Sender: TObject);
begin
  DS.DataSet.Cancel;
end;

procedure TfrmCadAluno.BtnExcluirClick(Sender: TObject);
begin
  DS.DataSet.Delete;
  DMCadAluno.CDSCadastro.ApplyUpdates(-1);
end;

procedure TfrmCadAluno.BtnGravarClick(Sender: TObject);
begin
  DS.DataSet.Post;
  DMCadAluno.CDSCadastro.ApplyUpdates(-1);
  ShowMessage('ALUNO GRAVADO COM SUCESSO');
end;

procedure TfrmCadAluno.BtnInsertClick(Sender: TObject);
begin
  DS.DataSet.Insert;
end;

procedure TfrmCadAluno.btnprimeiroClick(Sender: TObject);
begin
  DS.DataSet.First;
end;

procedure TfrmCadAluno.btnproximoClick(Sender: TObject);
begin
  DS.DataSet.Next;
end;

procedure TfrmCadAluno.btnUltimoClick(Sender: TObject);
begin
  DS.DataSet.Last;
end;

procedure TfrmCadAluno.DSStateChange(Sender: TObject);
var
  Editando: Boolean;
begin
  Editando:= ds.DataSet.State in [dsEdit, dsInsert];

  BtnInsert.Enabled   := not Editando;
  BtnGravar.Enabled   := Editando;
  BtnCancelar.Enabled := Editando;
  BtnExcluir.Enabled  := not Editando;

end;

procedure TfrmCadAluno.FormCreate(Sender: TObject);
begin
 DMCadAluno:= TDMCadAluno.create(self);
end;


procedure TfrmCadAluno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FreeAndNil(DMCadAluno);
end;



end.

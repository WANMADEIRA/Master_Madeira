unit UCadConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ExtCtrls, Datasnap.DBClient,
  UclassPaiCadastro, UDMConexao;

type
  TFConsulta = class(TForm)
    Painel_Superior: TPanel;
    JvDBGrid1: TJvDBGrid;
    ccbPEQUISA: TComboBox;
    edtvalor: TEdit;
    Pesquisabutton: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DS: TDataSource;
    CDSPESQUISA: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure PesquisabuttonClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
  private
    FClassConsulta: TClassPaiCadastro;
    FretornoConsulta: Integer;
    function MontarSQLConsulta: String;
    Function GETCampoBD: TField;

  public
    fClasseFilha: TClassPaiCadastro;
    property ClassConsulta : TClassPaiCadastro read FClassConsulta write FClassConsulta;
    PROPERTY RetornoConsulta: Integer read FretornoConsulta write FRetornoConsulta;
  end;

var
  FConsulta: TFConsulta;

implementation

{$R *.dfm}

procedure TFConsulta.FormShow(Sender: TObject);
begin
 SELF.Caption := SELF.Caption + fClasseFilha.DescricaoTabela;
end;

function TFConsulta.GETCampoBD: TField;
Var
 Field: TField;
begin
 for Field in CDSPESQUISA.Fields do
 begin
  if Field.Displaylabel = ccbPEQUISA.Text then
   begin
     Result:= Field;
     exit
   end;
 end;

end;

procedure TFConsulta.JvDBGrid1DblClick(Sender: TObject);
begin
  FretornoConsulta:= CDSPESQUISA.FieldByName(fClasseFilha.CampoChave).AsInteger;
  Close;
end;

function TFConsulta.MontarSQLConsulta: String;
VAR
SQL, valor: String;
Field : Tfield;
 begin
  SQL:= fClasseFilha.SQLCOnsulta +#13;

  if edtvalor.Text <> '' then
  begin
    Field:= GETCampoBD;

    if (Field.DataType = ftInteger) then
     Valor:= edtvalor.Text
    else if (Field.DataType = ftString) then
     Valor:= QuotedStr(edtvalor.Text);

   SQL:= Sql + 'where ' + FIeld.FieldName + ' = ' + valor;
  end;
    Result:= SQL;

 end;


procedure TFConsulta.PesquisabuttonClick(Sender: TObject);
VAR
Field: TField;
begin
 CDSPeSQUISA.Data:= DMConexao.ExecuteReader(MontarSQLConsulta);
 fClasseFilha.ConfigurarCampos(CDSPESQUISA.Fields);
// ccbPEQUISA.Items.Clear;
// CDSPESQUISA.Data := DMConexao.ExecuteReader(fClasseFilha.SQLCOnsulta +#13+
//'where ' + fClasseFilha.CampoChave + ' <0');

// fClasseFilha.ConfigurarCampos(CDSPESQUISA.Fields);

 // ccbPEQUISA.ItemIndex:= 0;
  for Field in CDSPESQUISA.Fields do
  ccbPEQUISA.Items.Add(Field.DisplayLabel);



end;

procedure TFConsulta.SpeedButton2Click(Sender: TObject);
begin
 FretornoConsulta:= CDSPESQUISA.FieldByName(fCLASSEFILHA.CampoChave).AsInteger;
 Close;
end;

end.

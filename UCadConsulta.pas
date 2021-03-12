unit UCadConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ExtCtrls, Datasnap.DBClient,
  UclassPaiCadastro;

type
  TFConsulta = class(TForm)
    Painel_Superior: TPanel;
    JvDBGrid1: TJvDBGrid;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Pesquisabutton: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DS: TDataSource;
    CDSPESQUISA: TClientDataSet;
    procedure FormShow(Sender: TObject);
  private
    FClassConsulta: TClassPaiCadastro;
    { Private declarations }
  public
    property ClassConsulta : TClassPaiCadastro read FClassConsulta write FClassConsulta;
    { Public declarations }
  end;

var
  FConsulta: TFConsulta;

implementation

{$R *.dfm}

procedure TFConsulta.FormShow(Sender: TObject);
begin
 SELF.Caption := SELF.Caption + FClassConsulta.DescricaoTabela;
end;

end.

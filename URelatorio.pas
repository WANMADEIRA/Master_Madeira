unit URelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, frxdesgn,
  frxDBSet;

type
  TFRelatorio = class(TForm)
    frxReport: TfrxReport;
    Panel1: TPanel;
    Editar_Relatorio: TButton;
    Gerar_Relatorio: TButton;
    frxDBDataset: TfrxDBDataset;
    procedure Gerar_RelatorioClick(Sender: TObject);
    procedure Editar_RelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorio: TFRelatorio;

implementation

{$R *.dfm}

procedure TFRelatorio.Editar_RelatorioClick(Sender: TObject);
begin
  frxreport.loadFromfILE('RelAluno.fr3');
  frxReport.DesignReport();
end;

procedure TFRelatorio.Gerar_RelatorioClick(Sender: TObject);
begin
 frxreport.loadFromfILE('RelAluno.fr3');
 frxReport.ShowReport();
end;

end.

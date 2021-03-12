unit UCadAluno2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPaiCadastro, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, UClassCadAluno, UDMCadAluno2,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtDlgs, JvDBImage,
  JvExMask, JvToolEdit, JvBaseEdits;

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
    DBEdit2: TDBEdit;
    cod_Esc_Alu: TDBEdit;
    OpenPictureDialog: TOpenPictureDialog;
    Panel3: TPanel;
    JvDBImage1: TJvDBImage;
    imgAluno: TImage;
    procedure FormCreate(Sender: TObject);
    procedure JvDBImage1Click(Sender: TObject);


  private
    procedure CarregarImagem(Field: TField);
  public
    { Public declarations }
  end;

var
  FCadAluno2: TFCadAluno2;

implementation

{$R *.dfm}

uses UDMPaiCadastro;

//procedure TFCadAluno2.DBImage1Click(Sender: TObject);
//begin
//  inherited;
//    if OpenPictureDialog.Execute then
//     DBIMAGE1.Picture.LoadFromFile(OpenPictureDialog.FileName);
//     JvDBImage1.Picture.LoadFromFile(OpenPictureDialog.FileName);
//end;




procedure TFCadAluno2.CarregarImagem(Field: TField);
var
  MS: TMemoryStream;
begin
  try
    MS := TMemoryStream.Create;
    MS.Clear;

    TBlobField(Field).SaveToStream(MS);

    MS.Position := 0;

    imgAluno.Picture.Bitmap.LoadFromStream(MS);
  finally
    MS.Free;
  end;

end;

procedure TFCadAluno2.FormCreate(Sender: TObject);
begin
  DMPaiCadastro := TDMCadAluno2.Create(self);
  inherited;
  TDMCadAluno2(DMPaiCadastro).CarregarImagem := CarregarImagem;
end;

procedure TFCadAluno2.JvDBImage1Click(Sender: TObject);
var
  MS: TMemoryStream;
  IMG: TPicture;
  BMP: TBitmap;
  Dir: String;
begin
  inherited;
    if OpenPictureDialog.Execute then
    begin
     // JvDBImage1.Picture.Bitmap.LoadFromFile(OpenPictureDialog.FileName);


     // imgAluno.Picture.LoadFromFile(OpenPictureDialog.FileName);

      try
        MS := TMemoryStream.Create;
        IMG := TPicture.Create;
        BMP := TBitmap.Create;

        IMG.LoadFromFile(OpenPictureDialog.FileName);
        imgAluno.Picture.LoadFromFile(OpenPictureDialog.FileName);

        BMP.Canvas.Draw(0, 0, IMG.Graphic);

        Dir := ExtractFilePath(ParamStr(0)) + '/temp.bmp';
        BMP.Canvas.Refresh;
        BMP.SaveToFile(Dir);
        //
        TBlobField(DS.DataSet.FieldByName('IMAGEM_ALUNO')).LoadFromFile(Dir);
      finally
        MS.Free;
        IMG.Free;
        BMP.Free;
      end;
    end;
end;

end.

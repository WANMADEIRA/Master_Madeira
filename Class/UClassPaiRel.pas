unit UClassPaiRel;

interface

uses
  System.Classes, frxClass, Datasnap.DBClient;

type

TClassPaiRel = class(TPersistent)



public
 constructor create; virtual;
 destructor Destroy;
 function RetornarCDS(Indice: Integer): TClientDataSet;
 procedure Processar(); virtual; abstract;
 procedure MostrarRelatorio();

private
  FfrxReport: Tfrxreport;
  FListadeCDS: array of TClientDataSet;


protected
 FModeloRel: String;
 procedure RegistraCDS(Nome: String; CDS: TCLientDataSet);

end;
implementation

uses
  System.SysUtils, frxDBSet;

{ TClassPaiRel }

constructor TClassPaiRel.create;
begin
  FfrxReport:= TfrxReport.Create(nil);
end;

destructor TClassPaiRel.Destroy;
var
  I: Integer;
begin
  FreeandNil(Ffrxreport);

  for I := Low(FListadeCDS) to High(FListadeCDS) do
   begin
     FreeAndNil(FListadeCDS[I]);
   end;


end;



procedure TClassPaiRel.MostrarRelatorio;
begin
 Ffrxreport.loadFromfILE(FModeloRel);
 Ffrxreport.ShowReport();
end;

procedure TClassPaiRel.RegistraCDS(Nome: String; CDS: TCLientDataSet);
Var
  frxTemp: TfrxDBDataset;
begin
  SetLength(FListadeCDS, Length(FListadeCDS)+1);
  FListadeCDS[high(FListadeCDS)]:= CDS;

  frxTemp:= TfrxDBDataset.Create(nil);
  frxTemp.UserName:= Nome;
  frxTemp.DataSet:= CDS;

  Ffrxreport.DataSets.Add(frxTemp);
end;

function TClassPaiRel.RetornarCDS(Indice: Integer): TClientDataSet;
begin
 Result:= nil;

 if Indice < Length (FListadeCDS) then
  Result:= FListadeCDS[Indice];
end;

end.


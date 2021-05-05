unit UClassPaiRel;

interface

uses
  System.Classes, frxClass, Datasnap.DBClient, frxDBSet;

type
 TRetornoRel = record
   CDS: TClientDataSet;
   FrxDbDataSet: TFrxDbdataSet;
 end;


type

 TClassPaiRel = class(TPersistent)



public
 constructor create; virtual;
 destructor Destroy; override;
 function RetornarCDS(Indice: Integer): TClientDataSet;
 procedure Processar(); virtual; abstract;
 procedure MostrarRelatorio();

private
  FfrxReport: Tfrxreport;
  //FRetornoRel: TRetornoRel;
  FListadeCDS: array of TRetornoRel;


protected
 FModeloRel: String;
 procedure RegistraCDS(Nome: String; CDS: TCLientDataSet);

end;
implementation

uses
  System.SysUtils;

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
     FreeAndNil(FListadeCDS[I].CDS);
     FreeAndNil(FListadeCDS[I].FrxDbDataSet);
   end;

   SetLength(FListadeCDS,0);

   Inherited;

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

  frxTemp:= TfrxDBDataset.Create(nil);
  frxTemp.UserName:= Nome;
  frxTemp.DataSet:= CDS;

  FListadeCDS[high(FListadeCDS)].CDS:= CDS;
  FListadeCDS[High(FListadeCDS)].FrxDbDataSet:= frxTemp;


  Ffrxreport.DataSets.Add(FListadeCDS[High(FListadeCDS)].FrxDbDataSet);
end;

function TClassPaiRel.RetornarCDS(Indice: Integer): TClientDataSet;
begin
 Result:= nil;

 if Indice < Length (FListadeCDS) then
  Result:= FListadeCDS[Indice].CDS;
end;

end.


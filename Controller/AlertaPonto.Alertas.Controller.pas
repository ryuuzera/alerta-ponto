unit AlertaPonto.Alertas.Controller;

interface

uses
  Vcl.Dialogs, System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,Winapi.Windows, MmSystem,
  Vcl.StdCtrls ;

type
  TAlerta = Class
    Private
    class procedure PreencheDatas(aDataSet: TClientDataSet);
    Public
    class procedure Alerta(aButton: TButton);
  End;

  procedure CriaCamposDataSet(aDataSet: TClientDataSet);

implementation

{ TAlerta }

class procedure TAlerta.Alerta(aButton: TButton);
{ND_NODEFAULT Or SND_ASYNC Or SND_LOOP}
begin
  if aButton.Name = 'BT_INICIA' then
    sndPlaySound(PChar(ExtractFilePath(ParamStr(0))+'\Alarm.wav'), SND_ASYNC);
  if aButton.Name = 'BT_PAUSE' then
    sndPlaySound(nil, 0);
end;

procedure CriaCamposDataSet(aDataSet: TClientDataSet);
var
  strField: TStringField;
  timeField: TTimeField;
  intField: TIntegerField;
begin
  aDataSet.FieldDefs.Clear;
  aDataSet.FieldDefs.Add('ID', ftInteger);
  aDataSet.FieldDefs.Add('Dia', ftString, 10);
  aDataSet.FieldDefs.Add('Entrada', ftTime);
  aDataSet.FieldDefs.Add('Almoco', ftTime);
  aDataSet.FieldDefs.Add('Retorno', ftTime);
  aDataSet.FieldDefs.Add('Saida', ftTime);

  intField := TIntegerField.Create(nil);
  with intField do
  begin
    FieldName := 'ID';
    DisplayLabel := 'ID';
    DataSet := aDataSet;
  end;
  strField := TStringField.Create(nil);
  with strField do
  begin
    FieldName := 'Dia';
    DisplayLabel := 'Dia';
    Size := 10;
    DataSet := aDataSet;
  end;
  timeField := TTimeField.Create(nil);
  with timeField do
  begin
    FieldName := 'Entrada';
    DisplayLabel := 'Entrada';
    DataSet := aDataSet;
  end;
  timeField := TTimeField.Create(nil);
  with timeField do
  begin
    FieldName := 'Almoco';
    DisplayLabel := 'Almoço';
    DataSet := aDataSet;
  end;
  timeField := TTimeField.Create(nil);
  with timeField do
  begin
    FieldName := 'Retorno';
    DisplayLabel := 'Retorno';
    DataSet := aDataSet;
  end;
  timeField := TTimeField.Create(nil);
  with timeField do
  begin
    FieldName := 'Saida';
    DisplayLabel := 'Saída';
    DataSet := aDataSet;
  end;

  aDataSet.CreateDataSet;
  TAlerta.PreencheDatas(aDataSet);
end;

class procedure TAlerta.PreencheDatas(aDataSet: TClientDataSet);
var
  i: integer;

  procedure PreencheCampo(aCampo: string; aValor: String;aDataSet: TClientDataSet); overload;
  begin
    aDataSet.FieldByName(aCampo).AsString := aValor;
  end;

  procedure PreencheCampo(aCampo: string; aValor: integer;aDataSet: TClientDataSet); overload;
  begin
    aDataSet.FieldByName(aCampo).AsInteger := aValor;
  end;

begin
  for i := 0 to 5 do
  begin
    aDataSet.Append;
    PreencheCampo('ID', i+1, aDataSet);
    case i of
      0:
      PreencheCampo('Dia', 'Segunda', aDataSet);
      1:
      PreencheCampo('Dia', 'Terca', aDataSet);
      2:
      PreencheCampo('Dia', 'Quarta', aDataSet);
      3:
      PreencheCampo('Dia', 'Quinta', aDataSet);
      4:
      PreencheCampo('Dia', 'Sexta', aDataSet);
      5:
      PreencheCampo('Dia', 'Sabado', aDataSet);
    end;
    aDataSet.Next;
  end;
  aDataSet.Open;
end;

end.

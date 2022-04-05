unit AlertaPonto.Alertas.Controller;

interface

uses
  Vcl.Dialogs, System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,Winapi.Windows, MmSystem,
  Vcl.StdCtrls, IniFiles, DateUtils;

type
  TAlerta = Class
    Private
      class procedure PreencheDatas(aDataSet: TClientDataSet);
      function GetIniPath: String;
      function GetExePath: String;
    Public
      FInipath: String;
      FCaminhoExe: String;
      procedure GravarConfig(aNome: String; CDS: TClientDataSet);
      procedure CarregaConfig;
      constructor Create; reintroduce;
      class procedure Alerta(aButton: TButton);
      property IniPath : String read GetIniPath write FInipath;
      property CaminhoExe : String read GetExePath write FCaminhoExe;

  End;

  procedure CriaCamposDataSet(aDataSet: TClientDataSet);

implementation

uses
  AlertaPonto.Alertas.Model, Vcl.Forms, Vcl.ComCtrls, Vcl.Mask,
  AlertaPonto.Principal.View;

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

procedure TAlerta.CarregaConfig;
var
  Arq: TIniFile;

    function CarregaCDS(CDS: TClientDataSet): boolean;
    var
      i: Integer;
    begin
      Result := False;
      CDS.First;
      try
        for i := 0 to Pred(CDS.RecordCount) do
        begin
          CDS.Edit;
          case CDS.FieldByName('ID').AsInteger of
            1:
            begin
              CDS.FieldByName('Entrada').AsString := Arq.ReadString('Segunda', 'Entrada', '');
              CDS.FieldByName('Almoco').AsString  := Arq.ReadString('Segunda', 'Almoco','');
              CDS.FieldByName('Retorno').AsString := Arq.ReadString('Segunda', 'Retorno','');
              CDS.FieldByName('Saida').AsString   := Arq.ReadString('Segunda', 'Saida','');
            end;
            2:
             begin
              CDS.FieldByName('Entrada').AsString := Arq.ReadString('Terca', 'Entrada', '');
              CDS.FieldByName('Almoco').AsString  := Arq.ReadString('Terca', 'Almoco','');
              CDS.FieldByName('Retorno').AsString := Arq.ReadString('Terca', 'Retorno','');
              CDS.FieldByName('Saida').AsString   := Arq.ReadString('Terca', 'Saida','');
            end;
            3:
             begin
              CDS.FieldByName('Entrada').AsString := Arq.ReadString('Quarta', 'Entrada', '');
              CDS.FieldByName('Almoco').AsString  := Arq.ReadString('Quarta', 'Almoco','');
              CDS.FieldByName('Retorno').AsString := Arq.ReadString('Quarta', 'Retorno','');
              CDS.FieldByName('Saida').AsString   := Arq.ReadString('Quarta', 'Saida','');
            end;
            4:
             begin
              CDS.FieldByName('Entrada').AsString := Arq.ReadString('Quinta', 'Entrada', '');
              CDS.FieldByName('Almoco').AsString  := Arq.ReadString('Quinta', 'Almoco','');
              CDS.FieldByName('Retorno').AsString := Arq.ReadString('Quinta', 'Retorno','');
              CDS.FieldByName('Saida').AsString   := Arq.ReadString('Quinta', 'Saida','');
            end;
            5:
             begin
              CDS.FieldByName('Entrada').AsString := Arq.ReadString('Sexta', 'Entrada', '');
              CDS.FieldByName('Almoco').AsString  := Arq.ReadString('Sexta', 'Almoco','');
              CDS.FieldByName('Retorno').AsString := Arq.ReadString('Sexta', 'Retorno','');
              CDS.FieldByName('Saida').AsString   := Arq.ReadString('Sexta', 'Saida','');
            end;
            6:
             begin
              CDS.FieldByName('Entrada').AsString := Arq.ReadString('Sabado', 'Entrada', '');
              CDS.FieldByName('Almoco').AsString  := Arq.ReadString('Sabado', 'Almoco','');
              CDS.FieldByName('Retorno').AsString := Arq.ReadString('Sabado', 'Retorno','');
              CDS.FieldByName('Saida').AsString   := Arq.ReadString('Sabado', 'Saida','');
            end;
          end;
          CDS.Next;
        end;
      finally
      end;
    end;

    function TodosIguais(CDS: TClientDataSet): Boolean;
    Var
      Dias: TArray<String>;
    begin
      Result := False;
      SetLength(Dias,6);
      CDS.First;
      while not CDS.Eof do
      begin
        case CDS.FieldByName('ID').AsInteger of
          1:
          begin
            Dias[0] :=
            CDS.FieldByName('Entrada').AsString +
            CDS.FieldByName('Almoco').AsString +
            CDS.FieldByName('Retorno').AsString +
            CDS.FieldByName('Saida').AsString;
          end;
          2:
          begin
            Dias[1] :=
            CDS.FieldByName('Entrada').AsString +
            CDS.FieldByName('Almoco').AsString +
            CDS.FieldByName('Retorno').AsString +
            CDS.FieldByName('Saida').AsString;
          end;
          3:
          begin
            Dias[2] :=
            CDS.FieldByName('Entrada').AsString +
            CDS.FieldByName('Almoco').AsString +
            CDS.FieldByName('Retorno').AsString +
            CDS.FieldByName('Saida').AsString;
          end;
          4:
          begin
            Dias[3] :=
            CDS.FieldByName('Entrada').AsString +
            CDS.FieldByName('Almoco').AsString +
            CDS.FieldByName('Retorno').AsString +
            CDS.FieldByName('Saida').AsString;
          end;
          5:
          begin
            Dias[4] :=
            CDS.FieldByName('Entrada').AsString +
            CDS.FieldByName('Almoco').AsString +
            CDS.FieldByName('Retorno').AsString +
            CDS.FieldByName('Saida').AsString;
          end;
          6:
          begin
            Dias[5] :=
            CDS.FieldByName('Entrada').AsString +
            CDS.FieldByName('Almoco').AsString +
            CDS.FieldByName('Retorno').AsString +
            CDS.FieldByName('Saida').AsString;
          end;
        end;
        CDS.Next;
      end;
      if (Dias[0] = Dias[1]) and
         (Dias[0] = Dias[2]) and
         (Dias[0] = Dias[3]) and
         (Dias[0] = Dias[4]) and
         (Dias[0] = Dias[5]) then
        Result := True;
    end;

    procedure CarregaEdits(aForm: TForm);
    var
      i, k: integer;
      FEdit: TMaskEdit;
    const
      NomesED: TArray<String> = ['Entrada','Almoco','Retorno','Saida'];
    begin
      for i := 0 to Pred(aForm.ComponentCount) do
      begin
        if aForm.Components[i].ClassName = 'TTabSheet' then
        begin
          if (TTabSheet(aForm.Components[i]).Name = TComponentName('tsTodos')) and
          (TodosIguais(dmAlertas.cdsAlertas)) then
          for k := 0 to 3 do
          begin
            FEdit := aForm.FindComponent('edTD'+NomesED[k]) as TMaskEdit;
            case k of
              0: FEdit.Text := Arq.ReadString('Segunda', NomesED[0], '');
              1: FEdit.Text := Arq.ReadString('Segunda', NomesED[1], '');
              2: FEdit.Text := Arq.ReadString('Segunda', NomesED[2], '');
              3: FEdit.Text := Arq.ReadString('Segunda', NomesED[3], '');
            end;
          end
          else
          begin
            FEdit := aForm.FindComponent('edTD'+NomesED[k]) as TMaskEdit;
            case k of
              0: FEdit.Text := '';
              1: FEdit.Text := '';
              2: FEdit.Text := '';
              3: FEdit.Text := '';
            end;
          end;
          if TTabSheet(aForm.Components[i]).Name = TComponentName('tsSegunda') then
          for k := 0 to 3 do
          begin
            FEdit := aForm.FindComponent('edSG'+NomesED[k]) as TMaskEdit;
            case k of
              0: FEdit.Text := Arq.ReadString('Segunda', NomesED[0], '');
              1: FEdit.Text := Arq.ReadString('Segunda', NomesED[1], '');
              2: FEdit.Text := Arq.ReadString('Segunda', NomesED[2], '');
              3: FEdit.Text := Arq.ReadString('Segunda', NomesED[3], '');
            end;
          end;
          if TTabSheet(aForm.Components[i]).Name = TComponentName('tsTerca') then
          for k := 0 to 3 do
          begin
            FEdit := aForm.FindComponent('edTC'+NomesED[k]) as TMaskEdit;
            case k of
              0: FEdit.Text := Arq.ReadString('Terca', NomesED[0], '');
              1: FEdit.Text := Arq.ReadString('Terca', NomesED[1], '');
              2: FEdit.Text := Arq.ReadString('Terca', NomesED[2], '');
              3: FEdit.Text := Arq.ReadString('Terca', NomesED[3], '');
            end;
          end;
          if TTabSheet(aForm.Components[i]).Name = TComponentName('tsQuarta') then
          for k := 0 to 3 do
          begin
            FEdit := aForm.FindComponent('edQT'+NomesED[k]) as TMaskEdit;
             case k of
              0: FEdit.Text := Arq.ReadString('Quarta', NomesED[0], '');
              1: FEdit.Text := Arq.ReadString('Quarta', NomesED[1], '');
              2: FEdit.Text := Arq.ReadString('Quarta', NomesED[2], '');
              3: FEdit.Text := Arq.ReadString('Quarta', NomesED[3], '');
            end;
          end;
          if TTabSheet(aForm.Components[i]).Name = TComponentName('tsQuinta') then
          for k := 0 to 3 do
          begin
            FEdit := aForm.FindComponent('edQN'+NomesED[k]) as TMaskEdit;
             case k of
              0: FEdit.Text := Arq.ReadString('Quinta', NomesED[0], '');
              1: FEdit.Text := Arq.ReadString('Quinta', NomesED[1], '');
              2: FEdit.Text := Arq.ReadString('Quinta', NomesED[2], '');
              3: FEdit.Text := Arq.ReadString('Quinta', NomesED[3], '');
            end;
          end;
          if TTabSheet(aForm.Components[i]).Name = TComponentName('tsSexta') then
          for k := 0 to 3 do
          begin
            FEdit := aForm.FindComponent('edSX'+NomesED[k]) as TMaskEdit;
             case k of
              0: FEdit.Text := Arq.ReadString('Sexta', NomesED[0], '');
              1: FEdit.Text := Arq.ReadString('Sexta', NomesED[1], '');
              2: FEdit.Text := Arq.ReadString('Sexta', NomesED[2], '');
              3: FEdit.Text := Arq.ReadString('Sexta', NomesED[3], '');
            end;
          end;
          if TTabSheet(aForm.Components[i]).Name = TComponentName('tsSabado') then
          for k := 0 to 3 do
          begin
            FEdit := aForm.FindComponent('edSB'+NomesED[k]) as TMaskEdit;
             case k of
              0: FEdit.Text := Arq.ReadString('Sabado', NomesED[0], '');
              1: FEdit.Text := Arq.ReadString('Sabado', NomesED[1], '');
              2: FEdit.Text := Arq.ReadString('Sabado', NomesED[2], '');
              3: FEdit.Text := Arq.ReadString('Sabado', NomesED[3], '');
            end;
          end;
        end;
      end;
    end;

begin
  Arq := TIniFile.Create(IniPath+'Conf.ini');
  try
    try
      CarregaCDS(dmAlertas.cdsAlertas);
      CarregaEdits(frmPrincipal);
    except
      // não carrega
    end;
  finally
    Arq.Free;
  end;
end;

constructor TAlerta.Create;
begin
  CaminhoExe := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)));
  IniPath := CaminhoExe;
end;

function TAlerta.GetExePath: String;
begin
  Result := FCaminhoExe;
end;

function TAlerta.GetIniPath: String;
begin
  Result := FIniPath;
end;

procedure TAlerta.GravarConfig(aNome: String; CDS: TClientDataSet);
var
  Arq: TIniFile;
  i: Integer;

begin
  Arq := TIniFile.Create(GetIniPath + aNome);
  try
    try
      CDS.First;
      for i := 0 to Pred(CDS.RecordCount) do
      begin
        case CDS.FieldByName('ID').AsInteger of
          1:
          begin
            Arq.WriteTime('Segunda', 'Entrada', CDS.FieldByName('Entrada').AsDateTime);
            Arq.WriteTime('Segunda', 'Almoco', CDS.FieldByName('Almoco').AsDateTime);
            Arq.WriteTime('Segunda', 'Retorno', CDS.FieldByName('Retorno').AsDateTime);
            Arq.WriteTime('Segunda', 'Saida', CDS.FieldByName('Saida').AsDateTime);
          end;
          2:
           begin
            Arq.WriteTime('Terca', 'Entrada', CDS.FieldByName('Entrada').AsDateTime);
            Arq.WriteTime('Terca', 'Almoco', CDS.FieldByName('Almoco').AsDateTime);
            Arq.WriteTime('Terca', 'Retorno', CDS.FieldByName('Retorno').AsDateTime);
            Arq.WriteTime('Terca', 'Saida', CDS.FieldByName('Saida').AsDateTime);
          end;
          3:
           begin
            Arq.WriteTime('Quarta', 'Entrada', CDS.FieldByName('Entrada').AsDateTime);
            Arq.WriteTime('Quarta', 'Almoco', CDS.FieldByName('Almoco').AsDateTime);
            Arq.WriteTime('Quarta', 'Retorno', CDS.FieldByName('Retorno').AsDateTime);
            Arq.WriteTime('Quarta', 'Saida', CDS.FieldByName('Saida').AsDateTime);
          end;
          4:
           begin
            Arq.WriteTime('Quinta', 'Entrada', CDS.FieldByName('Entrada').AsDateTime);
            Arq.WriteTime('Quinta', 'Almoco', CDS.FieldByName('Almoco').AsDateTime);
            Arq.WriteTime('Quinta', 'Retorno', CDS.FieldByName('Retorno').AsDateTime);
            Arq.WriteTime('Quinta', 'Saida', CDS.FieldByName('Saida').AsDateTime);
          end;
          5:
           begin
            Arq.WriteTime('Sexta', 'Entrada', CDS.FieldByName('Entrada').AsDateTime);
            Arq.WriteTime('Sexta', 'Almoco', CDS.FieldByName('Almoco').AsDateTime);
            Arq.WriteTime('Sexta', 'Retorno', CDS.FieldByName('Retorno').AsDateTime);
            Arq.WriteTime('Sexta', 'Saida', CDS.FieldByName('Saida').AsDateTime);
          end;
          6:
           begin
            Arq.WriteTime('Sabado', 'Entrada', CDS.FieldByName('Entrada').AsDateTime);
            Arq.WriteTime('Sabado', 'Almoco', CDS.FieldByName('Almoco').AsDateTime);
            Arq.WriteTime('Sabado', 'Retorno', CDS.FieldByName('Retorno').AsDateTime);
            Arq.WriteTime('Sabado', 'Saida', CDS.FieldByName('Saida').AsDateTime);
          end;
        end;
        CDS.Next;
      end;
    except
      on e:exception do raise Exception.Create('Erro: ' + e.Message);
    end;
  finally
    Arq.Free;
  end;
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

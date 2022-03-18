unit AlertaPonto.Principal.Controller;

interface

uses
  Classes, Windows, Messages, SysUtils, Graphics,
  Controls, Forms,Dialogs, ComCtrls, WinXCtrls,ExtCtrls, Data.DB, Datasnap.DBClient,
  Vcl.Mask;

  procedure EscondeTabs(aPageControl: TPageControl);
  procedure NavegaMenus(aPageControl: TPageControl; aPagina: Integer); overload;
  procedure NavegaMenus(aPageControl: TPageControl; aPagina: TTabSheet); overload;
  procedure AtribuiEventosMouse(aForm: TForm);
  procedure AtribuiEventosClick(aForm: TForm);
  procedure GravaHorariosTodos(aDataSet: TClientDataSet; sEntrada, sAlmoco, sSaida, sRetorno: String);
  procedure GravaHorario(aDia: Integer;aDataSet: TClientDataSet; sEntrada, sAlmoco, sSaida, sRetorno: String);
  procedure ValidaCamposVazios(aForm: TForm; aTab: TTabSheet);
  procedure GetHorario(aEdit: TMaskEdit);
  procedure OnClickBitBtn(aForm: TForm;Sender: TObject);
  procedure ControlaSplitView(aSplitView: TSplitView);

implementation

uses AlertaPonto.Principal.View, AlertaPonto.Alertas.Controller,
  AlertaPonto.Alertas.Model, AlertaPonto.Mensagens.Controller,
  AlertaPonto.Funcs.Controller, Vcl.Buttons, AlertaPonto.TimePicker.View;

procedure OnClickBitBtn(aForm: TForm; Sender: TObject);
var
  Component: TComponent;
  S: String;
begin
  Component := nil;
  if Sender.ClassName = 'TBitBtn' then
  begin
    S := TBitbtn(Sender).Name;
    S := StringReplace(S,'bt','ed', [rfReplaceAll]);
    Component := aForm.FindComponent(S);
    GetHorario(TMaskEdit(Component));
  end;
end;
procedure GetHorario(aEdit: TMaskEdit);
begin
  frmTimePicker := TfrmTimePicker.Create;
  try
    frmTimePicker.Hide;
    if frmTimePicker.ShowModal = mrOK then
      aEdit.Text := frmTimePicker.Time;
  finally
    frmTimePicker.Free;
  end;
end;
procedure EscondeTabs(aPageControl: TPageControl);
var
  i: Integer;
begin
  for i := 0 to Pred(aPageControl.PageCount) do
  begin
    aPageControl.Pages[i].TabVisible := False;
  end;
  aPageControl.ActivePageIndex := 0;
end;

procedure ControlaSplitView(aSplitView: TSplitView);
begin
  aSplitView.Opened := not aSplitView.Opened;
end;

procedure NavegaMenus(aPageControl: TPageControl;
  aPagina: TTabSheet);
begin
  aPageControl.ActivePage := aPagina;
end;

procedure NavegaMenus(aPageControl: TPageControl;
  aPagina: Integer);
begin
  aPageControl.ActivePage := aPageControl.Pages[aPagina];
end;

{**************************************************************
| Tag 25 padr�o para TPanel que armazena os eventos do mouse. |
| Tag 10 padr�o para TPanel que ser� bot�o.                   |
| Procedimento Verifica Todos os Paineis que ser�o tratados   |
| como bot�o e atribui dinamicamente o efeito de troca de cor |
| ao passar o mouse por ele.                                  |
**************************************************************}
procedure AtribuiEventosMouse(aForm: TForm);
var
  i, n, index: integer;
begin
  for n := 0 to Pred(aForm.ComponentCount) do
  begin
     if (aForm.Components[n].ClassName = 'TPanel') and (aForm.Components[n].Tag = 25) then
      index := n;
  end;
  for i := 0 to Pred(aForm.ComponentCount) do
  begin
    if (aForm.Components[i].ClassName = 'TPanel') and (aForm.Components[i].Tag = 10) then
    begin
      TPanel(aForm.Components[i]).OnMouseMove  := TPanel(aForm.Components[index]).OnMouseMove;
      TPanel(aForm.Components[i]).OnMouseLeave :=  TPanel(aForm.Components[index]).OnMouseLeave;
    end;
  end;
end;

procedure GravaHorario(aDia: Integer; aDataSet: TClientDataSet; sEntrada, sAlmoco, sSaida, sRetorno: String);
var
  i: Integer;
begin
  aDataSet.Open;
  aDataSet.First;
  for i := 0 to aDataSet.RecordCount -1 do
  begin
    aDataSet.Edit;
    if aDataSet.FieldByName('ID').AsInteger = aDia then
    begin
      aDataSet.FieldByName('Entrada').AsDateTime := StrToTime(sEntrada);
      aDataSet.FieldByName('Almoco').AsDateTime := StrToTime(sAlmoco);
      aDataSet.FieldByName('Saida').AsDateTime := StrToTime(sSaida);
      aDataSet.FieldByName('Retorno').AsDateTime := StrToTime(sRetorno);
    end;
  end;
  Mensagem('Hor�rios Gravados Com Sucesso!', mtInformation, [mbOK]);
end;


procedure GravaHorariosTodos(aDataSet: TClientDataSet; sEntrada, sAlmoco, sSaida, sRetorno: String);
begin
  aDataSet.Open;
  aDataSet.First;
  while not aDataSet.Eof do
  begin
    aDataSet.Edit;
    aDataSet.FieldByName('Entrada').AsDateTime := StrToTime(sEntrada);
    aDataSet.FieldByName('Almoco').AsDateTime := StrToTime(sAlmoco);
    aDataSet.FieldByName('Saida').AsDateTime := StrToTime(sSaida);
    aDataSet.FieldByName('Retorno').AsDateTime := StrToTime(sRetorno);
    aDataSet.Next;
  end;
  Mensagem('Hor�rios Gravados Com Sucesso!', mtInformation, [mbOK]);
end;

procedure ValidaCamposVazios(aForm: TForm; aTab: TTabSheet);
var
  i: Integer;
  AComponent: TComponent;
  AEdit: TMaskEdit;
  NomesED : Array of String;

    procedure PreencheArray;
    begin
      SetLength(NomesED, 3);
      NomesED := [
      'Entrada',
      'Almoco',
      'Retorno',
      'Saida'
      ]
    end;

    function ValidaHora(const S: string): boolean;
    begin
      try
        StrToTime(S);
        Result := true;
      except
        Result := false;
      end;
    end;

    procedure CriaException(AEdit: TMaskEdit);
    begin
      if LimpaMascara(AEdit.Text) = '' then
      begin
        AEdit.SetFocus;
        raise Exception.Create('Preencha todos os hor�rios!');
      end;
      if not ValidaHora(AEdit.Text) then
      begin
        AEdit.SetFocus;
        raise Exception.Create('Hor�rio Invalido!');
      end;
    end;

begin
  PreencheArray;

  if aTab.Name = TComponentName('tsTodos') then
  for i := 0 to 3 do
  begin
    AEdit := aForm.FindComponent('edTD'+NomesED[i]) as TMaskEdit;
    CriaException(AEdit);
  end;
  if aTab.Name = TComponentName('tsSegunda') then
  for i := 0 to 3 do
  begin
    AEdit := aForm.FindComponent('edSG'+NomesED[i]) as TMaskEdit;
    CriaException(AEdit);
  end;
  if aTab.Name = TComponentName('tsTerca') then
  for i := 0 to 3 do
  begin
    AEdit := aForm.FindComponent('edTC'+NomesED[i]) as TMaskEdit;
    CriaException(AEdit);
  end;
  if aTab.Name = TComponentName('tsQuarta') then
  for i := 0 to 3 do
  begin
    AEdit := aForm.FindComponent('edQT'+NomesED[i]) as TMaskEdit;
    CriaException(AEdit);
  end;
  if aTab.Name = TComponentName('tsQuinta') then
  for i := 0 to 3 do
  begin
    AEdit := aForm.FindComponent('edQN'+NomesED[i]) as TMaskEdit;
    CriaException(AEdit);
  end;
  if aTab.Name = TComponentName('tsSexta') then
  for i := 0 to 3 do
  begin
    AEdit := aForm.FindComponent('edSX'+NomesED[i]) as TMaskEdit;
    CriaException(AEdit);
  end;
  if aTab.Name = TComponentName('tsSabado') then
  for i := 0 to 3 do
  begin
    AEdit := aForm.FindComponent('edSB'+NomesED[i]) as TMaskEdit;
    CriaException(AEdit);
  end;

end;

procedure AtribuiEventosClick(aForm: TForm);
var
  i, n, index: Integer;
begin
   for n := 0 to Pred(aForm.ComponentCount) do
  begin
     if (aForm.Components[n].ClassName = 'TPanel') and (aForm.Components[n].Tag = 25) then
      index := n;
  end;
  for i := 0 to Pred(aForm.ComponentCount) do
  begin
    if (aForm.Components[i].ClassName = 'TBitBtn') and (aForm.Components[i].Tag = 10) then
    begin
      TBitBtn(aForm.Components[i]).OnClick := TPanel(aForm.Components[index]).OnClick;
    end;
  end;
end;

end.

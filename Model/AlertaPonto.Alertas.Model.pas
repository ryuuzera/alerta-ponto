unit AlertaPonto.Alertas.Model;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  Vcl.ExtCtrls;

type
  TdmAlertas = class(TDataModule)
    cdsAlertas: TClientDataSet;
    dsAlertas: TDataSource;
    dsProvider: TDataSetProvider;
    AfterCreate: TTimer;
    procedure DataModuleCreate(Sender: TObject);
    procedure AfterCreateTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAlertas: TdmAlertas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AlertaPonto.Alertas.Controller, AlertaPonto.Principal.View;

{$R *.dfm}

procedure TdmAlertas.AfterCreateTimer(Sender: TObject);
var
  Alerta: TAlerta;
begin
  Alerta := TAlerta.Create;
  if Assigned(frmPrincipal) then
  begin
    Alerta.CarregaConfig;
    AfterCreate.Enabled := False;
  end;

end;

procedure TdmAlertas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  CriaCamposDataSet(cdsAlertas);
end;

end.

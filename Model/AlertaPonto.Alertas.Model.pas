unit AlertaPonto.Alertas.Model;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, Datasnap.Provider;

type
  TdmAlertas = class(TDataModule)
    cdsAlertas: TClientDataSet;
    dsAlertas: TDataSource;
    dsProvider: TDataSetProvider;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAlertas: TdmAlertas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AlertaPonto.Alertas.Controller;

{$R *.dfm}

procedure TdmAlertas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  CriaCamposDataSet(cdsAlertas);
end;

end.

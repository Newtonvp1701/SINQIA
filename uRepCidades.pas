unit uRepCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppDesignLayer, raCodMod, ppModule, ppVar, ppBands, ppCtrls, ppPrnabl, ppCache,
  ppDB, ppDBPipe, ppParameter, Vcl.Mask;

type
  TRepCidades = class(TForm)
    pnBotoes: TPanel;
    btnVisualizar: TButton;
    btnImprimir: TButton;
    btnSair: TButton;
    ppRepCidades: TppReport;
    qryCidades: TFDQuery;
    ppParameterList1: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    dsCidades: TDataSource;
    qryCidadescodigo_cidade: TFDAutoIncField;
    qryCidadesnome: TStringField;
    qryCidadesestado: TStringField;
    qryCidadescep_inicial: TIntegerField;
    qryCidadescep_final: TIntegerField;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    raCodeModule1: TraCodeModule;
    raProgramInfo2: TraProgramInfo;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    pnOpcao: TPanel;
    lblSelecionar: TLabel;
    cbEstado: TComboBox;
    GroupBox1: TGroupBox;
    edtCodIni: TLabeledEdit;
    edtCodFin: TLabeledEdit;
    procedure FormShow(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepCidades: TRepCidades;

implementation

{$R *.dfm}

uses uDM;

procedure TRepCidades.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TRepCidades.btnVisualizarClick(Sender: TObject);
begin
  with qryCidades do
  begin
    sql.Clear;
    Connection := dm.dbConn;
    sql.Add('select * from cidades ');

    if (edtCodIni.Text <> '') or (edtCodFin.Text <> '') then
    begin
      sql.Add('where codigo_cidade >=:pCodIni and codigo_cidade <=:pCodFin ');
      ParamByName('pCodIni').AsInteger := StrToInt(edtCodIni.Text);
      ParamByName('pCodFin').AsInteger := StrToInt(edtCodFin.Text);
      Open;
      if not IsEmpty then
      begin
        if (Sender = btnVisualizar) then
        begin
          ppRepCidades.DeviceType := 'Screen';
          ppRepCidades.Print;
        end
        else if (Sender = btnImprimir) then
          ppRepCidades.Print;
      end;
      Exit;
    end;


    if cbEstado.Text = 'Todos' then
    begin
      sql.Add('order by estado, nome ');
      Open;
    end;
    if cbEstado.Text <> 'Todos' then
    begin
      sql.Add('where estado =:pEstado ');
      ParamByName('pEstado').AsString := cbEstado.Text;
      Open;
    end;

    if (Sender = btnVisualizar) then
    begin
      ppRepCidades.DeviceType := 'Screen';
      ppRepCidades.Print;
    end
    else if (Sender = btnImprimir) then
      ppRepCidades.Print;

  end;
end;

procedure TRepCidades.FormShow(Sender: TObject);
var
  qryEstados: TFDQuery;
begin
  qryEstados := TFDQuery.Create(self);
  try
    with qryEstados do
    begin
      Close;
      sql.Clear;
      Connection := dm.dbConn;
      sql.Add('select distinct estado  from cidades order by estado ');
      Open;
      if not IsEmpty then
      begin
        cbEstado.Clear;
        cbEstado.Items.Add('Todos');
        while not eof do
        begin
          cbEstado.Items.Add(FieldByName('estado').AsString);
          Next;
        end;
      end;
    end;
  finally
    FreeAndNil(qryEstados);
  end;
  cbEstado.ItemIndex := 0;
end;

end.

unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Phys.ODBCBase,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client,
  System.IniFiles, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  Tdm = class(TDataModule)
    dbConn: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    qryCadClientes: TFDQuery;
    dsCadClientes: TDataSource;
    qryCadClientesid_cliente: TFDAutoIncField;
    qryCadClientesCGC_CPF_Cliente: TStringField;
    qryCadClientesNome: TStringField;
    qryCadClientesTelefone: TStringField;
    qryCadClientesEndereco: TStringField;
    qryCadClientesBairro: TStringField;
    qryCadClientesComplemento: TStringField;
    qryCadClientesE_mail: TStringField;
    qryCadClientesCodigo_Cidade: TIntegerField;
    qryCadClientesNome_Cidade: TStringField;
    qryCadClientesEstado: TStringField;
    qryCadClientesCep: TStringField;
    qryCadCidades: TFDQuery;
    dsCadCidades: TDataSource;
    qryCadCidadescodigo_cidade: TFDAutoIncField;
    qryCadCidadesnome: TStringField;
    qryCadCidadesestado: TStringField;
    qryCadCidadescep_inicial: TIntegerField;
    qryCadCidadescep_final: TIntegerField;
    qryCadClientesPF_PJ: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
var
  LIniFile : TIniFile;
  LDatabase : string;
  LUser_name: string;
  LPassword : string;
  LServidor : string;
  LPorta    : string;
  LCaminho  : string;
begin
  try
    dbConn.Connected := False;
    LCaminho := ExtractFileDir(ParamStr(0)) + '\Login.Ini';
    LIniFile := TIniFile.Create(LCaminho);
    LDatabase := LIniFile.ReadString('Conexao','Database', LDatabase);
    LServidor := LIniFile.ReadString('Conexao','Server', LServidor);

    LUser_name := 'sa';
    LPassword  := 'N20atl20at';

    dbConn.Params.Values['DriverID']  := 'MSSQL';
    dbConn.Params.Values['Database'] := LDatabase ;
    dbConn.Params.Values['User_name'] := LUser_name;
    dbConn.Params.Values['Password'] := LPassword;
    dbConn.Params.Values['Server'] := LServidor;

    dbConn.Connected := True;

   finally
     FreeAndNil(LIniFile);
   end;

end;

end.

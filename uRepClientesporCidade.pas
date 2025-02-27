unit uRepClientesporCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, QuickRpt, FireDAC.Comp.Client, QRCtrls, Vcl.ExtCtrls;

type
  TrepClientesPorCidades = class(TForm)
    qRepClientesporCidade: TQuickRep;
    QRBand1: TQRBand;
    qrlTitulo: TQRLabel;
    qrlParametros: TQRLabel;
    QRBand2: TQRBand;
    qrData: TQRExpr;
    QRExpr1: TQRExpr;
    qrlPagina: TQRLabel;
    QRBand3: TQRBand;
    qrdbIDCliente: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    qrEndereco: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand4: TQRBand;
    qrlIDCliente: TQRLabel;
    qrlNomeCliente: TQRLabel;
    qrlCodCidade: TQRLabel;
    qrlCidade: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    qryClientes: TFDQuery;
    dsClientes: TDataSource;
    qrGrupo: TQRGroup;
    qryClientesid_cliente: TFDAutoIncField;
    qryClientesCGC_CPF_Cliente: TStringField;
    qryClientesNome: TStringField;
    qryClientesTelefone: TStringField;
    qryClientesEndereco: TStringField;
    qryClientesBairro: TStringField;
    qryClientesComplemento: TStringField;
    qryClientesE_mail: TStringField;
    qryClientesCodigo_Cidade: TIntegerField;
    qryClientesNome_Cidade: TStringField;
    qryClientesEstado: TStringField;
    qryClientesCep: TStringField;
    qryClientesPF_PJ: TStringField;
    QRDBText9: TQRDBText;
    qrlGrupoCidade: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  repClientesPorCidades: TrepClientesPorCidades;

implementation

{$R *.dfm}

end.

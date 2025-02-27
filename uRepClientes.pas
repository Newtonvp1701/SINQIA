unit uRepClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TrepClientes = class(TForm)
    qRepClientes: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    qrData: TQRExpr;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand4: TQRBand;
    qrlIDCliente: TQRLabel;
    qrlNomeCliente: TQRLabel;
    qrlCodCidade: TQRLabel;
    qryClientes: TFDQuery;
    dsClientes: TDataSource;
    QRDBText4: TQRDBText;
    qrlCidade: TQRLabel;
    qrlPagina: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    qrEndereco: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel6: TQRLabel;
    qrsLinha: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    qrlParametros: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  repClientes: TrepClientes;

implementation

{$R *.dfm}

end.

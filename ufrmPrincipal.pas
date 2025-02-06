unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmPrincipal = class(TForm)
    mnuPrincipal: TMainMenu;
    mnuCadastro: TMenuItem;
    mnuCadClientes: TMenuItem;
    mnuCadCidades: TMenuItem;
    mnuRelatorios: TMenuItem;
    mnuRepClientes: TMenuItem;
    mnuRepCidades: TMenuItem;
    mnuSair: TMenuItem;
    StatusBar1: TStatusBar;
    FDQuery1: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure mnuSairClick(Sender: TObject);
    procedure mnuCadClientesClick(Sender: TObject);
    procedure mnuCadCidadesClick(Sender: TObject);
    procedure mnuRepClientesClick(Sender: TObject);
    procedure mnuRepCidadesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure SaveSqlCommand(AQuery: TFDQuery; OutFileName: string = 'SQLTEMP');

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses ufrmCadClientes,
ufrmCadCidades,
ufrmRepClientes,
uRepCidades;

procedure SaveSqlCommand(AQuery: TfdQuery; OutFileName: string = 'SQLTEMP');
var
  _Command: TStrings;
  X: Integer;
begin
  if Assigned(AQuery) then
  begin
    try
      _Command := TStringList.Create;
      _Command.AddStrings(AQuery.SQL);

      for X := 0 to AQuery.Params.Count - 1 do
      begin
        _Command.Text := StringReplace(_Command.Text, ':' + AQuery.Params[X].Name, QuotedStr(AQuery.Params[X].AsString), []);
      end;
      try
        //_Command.SaveToFile(ExtractFilePath(ParamStr(0)) + '\SQLTEMP.SQL');
        _Command.SaveToFile(ExtractFilePath(ParamStr(0)) + OutFileName + '.sql');
      except
      end;
    finally
      FreeAndNil(_Command);
    end;
  end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  Statusbar1.panelS[0].text:=FormatDatetime('DD/MM/YY',DATE);//Para data[code]
  Statusbar1.Panels[1].text:=FormatDatetime('HH:MM:SS',TIME);// para Hora
end;

procedure TfrmPrincipal.mnuCadCidadesClick(Sender: TObject);
begin
  try
  if not Assigned(frmCadCidades) then
    frmCadCidades := TfrmCadCidades.Create(Self);
    frmCadCidades.ShowModal;
  finally
    FreeAndNil(frmCadCidades);
  end;
end;

procedure TfrmPrincipal.mnuCadClientesClick(Sender: TObject);
begin
  try
  if not Assigned(frmCadClientes) then
    frmCadClientes := TfrmCadClientes.Create(Self);
    frmCadClientes.ShowModal;
  finally
    FreeAndNil(frmCadClientes);
  end;
end;

procedure TfrmPrincipal.mnuRepCidadesClick(Sender: TObject);
begin
  try
  if not Assigned(RepCidades) then
    RepCidades := TRepCidades.Create(Self);
    RepCidades.ShowModal;
  finally
    FreeAndNil(RepCidades);
  end;
end;

procedure TfrmPrincipal.mnuRepClientesClick(Sender: TObject);
begin
  try
  if not Assigned(frmRepClientes) then
    frmRepClientes := TfrmRepClientes.Create(Self);
    frmRepClientes.ShowModal;
  finally
    FreeAndNil(frmRepClientes);
  end;
end;

procedure TfrmPrincipal.mnuSairClick(Sender: TObject);
begin
  Close;
end;

end.

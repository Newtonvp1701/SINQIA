unit ufrmCadCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxNavigator, cxDBNavigator;

type
  TfrmCadCidades = class(TForm)
    pnBottom: TPanel;
    btnNovo: TButton;
    btnEditar: TButton;
    btnSalvar: TButton;
    btnExcluir: TButton;
    btnCancelar: TButton;
    btnSair: TButton;
    pnDados: TPanel;
    pnGrid: TPanel;
    dbgCidades: TDBGrid;
    rgPesquisar: TRadioGroup;
    edtPesquisar: TLabeledEdit;
    btnPesquisar: TButton;
    btnListarTodos: TButton;
    btnListarTodosCodigo: TButton;
    dbNavClientes: TcxDBNavigator;
    lblAviso: TLabel;
    GroupBox1: TGroupBox;
    edtCodCidade: TLabeledEdit;
    edtCidade: TLabeledEdit;
    edtEstado: TLabeledEdit;
    edtCepInicial: TLabeledEdit;
    edtCepFinal: TLabeledEdit;
    procedure FormShow(Sender: TObject);
    procedure rgPesquisarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure Pesquisar;
    procedure dbgCidadesCellClick(Column: TColumn);
    procedure btnNovoClick(Sender: TObject);
    procedure btnListarTodosClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure LimparTela;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnListarTodosCodigoClick(Sender: TObject);
    procedure ListarporCodigo;
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure ListaTodos;
  private
    { Private declarations }
  public
    { Public declarations }
    vNovo: Boolean;
    vEditar: Boolean;
  end;

var
  frmCadCidades: TfrmCadCidades;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadCidades.btnNovoClick(Sender: TObject);
begin
  btnSalvar.Enabled := True;
  btnNovo.Enabled := False;
  btnEditar.Enabled := False;
  btnExcluir.Enabled := False;
  btnCancelar.Enabled := True;
  btnPesquisar.Enabled := False;
  btnSair.Enabled := True;
  LimparTela;
  edtCodCidade.Enabled := False;
  edtCidade.SetFocus;
  vNovo:=True;
end;

procedure TfrmCadCidades.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmCadCidades.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadCidades.btnSalvarClick(Sender: TObject);
var
  qryManter : TFDquery;
begin
  qryManter := TFDQuery.Create(Self);
  with qryManter do
  try
    begin
      Close;
      sql.Clear;
      Connection := dm.dbConn;
      if vNovo then
        begin
        sql.Add('exec dbo.usp_ManterCidades 1, null, '+ QuotedStr(Trim(edtCidade.Text)) +', ' + QuotedStr(trim(edtEstado.Text)) + ','+ edtCepInicial.Text + ',' + edtCepFinal.Text + ';');
        Open;
        if not IsEmpty then
        begin
          ShowMessage('Registro Inserido --> ' + Fields[0].AsString );
        end;
      end;
      if vEditar then
        begin
          sql.Add('exec dbo.usp_ManterCidades 2, '+ edtCodCidade.Text +', '+ QuotedStr(Trim(edtCidade.Text)) +', ' + QuotedStr(trim(edtEstado.Text)) + ','+ edtCepInicial.Text + ',' + edtCepFinal.Text + ';');
          Open;
          if not IsEmpty then
          begin
            ShowMessage('Registro Alterado --> ' + Fields[0].AsString );
          end;
        end;
    end;
  finally
    FreeAndNil(qryManter);
  end;
  btnNovo.Enabled := True;
  btnEditar.Enabled := True;
  btnSalvar.Enabled := False;
  btnExcluir.Enabled := True;
  btnCancelar.Enabled := True;

  ListaTodos;

  LimparTela;

end;

procedure TfrmCadCidades.btnCancelarClick(Sender: TObject);
begin
  LimparTela;
  ListaTodos;
  btnNovo.Enabled := True;
  btnEditar.Enabled := True;
  btnSalvar.Enabled := False;
  btnExcluir.Enabled := True;
  btnCancelar.Enabled := True;
end;

procedure TfrmCadCidades.btnEditarClick(Sender: TObject);
begin
  if edtCidade.Text = '' then
  begin
    ShowMessage('Selecione 1 registro para alterar ');
    Exit;
  end;
  vEditar := True;
  btnSalvar.Enabled := True;
  btnNovo.Enabled := False;
  btnExcluir.Enabled := False;
end;

procedure TfrmCadCidades.btnExcluirClick(Sender: TObject);
var
  qryExcluir : TFDquery;
begin

  if edtCidade.Text = '' then
  begin
    ShowMessage('Selecione 1 registro para Excluir ');
    Exit;
  end;

  qryExcluir := TFDQuery.Create(Self);
  with qryExcluir do
  try
    begin
      Close;
      sql.Clear;
      Connection := dm.dbConn;
      sql.Add('exec dbo.usp_ManterCidades 0,'+ edtCodCidade.Text +',null, null, null, null;' );
      Open;
      if not IsEmpty then
      begin
        ShowMessage('Registro Excluído --> ' + Fields[0].AsString );
      end;
    end;
  finally
    FreeAndNil(qryExcluir);
  end;
  ListaTodos;
end;

procedure TfrmCadCidades.btnListarTodosClick(Sender: TObject);
begin
  ListaTodos;
end;

procedure TfrmCadCidades.btnListarTodosCodigoClick(Sender: TObject);
begin
  ListarporCodigo;
end;

procedure TfrmCadCidades.dbgCidadesCellClick(Column: TColumn);
begin
   edtCodCidade.Text   := IntToStr(dbgCidades.Fields[0].Value);
   edtCidade.Text      := dbgCidades.Fields[1].Value;
   edtEstado.Text      := dbgCidades.Fields[2].Value;
   edtCepInicial.Text  := IntToStr(dbgCidades.Fields[3].Value);
   edtCepFinal.Text    := IntToStr(dbgCidades.Fields[4].Value);
end;

procedure TfrmCadCidades.FormShow(Sender: TObject);
begin
  with dm.qryCadCidades do
  begin
    Close;
    sql.Clear;
    Connection :=dm.dbConn;
    sql.Add('select * from dbo.[VW_CIDADES] ');
    sql.Add('order by nome ');
    Open;
    First;
  end;
  vNovo:=False;
  vEditar:= False;
end;

procedure TfrmCadCidades.LimparTela;
begin
  edtCodCidade.Clear;
  edtCidade.Clear;
  edtEstado.Clear;
  edtCepInicial.Clear;
  edtCepFinal.Clear;
  edtCidade.SetFocus;
end;

procedure TfrmCadCidades.ListarporCodigo;
begin
  with dm.qryCadCidades do
  begin
    Close;
    SQL.Clear;
    Connection := dm.dbConn;
    sql.Add('select * from dbo.vw_cidades ');
    sql.Add('order by codigo_cidade ');
    Open;
    First;
  end;
end;

procedure TfrmCadCidades.ListaTodos;
begin
// listar todos por nome
  with dm.qryCadCidades do
  begin
    Close;
    SQL.Clear;
    Connection := dm.dbConn;
    sql.Add('select * from dbo.vw_cidades ');
    sql.Add('order by nome ');
    Open;
    First;
  end;
end;

procedure TfrmCadCidades.Pesquisar;
begin
  with dm.qryCadCidades do
  begin
    Close;
    SQL.Clear;
    Connection := dm.dbConn;
    sql.Add('select * from dbo.vw_cidades ');

    if rgPesquisar.ItemIndex = 0 then  //por codigo
    begin
      sql.Add('where codigo_cidade = ' + trim(edtPesquisar.Text) + '' );
    end;

    if rgPesquisar.ItemIndex = 1 then  //por nome
    begin
      sql.Add('where nome like ''%' + trim(edtPesquisar.Text) + '%'' ');
    end;

    Open;

    if not IsEmpty  then
    begin
      edtCodCidade.Text   := IntToStr(FieldByName('codigo_cidade').AsInteger);
      edtCidade.Text      := FieldByName('nome').AsString;
      edtEstado.Text      := FieldByName('estado').AsString;
      edtCepInicial.Text  := IntToStr(FieldByName('cep_inicial').AsInteger);
      edtCepFinal.Text    := IntToStr(FieldByName('cep_inicial').AsInteger);
    end;

  end;
end;

procedure TfrmCadCidades.rgPesquisarClick(Sender: TObject);
begin
  edtPesquisar.Clear;
  btnPesquisar.Enabled := True;
  case rgPesquisar.ItemIndex of
    0:
    begin
      edtPesquisar.EditLabel.Caption := 'Digite o código da Cidade:';
      edtPesquisar.SetFocus;
    end;
    1:
    begin
      edtPesquisar.EditLabel.Caption := 'Digite o nome da Cidade:';
      edtPesquisar.SetFocus;
    end;
  end;
end;

end.

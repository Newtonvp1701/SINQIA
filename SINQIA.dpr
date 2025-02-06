program SINQIA;

uses
  Vcl.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  uDM in 'uDM.pas' {dm: TDataModule},
  ufrmCadClientes in 'ufrmCadClientes.pas' {frmCadClientes},
  ufrmCadCidades in 'ufrmCadCidades.pas' {frmCadCidades},
  ufrmRepClientes in 'ufrmRepClientes.pas' {frmRepClientes},
  uRepClientes in 'uRepClientes.pas' {repClientes},
  uRepClientesporCidade in 'uRepClientesporCidade.pas' {repClientesPorCidades},
  uRepCidades in 'uRepCidades.pas' {RepCidades};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TRepCidades, RepCidades);
  Application.Run;
end.

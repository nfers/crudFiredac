program crud;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmPrincipal in 'frm\ufrmPrincipal.pas' {frmPrincipal},
  UdmConexao in 'dm\UdmConexao.pas' {dmConexao: TDataModule},
  UBaseDAO in 'dao\UBaseDAO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.

program crud;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmPrincipal in 'frm\ufrmPrincipal.pas' {Form2},
  UdmConexao in 'dm\UdmConexao.pas' {dmConexao: TDataModule},
  UBaseDAO in 'dao\UBaseDAO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.

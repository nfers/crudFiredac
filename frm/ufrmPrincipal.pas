unit ufrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, Data.DB, System.Rtti, FMX.Grid.Style,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, FMX.ScrollBox,
  FMX.Grid;

type
  TfrmPrincipal = class(TForm)
    pnlListaLembretes: TPanel;
    btnConectar: TSpeedButton;
    ds1: TDataSource;
    Grid1: TGrid;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure btnConectarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses UdmConexao, UBaseDAO;

{$R *.fmx}

procedure TfrmPrincipal.btnConectarClick(Sender: TObject);
begin
  dmConexao.con.Open();
  ShowMessageFmt('Conectado ao banco %s', [dmConexao.con.Params.Database]);
end;

end.

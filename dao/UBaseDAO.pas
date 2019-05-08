unit UBaseDAO;

interface

uses FireDAC.Comp.Client, System.SysUtils, Data.DB, FMX.Dialogs, System.Classes,
UdmConexao;

type
  TBaseDAO = Class (TObject)
    private

    protected
      Consulta: TFDQuery;
      constructor Create;
      destructor Destroy;


    public
      function ExecutarComando(ConSql: string): Integer;

  End;

implementation


constructor TBaseDAO.Create;

begin
  inherited Create;
  Consulta                 := TFDQuery.Create(Nil);
  Consulta.Connection      := dmConexao.con;
end;

destructor TBaseDAO.Destroy;
begin
  try
    if Assigned(Consulta) then
      FreeAndNil(Consulta);
  except
    on E: Exception do
      ShowMessage('ocorreu o seguinte erro: ' + E.Message);
  end;
end;

function TBaseDAO.ExecutarComando(ConSql: string): Integer;
begin
  try
    dmConexao.con.StartTransaction;
    Consulta.SQL.Text := ConSql;
    Consulta.ExecSQL;
    Result := Consulta.RowsAffected;
    dmConexao.con.Commit;
  except
    dmConexao.con.Rollback;
    ShowMessage('As Alterações não foram processadas');
  end;
end;

end.

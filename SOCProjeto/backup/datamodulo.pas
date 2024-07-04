unit DataModulo;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, ZConnection, ZDataset, ZAbstractRODataset;

type

  { TDataModuleF }

  TDataModuleF = class(TDataModule)
    qryCadClientesclienteid: TZIntegerField;
    qryCadClientescpf_cnpj_cliente: TZRawStringField;
    qryCadClientesnome_cliente: TZRawStringField;
    qryCadClientestipo_cliente: TZRawStringField;
    qryCategoriacategoriaprodutoid: TZIntegerField;
    qryCategoriads_categoria_produto: TZRawStringField;
    ZConnection1: TZConnection;
    qryGenerica: TZQuery;
    qryCategoria: TZQuery;
    qryCadClientes: TZQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryCadClientesNewRecord(DataSet: TDataSet);
    procedure qryCategoriaNewRecord(DataSet: TDataSet);
    procedure ZConnection1AfterConnect(Sender: TObject);

  private

  public
  function getSequence(const pNomeSequence: String): String;
  end;

var
  DataModuleF: TDataModuleF;

implementation

{$R *.lfm}

{ TDataModuleF }

function TDataModuleF.getSequence(const pNomeSequence: String): String;
begin
     Result := '';
 try
     qryGenerica.close;
     qryGenerica.SQL.Clear;
     qryGenerica.SQL.Add('SELECT NEXTVAL(' + QuotedStr(pNomeSequence) + ') AS CODIGO');
     qryGenerica.Open;
     Result := qryGenerica.FieldByName('CODIGO').AsString;
 finally
   qryGenerica.Close;
 end;
end;


procedure TDataModuleF.DataModuleCreate(Sender: TObject);
begin
  ZConnection1.HostName := 'localhost';
  ZConnection1.DataBase := 'postgres';
  ZConnection1.User     := 'postgres';
  ZConnection1.Password := '1234';
  ZConnection1.Port     := 5432;
  ZConnection1.Protocol := 'postgresql';
  ZConnection1.Connected := True;
end;

procedure TDataModuleF.qryCadClientesNewRecord(DataSet: TDataSet);
begin
   qryCadClientesclienteid.AsInteger:= StrToInt(getSequence('cliente_clienteid'));
end;

procedure TDataModuleF.qryCategoriaNewRecord(DataSet: TDataSet);
begin
  qryCategoriacategoriaprodutoid.AsInteger:= StrToInt(getSequence('categoria_produto_categoriaprodutoid_seq'));
end;

procedure TDataModuleF.ZConnection1AfterConnect(Sender: TObject);
begin

end;

end.


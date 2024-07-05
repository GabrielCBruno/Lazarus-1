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
    qryCadProdutoscategoriaprodutoid: TZIntegerField;
    qryCadProdutosds_produto: TZRawStringField;
    qryCadProdutosdt_cadastro_produto: TZDateTimeField;
    qryCadProdutosobs_produto: TZRawStringField;
    qryCadProdutosprodutoid: TZIntegerField;
    qryCadProdutosstatus_produto: TZRawStringField;
    qryCadProdutosvl_venda_produto: TZBCDField;
    qryCadUsuariosid: TZIntegerField;
    qryCadUsuariosnome_completo: TZRawStringField;
    qryCadUsuariossenha: TZRawStringField;
    qryCadUsuariosusuario: TZRawStringField;
    qryCategoriacategoriaprodutoid: TZIntegerField;
    qryCategoriads_categoria_produto: TZRawStringField;
    qryOrcamentoclienteid: TZIntegerField;
    qryOrcamentodt_orcamento: TZDateTimeField;
    qryOrcamentodt_validade_orcamento: TZDateTimeField;
    qryOrcamentoItensorcamentoid: TZIntegerField;
    qryOrcamentoItensorcamentoitemid: TZIntegerField;
    qryOrcamentoItensprodutodesc: TZRawStringField;
    qryOrcamentoItensprodutoid: TZIntegerField;
    qryOrcamentoItensqt_produto: TZBCDField;
    qryOrcamentoItensvl_total: TZBCDField;
    qryOrcamentoItensvl_unitario: TZBCDField;
    qryOrcamentoorcamentoid: TZIntegerField;
    qryOrcamentovl_total_orcamento: TZBCDField;
    ZConnection1: TZConnection;
    qryGenerica: TZQuery;
    qryCategoria: TZQuery;
    qryCadClientes: TZQuery;
    qryCadProdutos: TZQuery;
    qryCadUsuarios: TZQuery;
    qryOrcamento: TZQuery;
    qryOrcamentoItens: TZQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryCadClientesNewRecord(DataSet: TDataSet);
    procedure qryCadProdutosNewRecord(DataSet: TDataSet);
    procedure qryCadUsuariosNewRecord(DataSet: TDataSet);

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

procedure TDataModuleF.qryCadProdutosNewRecord(DataSet: TDataSet);
begin
   qryCadProdutosprodutoid.AsInteger:= StrToInt(getSequence('produto_produtoid'));
end;

procedure TDataModuleF.qryCadUsuariosNewRecord(DataSet: TDataSet);
begin
    qryCadUsuariosid.AsInteger:= StrToInt(getSequence('usuarios_id_seq'));
end;


procedure TDataModuleF.qryCategoriaNewRecord(DataSet: TDataSet);
begin
  qryCategoriacategoriaprodutoid.AsInteger:= StrToInt(getSequence('categoria_produto_categoriaprodutoid_seq'));
end;

procedure TDataModuleF.ZConnection1AfterConnect(Sender: TObject);
begin

end;

end.


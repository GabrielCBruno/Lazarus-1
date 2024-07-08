unit CategoriaProdutoss;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  ZDataset, ZAbstractRODataset;

type

  { TCategoriaProdutosF }

  TCategoriaProdutosF = class(TForm)
    DBGrid1: TDBGrid;
    dsCategProduto: TDataSource;
    edtCodigo: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    qryCategoriaProdutosF: TZQuery;
    qryCategoriaProdutosFcategoriaprodutoid: TZIntegerField;
    qryCategoriaProdutosFds_produto: TZRawStringField;
    qryCategoriaProdutosFdt_cadastro_produto: TZDateTimeField;
    qryCategoriaProdutosFobs_produto: TZRawStringField;
    qryCategoriaProdutosFprodutoid: TZIntegerField;
    qryCategoriaProdutosFstatus_produto: TZRawStringField;
    qryCategoriaProdutosFvl_venda_produto: TZBCDField;
  private

  public

  end;

var
  CategoriaProdutosF: TCategoriaProdutosF;

implementation

{$R *.lfm}

end.


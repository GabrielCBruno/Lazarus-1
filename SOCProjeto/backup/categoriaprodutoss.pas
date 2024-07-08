unit CategoriaProdutoss;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  StdCtrls, Buttons, ZDataset, ZAbstractRODataset, DataModulo;

type

  { TCategoriaProdutosF }

  TCategoriaProdutosF = class(TForm)
    btnPesquisar: TBitBtn;
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
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private

  public

  end;

var
  CategoriaProdutosF: TCategoriaProdutosF;

implementation

{$R *.lfm}

{ TCategoriaProdutosF }

procedure TCategoriaProdutosF.btnPesquisarClick(Sender: TObject);
var
  CodPes:Integer;
begin
  if edtCodigo.Text = ''  then
    begin
      qryCategoriaProdutosF.Close;
      qryCategoriaProdutosF.SQL.Text := 'select * from produto';
      qryCategoriaProdutosF.Open;
    end

    else
    begin
      CodPes:= StrToInt(edtCodigo.Text);
      qryCategoriaProdutosF.Close;
      qryCategoriaProdutosF.SQL.Text := 'select * from produto where categoriaprodutoid = ' + IntToStr(CodPes) + ';';
      qryCategoriaProdutosF.Open;
    end;
end;

procedure TCategoriaProdutosF.DBGrid1DblClick(Sender: TObject);
begin
  DataModuleF.qryCadProdutoscategoriaprodutoid.AsInteger:=qryCategoriaProdutosFcategoriaprodutoid.AsInteger;
  Close;
end;

end.


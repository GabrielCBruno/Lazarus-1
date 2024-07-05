unit RelProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, LR_DBSet,
  LR_Class, ZDataset, ZAbstractRODataset;

type

  { TRelProdutosF }

  TRelProdutosF = class(TForm)
    btnRelatorioCli: TBitBtn;
    datasetRelProdutos: TfrDBDataSet;
    frReport1: TfrReport;
    qryRelProdutos: TZQuery;
    qryRelProdutoscategoriaprodutoid: TZIntegerField;
    qryRelProdutosds_produto: TZRawStringField;
    qryRelProdutosdt_cadastro_produto: TZDateTimeField;
    qryRelProdutosobs_produto: TZRawStringField;
    qryRelProdutosprodutoid: TZIntegerField;
    qryRelProdutosstatus_produto: TZRawStringField;
    qryRelProdutosvl_venda_produto: TZBCDField;
    procedure btnRelatorioCliClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  RelProdutosF: TRelProdutosF;

implementation

{$R *.lfm}

{ TRelProdutosF }

procedure TRelProdutosF.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  qryRelProdutos.Close;
  CloseAction:=caFree;
end;

procedure TRelProdutosF.btnRelatorioCliClick(Sender: TObject);
begin
   frReport1.LoadFromFile('RelProdutos.lrf');
   frReport1.PrepareReport;
   frReport1.ShowReport;
end;

procedure TRelProdutosF.FormShow(Sender: TObject);
begin
  qryRelProdutos.Open;
end;

end.


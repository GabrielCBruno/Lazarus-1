unit AdicionaProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  StdCtrls, Buttons, ZDataset, ZAbstractRODataset,DataModulo;

type

  { TAdicionaProdutosF }

  TAdicionaProdutosF = class(TForm)
    btnPesquisar: TBitBtn;
    dsProdutos: TDataSource;
    DBGrid1: TDBGrid;
    edtCodigo: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    qryAdicionaProdutos: TZQuery;
    qryAdicionaProdutoscategoriaprodutoid: TZIntegerField;
    qryAdicionaProdutosds_produto: TZRawStringField;
    qryAdicionaProdutosdt_cadastro_produto: TZDateTimeField;
    qryAdicionaProdutosobs_produto: TZRawStringField;
    qryAdicionaProdutosprodutoid: TZIntegerField;
    qryAdicionaProdutosstatus_produto: TZRawStringField;
    qryAdicionaProdutosvl_venda_produto: TZBCDField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);

  private

  public

  end;

var
  AdicionaProdutosF: TAdicionaProdutosF;

implementation

uses
  AdicionarItens;

{$R *.lfm}

{ TAdicionaProdutosF }


procedure TAdicionaProdutosF.btnPesquisarClick(Sender: TObject);
var
  CodPes:Integer;
begin
  if edtCodigo.Text = ''  then
    begin
      qryAdicionaProdutos.Close;
      qryAdicionaProdutos.SQL.Text := 'select * from produto';
      qryAdicionaProdutos.Open;
    end

    else
    begin
      CodPes:= StrToInt(edtCodigo.Text);
      qryAdicionaProdutos.Close;
      qryAdicionaProdutos.SQL.Text := 'select * from produto where produtoid = ' + IntToStr(CodPes) + ';';
      qryAdicionaProdutos.Open;
    end;
end;

procedure TAdicionaProdutosF.DBGrid1DblClick(Sender: TObject);
begin
  DataModuleF.qryOrcamentoItensprodutoid.AsInteger:=qryAdicionaProdutosprodutoid.AsInteger;
  DataModuleF.qryOrcamentoItensprodutodesc.AsString:=qryAdicionaProdutosds_produto.AsString;
  DataModuleF.qryOrcamentoItensvl_unitario.AsFloat:=qryAdicionaProdutosvl_venda_produto.AsFloat;
  Close;
end;

procedure TAdicionaProdutosF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
   qryAdicionaProdutos.Close;
   CloseAction:=caFree;
end;

procedure TAdicionaProdutosF.FormShow(Sender: TObject);
begin
  qryAdicionaProdutos.Open;
end;

end.


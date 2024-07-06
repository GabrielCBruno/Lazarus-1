unit AdicionaProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  StdCtrls, Buttons, ZDataset;

type

  { TAdicionaProdutosF }

  TAdicionaProdutosF = class(TForm)
    btnPesquisar: TBitBtn;
    dsProdutos: TDataSource;
    DBGrid1: TDBGrid;
    edtCodigo: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    procedure btnPesquisarClick(Sender: TObject);

  private

  public

  end;

var
  AdicionaProdutosF: TAdicionaProdutosF;

implementation

{$R *.lfm}

{ TAdicionaProdutosF }


procedure TAdicionaProdutosF.btnPesquisarClick(Sender: TObject);
var
  CodPes:Integer;
begin
  if edtCodigo.Text = ''  then
    begin
      DataModulo.DataModuleF.qryCadProdutos.Close;
      DataModulo.DataModuleF.qryCadProdutos.SQL.Text := 'select * from produto';
      DataModulo.DataModuleF.qryCadProdutos.Open;
    end

    else
    begin
      CodPes:= StrToInt(edtCodigo.Text);
      DataModulo.DataModuleF.qryCadProdutos.Close;
      DataModulo.DataModuleF.qryCadProdutos.SQL.Text := 'select * from produto where produtoid = ' + IntToStr(CodPes) + ';';
      DataModulo.DataModuleF.qryCadProdutos.Open;
    end;
end;

end.


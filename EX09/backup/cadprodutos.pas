unit CadProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, CadModelo;

type

  { TCadProdutosF }

  TCadProdutosF = class(TCadModeloF)
    cbxTipoDoProduto: TComboBox;
    edtIdDoProduto: TEdit;
    edtValorDeVenda: TEdit;
    edtDescricaoSimples: TEdit;
    lblCadastroDeProdutos: TLabel;
    lblDescricaoCompleta: TLabel;
    lblIdProduto: TLabel;
    lblDescricaoSimples: TLabel;
    lblTipoDoProduto1: TLabel;
    lblValorDeVenda: TLabel;
    mmDescricaoCompleta: TMemo;
  private

  public

  end;

var
  CadProdutosF: TCadProdutosF;

implementation

{$R *.lfm}

end.


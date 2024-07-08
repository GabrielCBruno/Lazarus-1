unit CategoriaProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TCategoriaProdutosF }

  TCategoriaProdutosF = class(TForm)
    btnPesquisar: TBitBtn;
    edtCodigo: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
  private

  public

  end;

var
  CategoriaProdutosF: TCategoriaProdutosF;

implementation

{$R *.lfm}

end.


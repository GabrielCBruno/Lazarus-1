unit CadProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  DBCtrls, CadModelo;

type

  { TCadProdutosF }

  TCadProdutosF = class(TCadModeloF)
    dbEditCategoriaID: TDBEdit;
    dbEditDatDeCadas: TDBEdit;
    dbEditDescri: TDBEdit;
    dbEditObser: TDBEdit;
    dbEditValor: TDBEdit;
    dbEditStatus: TDBEdit;
    dbEditID: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
  private

  public

  end;

var
  CadProdutosF: TCadProdutosF;

implementation

{$R *.lfm}

end.


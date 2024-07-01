unit CadModelo;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  ExtCtrls, Buttons, StdCtrls, DBGrids;

type

  { TCadModeloF }

  TCadModeloF = class(TForm)
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFecha: TBitBtn;
    btnGravar: TBitBtn;
    btnNovo: TBitBtn;
    btPesquisar: TBitBtn;
    DBGrid1: TDBGrid;
    edtCodigo: TEdit;
    lbCodigo: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    psCadastrar: TPageControl;
    tsCadastrar: TTabSheet;
    tsPesquisa: TTabSheet;
  private

  public

  end;

var
  CadModeloF: TCadModeloF;

implementation

{$R *.lfm}

end.


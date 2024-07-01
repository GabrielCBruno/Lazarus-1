unit MenuPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus;

type

  { TMenuPrincipalF }

  TMenuPrincipalF = class(TForm)
    MainMenu1: TMainMenu;
    mnRelTesteCliente: TMenuItem;
    mnCategoriaR: TMenuItem;
    mnOrcamentoR: TMenuItem;
    mnProdutosR: TMenuItem;
    mnClienteR: TMenuItem;
    mnOrcamento: TMenuItem;
    mnUsuarios: TMenuItem;
    mnProdutos: TMenuItem;
    mnCategoria: TMenuItem;
    mnCliente: TMenuItem;
    mnSair: TMenuItem;
    mnSobre: TMenuItem;
    mnRelatorios: TMenuItem;
    mnVendas: TMenuItem;
    mnCadastrar: TMenuItem;
    procedure mnSairClick(Sender: TObject);
  private

  public

  end;

var
  MenuPrincipalF: TMenuPrincipalF;

implementation

{$R *.lfm}

{ TMenuPrincipalF }

procedure TMenuPrincipalF.mnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.


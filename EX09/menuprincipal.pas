unit MenuPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, OpSobre,CadProdutos,CadClientes,CadUsuarios,CadFornecedor,CadVendedores;

type

  { TMenuPrincipalF }

  TMenuPrincipalF = class(TForm)
    MainMenu1: TMainMenu;
    MenuCadastro1: TMenuItem;
    MenuCadastrodeProdutos: TMenuItem;
    MenuCadastroDeClientes: TMenuItem;
    MenuCadastroDeUsuarios: TMenuItem;
    MenuCadastroDeFornecedor: TMenuItem;
    MenuCadastroDeVendedores: TMenuItem;
    MenuSair1: TMenuItem;
    MenuSobre1: TMenuItem;
    MenuManutencao1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MenuCadastroDeClientesClick(Sender: TObject);
    procedure MenuCadastroDeFornecedorClick(Sender: TObject);
    procedure MenuCadastrodeProdutosClick(Sender: TObject);
    procedure MenuCadastroDeUsuariosClick(Sender: TObject);
    procedure MenuCadastroDeVendedoresClick(Sender: TObject);
    procedure MenuSair1Click(Sender: TObject);
    procedure MenuSobre1Click(Sender: TObject);
  private

  public

  end;

var
  MenuPrincipalF: TMenuPrincipalF;

implementation

{$R *.lfm}

{ TMenuPrincipalF }

procedure TMenuPrincipalF.MenuSobre1Click(Sender: TObject);
begin
   OpSobreF := TOpSobreF.Create(Self);
   OpSobreF.Show;
end;

procedure TMenuPrincipalF.MenuSair1Click(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TMenuPrincipalF.FormCreate(Sender: TObject);
begin

end;

procedure TMenuPrincipalF.MenuCadastroDeClientesClick(Sender: TObject);
begin
   CadClientesF:=TCadClientesF.Create(Self);
   CadClientesF.Show;
end;

procedure TMenuPrincipalF.MenuCadastroDeFornecedorClick(Sender: TObject);
begin
  CadFornecedorF:=TCadFornecedorF.Create(Self);
  CadFornecedorF.Show;
end;

procedure TMenuPrincipalF.MenuCadastrodeProdutosClick(Sender: TObject);
begin
   CadProdutosF:=TCadProdutosF.Create(Self);
   CadProdutosF.Show;
end;

procedure TMenuPrincipalF.MenuCadastroDeUsuariosClick(Sender: TObject);
begin
  CadUsuariosF:=TCadUsuariosF.Create(Self);
  CadUsuariosF.Show;
end;

procedure TMenuPrincipalF.MenuCadastroDeVendedoresClick(Sender: TObject);
begin
  CadVendedoresF:=TCadVendedoresF.Create(Self);
  CadVendedoresF.Show;
end;

end.


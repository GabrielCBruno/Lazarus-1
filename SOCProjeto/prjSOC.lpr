program prjSOC;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, zcomponent, MenuPrincipal, CadModelo, CadCategoria, DataModulo,
  CadClientes, RelClientes, CadProdutos, CadUsuarios, RelProdutos, RelOrcamento,
  RelCategoria, OrcamentoVendas;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TDataModuleF, DataModuleF);
  Application.CreateForm(TMenuPrincipalF, MenuPrincipalF);
  Application.CreateForm(TCadClientesF, CadClientesF);
  Application.CreateForm(TRelClientesF, RelClientesF);
  Application.CreateForm(TCadProdutosF, CadProdutosF);
  Application.CreateForm(TCadUsuariosF, CadUsuariosF);
  Application.CreateForm(TRelProdutosF, RelProdutosF);
  Application.CreateForm(TRelOrcamentoF, RelOrcamentoF);
  Application.CreateForm(TRelCategoriaF, RelCategoriaF);
  Application.CreateForm(TOrcamentoVendasF, OrcamentoVendasF);
  Application.Run;
end.


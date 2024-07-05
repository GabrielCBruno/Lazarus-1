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
  RelCategoria
  { you can add units after this };

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
  Application.Run;
end.


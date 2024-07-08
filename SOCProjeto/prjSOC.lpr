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
  RelCategoria, OrcamentoVendas, AdicionarItens, AdicionaProdutos, OrcCliente,
  Sobre, CategoriaProdutoss, TelaLogin;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TDataModuleF, DataModuleF);
  Application.CreateForm(TTelaLoginF, TelaLoginF);
  Application.CreateForm(TCadModeloF, CadModeloF);
  Application.Run;
end.


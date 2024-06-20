program PrjSCP;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, MenuPrincipal, CadModelo, OpLogin, CadEsqSenha, OpSobre, CadProdutos,
  CadClientes, CadUsuarios, CadFornecedor, CadVendedores
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
Application.CreateForm(TOpLoginF, OpLoginF);
Application.CreateForm(TMenuPrincipalF, MenuPrincipalF);
Application.CreateForm(TCadModeloF, CadModeloF);
Application.CreateForm(TCadEsqSenhaF, CadEsqSenhaF);
Application.CreateForm(TOpSobreF, OpSobreF);
Application.CreateForm(TCadProdutosF, CadProdutosF);
Application.CreateForm(TCadClientesF, CadClientesF);
Application.CreateForm(TCadUsuariosF, CadUsuariosF);
Application.CreateForm(TCadFornecedorF, CadFornecedorF);
Application.CreateForm(TCadVendedoresF, CadVendedoresF);
  Application.Run;
end.


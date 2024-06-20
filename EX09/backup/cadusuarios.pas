unit CadUsuarios;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, CadModelo;

type

  { TCadUsuariosF }

  TCadUsuariosF = class(TCadModeloF)
    edtCep: TEdit;
    edtCpfCnpj: TEdit;
    edtEmail: TEdit;
    edtEndereco: TEdit;
    edtIdCliente: TEdit;
    edtIdCliente1: TEdit;
    edtIdCliente2: TEdit;
    edtNomeFantasia: TEdit;
    edtNumero: TEdit;
    edtRazaoSocial: TEdit;
    edtTelefone: TEdit;
    lblCep: TLabel;
    lblEmail: TLabel;
    lblEndereco: TLabel;
    lblIdClientes: TLabel;
    lblIdClientes1: TLabel;
    lblNomeFantasia: TLabel;
    lblNumero: TLabel;
    lblRazaoSocial: TLabel;
    lblTelefone: TLabel;
    lblUsuario: TLabel;
    lblTituloCadUsuarios: TLabel;
    lblSenha1: TLabel;
  private

  public

  end;

var
  CadUsuariosF: TCadUsuariosF;

implementation

{$R *.lfm}

end.


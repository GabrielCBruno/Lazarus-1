unit CadVendedores;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, CadModelo;

type

  { TCadVendedoresF }

  TCadVendedoresF = class(TCadModeloF)
    edtCep: TEdit;
    edtCpfCnpj: TEdit;
    edtEmail: TEdit;
    edtEndereco: TEdit;
    edtIdCliente: TEdit;
    edtNomeFantasia: TEdit;
    edtNumero: TEdit;
    edtRazaoSocial: TEdit;
    edtTelefone: TEdit;
    edtTelefone1: TEdit;
    lblCep: TLabel;
    lblEmail: TLabel;
    lblEndereco: TLabel;
    lblIdClientes1: TLabel;
    lblIdVendedores: TLabel;
    lblNomeFantasia: TLabel;
    lblNumero: TLabel;
    lblRazaoSocial: TLabel;
    lblTelefone: TLabel;
    lblComissao: TLabel;
    lblTituloCadVendedores: TLabel;
  private

  public

  end;

var
  CadVendedoresF: TCadVendedoresF;

implementation

{$R *.lfm}

end.


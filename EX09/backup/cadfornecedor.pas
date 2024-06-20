unit CadFornecedor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, CadModelo;

type

  { TCadFornecedorF }

  TCadFornecedorF = class(TCadModeloF)
    edtCep: TEdit;
    edtCpfCnpj: TEdit;
    edtEmail: TEdit;
    edtEndereco: TEdit;
    edtIdCliente: TEdit;
    edtNomeFantasia: TEdit;
    edtNumero: TEdit;
    edtRazaoSocial: TEdit;
    edtTelefone: TEdit;
    lblCep: TLabel;
    lblEmail: TLabel;
    lblEndereco: TLabel;
    lblIdFornecedor: TLabel;
    lblIdClientes1: TLabel;
    lblNomeFantasia: TLabel;
    lblNumero: TLabel;
    lblRazaoSocial: TLabel;
    lblTelefone: TLabel;
    lblTituloCadFornecedor: TLabel;
  private

  public

  end;

var
  CadFornecedorF: TCadFornecedorF;

implementation

{$R *.lfm}

end.


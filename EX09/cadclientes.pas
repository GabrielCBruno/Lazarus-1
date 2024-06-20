unit CadClientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, CadModelo;

type

  { TCadClientesF }

  TCadClientesF = class(TCadModeloF)
    edtIdCliente: TEdit;
    edtCpfCnpj: TEdit;
    edtNomeFantasia: TEdit;
    edtRazaoSocial: TEdit;
    edtEndereco: TEdit;
    edtNumero: TEdit;
    edtCep: TEdit;
    edtEmail: TEdit;
    edtTelefone: TEdit;
    lblCep: TLabel;
    lblEmail: TLabel;
    lblTelefone: TLabel;
    lblNumero: TLabel;
    lblIdClientes1: TLabel;
    lblRazaoSocial: TLabel;
    lblNomeFantasia: TLabel;
    lblEndereco: TLabel;
    lblTituloCadClientes: TLabel;
    lblIdClientes: TLabel;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  CadClientesF: TCadClientesF;

implementation

{$R *.lfm}

{ TCadClientesF }

procedure TCadClientesF.FormCreate(Sender: TObject);
begin

end;

end.


unit CadEsqSenha;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TCadEsqSenhaF }

  TCadEsqSenhaF = class(TForm)
    btnEntrar: TButton;
    btnCancelar: TButton;
    edtEmail: TEdit;
    edtSenhaNova: TEdit;
    edtSenhaNovaC: TEdit;
    lblTituloNovaSenha: TLabel;
    lblEmail: TLabel;
    lblSenhaNova: TLabel;
    lblSenhaNovaC: TLabel;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private

  public

  end;

var
  CadEsqSenhaF: TCadEsqSenhaF;

implementation

{$R *.lfm}

{ TCadEsqSenhaF }

procedure TCadEsqSenhaF.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  CloseAction:=caFree;
end;

end.


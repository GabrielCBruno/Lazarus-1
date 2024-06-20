unit OpLogin;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  CadEsqSenha, MenuPrincipal;

type

  { TOpLoginF }

  TOpLoginF = class(TForm)
    btnCancelar: TButton;
    Panel1: TPanel;
    lblEmail:TLabel;
    lblSenha:TLabel;
    lblTitulo:TLabel;

    procedure btnEntrarClick(Sender: TObject);
    procedure btnEsqueciMinhaSenhaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private

  public

  end;

var
  OpLoginF: TOpLoginF;

implementation

{$R *.lfm}

{ TOpLoginF }

procedure TOpLoginF.btnEsqueciMinhaSenhaClick(Sender: TObject);
begin
   CadEsqSenhaF:=TCadEsqSenhaF.Create(Self);
   CadEsqSenhaF.Show;
end;

procedure TOpLoginF.btnEntrarClick(Sender: TObject);
begin
   MenuPrincipalF:=TMenuPrincipalF.Create(Self);
   MenuPrincipalF.Show;
end;



procedure TOpLoginF.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  CloseAction:=caFree;
end;

end.


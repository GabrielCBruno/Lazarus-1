unit OpSobre;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TOpSobreF }

  TOpSobreF = class(TForm)
    lblAnoDeDesenvolvimento: TLabel;
    lblEmpresa1: TLabel;
    lblInforSist: TLabel;
    lblIinguagem: TLabel;
    lblBancoDeDados: TLabel;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private

  public

  end;

var
  OpSobreF: TOpSobreF;

implementation

{$R *.lfm}

{ TOpSobreF }

procedure TOpSobreF.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  CloseAction:=caFree;
end;

end.


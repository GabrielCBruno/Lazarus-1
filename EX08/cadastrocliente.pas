unit CadastroCliente;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs;

type

  { TCadastraClientesF }

  TCadastraClientesF = class(TForm)
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private

  public

  end;

var
  CadastraClientesF: TCadastraClientesF;

implementation

{$R *.lfm}

{ TCadastraClientesF }

procedure TCadastraClientesF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  CloseAction:=caFree;
end;

end.


unit VendaOrcamento;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs;

type

  { TVendaOrcamentoF }

  TVendaOrcamentoF = class(TForm)
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private

  public

  end;

var
  VendaOrcamentoF: TVendaOrcamentoF;

implementation

{$R *.lfm}

{ TVendaOrcamentoF }

procedure TVendaOrcamentoF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  CloseAction:=caFree;
end;

end.


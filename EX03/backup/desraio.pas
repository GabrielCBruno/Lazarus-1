unit DesRaio;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TDescRaioF }

  TDescRaioF = class(TForm)
    btnCalcular: TButton;
    RaioText: TEdit;
    Edit2: TEdit;
    AreaText: TLabel;
    Textraio: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private

  public
       Function CalcularAreaCirculo (Raio:Double) : Double;
  end;

var
  DescRaioF: TDescRaioF;
const
  Pi = 3.1515;


implementation

{$R *.lfm}

{ TDescRaioF }

function TDescRaioF.CalcularAreaCirculo (Raio:Double) : Double;
begin
  Result := PI*(Raio*Raio);
end;

procedure TDescRaioF.btnCalcularClick(Sender: TObject);
var
  Raio : Double;
  Area : Double;
begin
    Raio := StrToFloat(RaioText.Text);
    Area := CalcularAreaCirculo(Raio);
    AreaText.Text := FloatToStr(Area);
end;

end.


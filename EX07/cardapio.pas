unit Cardapio;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TCardapioF }

  TCardapioF = class(TForm)
    btnCalcular: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    edtCalcular: TEdit;
    edtValor2: TEdit;
    edtValor1: TEdit;
    edtValor3: TEdit;
    edtValor4: TEdit;
    edtValor5: TEdit;
    edtValor6: TEdit;
    edtValor7: TEdit;
    lblBauroOvo2: TLabel;
    lblBauroOvo3: TLabel;
    lblBauroOvo4: TLabel;
    lblBauroOvo5: TLabel;
    lblBauroS: TLabel;
    lblBauroOvo1: TLabel;
    lblCachorroQ: TLabel;
    Titulo: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private

  public

  end;

var
  CardapioF: TCardapioF;

implementation

{$R *.lfm}

{ TCardapioF }

procedure TCardapioF.btnCalcularClick(Sender: TObject);
var
  prec1,prec2,prec3,prec4,prec5,prec6,Total,entrega:Double;
begin
   if CheckBox1.Checked=true then
   begin
     prec1:=12.00;
   end
   else
   begin
     prec1:=0;
   end;
   if CheckBox2.Checked=true then
   begin
     prec2:=13.00;
   end
   else
   begin
     prec2:=0;
   end;
    if CheckBox3.Checked=true then
   begin
     prec3:=15.00;
   end
    else
    begin
    prec3:=0;
    end;
     if CheckBox4.Checked=true then
   begin
     prec4:=12.00;
   end
     else
     begin
     prec4:=0;
     end;
      if CheckBox5.Checked=true then
   begin
     prec5:=13.00;
   end
      else
      begin
      prec5:=0;
      end;
       if CheckBox6.Checked=true then
   begin
     prec6:=5.00;
   end
       else
       begin
       prec6:=0;
       end;
       if CheckBox7.Checked=true then
   begin
     entrega:=4.00;
   end
       else
       begin
       entrega:=0;

       end;

   total:= (prec1+prec2+prec3+prec4+prec5+prec6+entrega);
   edtCalcular.Text := FloatToStr(total);
end;

end.


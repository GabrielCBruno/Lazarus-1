unit LetrasMaiusc;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TMaiusculoF }

  TMaiusculoF = class(TForm)
    Button1: TButton;
    edtTexto: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  MaiusculoF: TMaiusculoF;

implementation

{$R *.lfm}

{ TMaiusculoF }

procedure TMaiusculoF.Button1Click(Sender: TObject);
  var primeiraLetra, restodotexto : String;
begin
  //Tudo Maiúsculo
  if RadioButton1.Checked = True then
     edtTexto.Text:= UpperCase(edtTexto.Text);

  //Tudo Minusculo
  if RadioButton2.Checked = True then
     edtTexto.Text:= LowerCase(edtTexto.Text);

  //Somente Primeira letra maiúscula.
  if RadioButton3.Checked = True then
  begin
     primeiraLetra:= Copy(edttexto.Text,1,1);
     restodotexto:= Copy(edttexto.Text,2,Length(edttexto.text));
     edtTexto.Text:= UpperCase(primeiraLetra) + restodotexto;
  end;

  //Somente primeira letra minúscula.
  if RadioButton4.Checked = True then
  begin
     primeiraLetra:= Copy(edttexto.Text,1,1);
     restodotexto:= Copy(edttexto.Text,2,Length(edttexto.text));
     edtTexto.Text:= LowerCase(primeiraLetra) + restodotexto;
  end;

end;

end.


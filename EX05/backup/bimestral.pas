unit Bimestral;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TBimestralF }

  TBimestralF = class(TForm)
    btnCalcMedia: TButton;
    Faltas: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblResult: TLabel;
    lblMedia: TLabel;
    nota1: TEdit;
    nota2: TEdit;
    nota3: TEdit;
    nota4: TEdit;
    procedure btnCalcMediaClick(Sender: TObject);
  private

  public

  end;

var
  BimestralF: TBimestralF;
const
  mediaAp = 7;
  numeroF = 15;

implementation

{$R *.lfm}

{ TBimestralF }

procedure TBimestralF.btnCalcMediaClick(Sender: TObject);
var
  media,Nt1,Nt2,Nt3,Nt4: Double;
  numFalt: integer;
begin

    {if Faltas.Text = '' then
      ShowMessage('Valor de Faltas Vazio');}

    Nt1 := StrToFloat(nota1.Text);
    Nt2:=StrToFloat(nota2.Text);
    Nt3:=StrToFloat(nota3.Text);
    Nt4:=StrToFloat(nota4.Text);
    media:= (Nt1 + Nt2 + Nt3+ Nt4)/4;
    numFalt:= StrToint(Faltas.Text);
    lblResult.Caption:= 'Nota ' + FloatToStr(media);

    if(Media<mediaAp) or (NumFalt>numeroF) then
    begin
      ShowMessage('Reprovado');
    end
    else
    begin
      ShowMessage('Aprovador');
    end;



end;

end.


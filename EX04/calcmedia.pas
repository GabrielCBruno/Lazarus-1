unit CalcMedia;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TCalcMediaF }

  TCalcMediaF = class(TForm)
    btnCalcMedia: TButton;
    editNota1: TEdit;
    editNota2: TEdit;
    editNota3: TEdit;
    editnota4: TEdit;
    editMedia: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnCalcMediaClick(Sender: TObject);
  private

  public

  end;

var
  CalcMediaF: TCalcMediaF;
  media:Double;

implementation

{$R *.lfm}

{ TCalcMediaF }

procedure TCalcMediaF.btnCalcMediaClick(Sender: TObject);

begin
    media := ( StrToFloat(editNota1.Text) + StrToFloat(editNota2.Text) + StrToFloat(editNota3.Text) + StrToFloat(editnota4.Text))/4;

    editMedia.Text := FloatToStr(media);


end;

end.


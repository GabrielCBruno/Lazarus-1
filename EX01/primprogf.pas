unit PrimProgF;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ColorBox, Buttons, Arrow, PairSplitter, ComCtrls;

type

  { TPrimProgFf }

  TPrimProgFf = class(TForm)
    btnEsconderImg: TBitBtn;
    btnMensagem: TButton;
    btnMudaCor: TButton;
    btnMudaCaption: TButton;
    btnColorBox: TColorBox;
    Image1: TImage;
    PairSplitter1: TPairSplitter;
    PairSplitterSide1: TPairSplitterSide;
    PairSplitterSide2: TPairSplitterSide;
    procedure btnEsconderImgClick(Sender: TObject);
    procedure btnMensagemClick(Sender: TObject);
    procedure btnMudaCaptionClick(Sender: TObject);
    procedure btnMudaCorClick(Sender: TObject);
    procedure btnColorBoxChange(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
  private

  public

  end;

var
  PrimProgFf: TPrimProgFf;

implementation

{$R *.lfm}

{ TPrimProgFf }

procedure TPrimProgFf.btnMensagemClick(Sender: TObject);
begin
  showmessage ('Meu Primeiro Programa');
end;

procedure TPrimProgFf.btnEsconderImgClick(Sender: TObject);
begin
  if Image1.Visible then
     begin
    Image1.Visible := false;
    end
  else
      begin
    Image1.Visible := true;
      end;
end;

procedure TPrimProgFf.btnMudaCaptionClick(Sender: TObject);
begin
  btnMensagem.Caption:='Azul';
end;

procedure TPrimProgFf.btnMudaCorClick(Sender: TObject);
begin
  PrimProgFf.Color :=clMenuText ;
end;

procedure TPrimProgFf.btnColorBoxChange(Sender: TObject);
begin
Self.Color:= btnColorBox.Selected;
end;

procedure TPrimProgFf.Image1Click(Sender: TObject);
begin

end;

procedure TPrimProgFf.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin

end;

end.


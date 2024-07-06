unit AdicionarItens;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  Buttons;

type

  { TAdicionarItensF }

  TAdicionarItensF = class(TForm)
    btnInserir: TBitBtn;
    btnCancelarItem: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
  private

  public

  end;

var
  AdicionarItensF: TAdicionarItensF;

implementation

{$R *.lfm}

end.


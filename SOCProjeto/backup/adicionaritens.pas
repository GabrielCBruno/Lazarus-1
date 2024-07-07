unit AdicionarItens;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  Buttons, AdicionaProdutos, DataModulo;

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
    procedure btnCancelarItemClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private

  public

  end;

var
  AdicionarItensF: TAdicionarItensF;

implementation

{$R *.lfm}

{ TAdicionarItensF }

procedure TAdicionarItensF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  CloseAction:=caFree;
end;

procedure TAdicionarItensF.btnInserirClick(Sender: TObject);
begin
  DataModuleF.qryOrcamentoItensorcamentoid.AsInteger := DataModuleF.qryOrcamentoorcamentoid.AsInteger;
  DataModuleF.qryOrcamentoItens.Post;
  Close;
end;

procedure TAdicionarItensF.btnCancelarItemClick(Sender: TObject);
begin
  Close;
end;

procedure TAdicionarItensF.SpeedButton1Click(Sender: TObject);
begin
  AdicionaProdutosF:=TAdicionaProdutosF.Create(Self);
  AdicionaProdutosF.ShowModal;
end;

end.


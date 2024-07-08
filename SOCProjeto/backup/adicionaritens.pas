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
    dbEditQtd: TDBEdit;
    dbEditValorUnit: TDBEdit;
    dbEditValorTotal: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    procedure btnCancelarItemClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure dbEditQtdKeyPress(Sender: TObject; var Key: char);
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


procedure TAdicionarItensF.dbEditQtdKeyPress(Sender: TObject; var Key: char);
  var
  valorTot: Double;
  Quant:Integer;
begin
  if dbEditQtd.Text = '' then
  begin
    Quant := 0;
    valorTot:= Quant * StrToFloat(dbEditValorUnit.Text);
    DataModuleF.qryOrcamentoItensvl_total.AsFloat := valorTot;

  end
  else
  begin
  Quant:=StrToInt(dbEditQtd.Text);
  valorTot:= Quant * StrToFloat(dbEditValorUnit.Text);
  DataModuleF.qryOrcamentoItensvl_total.AsFloat := valorTot;
  end;
end;

procedure TAdicionarItensF.btnCancelarItemClick(Sender: TObject);
begin
  DataModuleF.qryOrcamentoItens.Cancel;
  Close;
end;

procedure TAdicionarItensF.SpeedButton1Click(Sender: TObject);
begin
  AdicionaProdutosF:=TAdicionaProdutosF.Create(Self);
  AdicionaProdutosF.ShowModal;
end;

end.


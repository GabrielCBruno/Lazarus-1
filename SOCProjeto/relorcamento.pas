unit RelOrcamento;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, LR_DBSet,
  LR_Class, ZDataset, ZAbstractRODataset;

type

  { TRelOrcamentoF }

  TRelOrcamentoF = class(TForm)
    btnRelOrcamento: TBitBtn;
    dataSetRelOrc: TfrDBDataSet;
    frReport1: TfrReport;
    qryRelOrcamento: TZQuery;
    qryRelOrcamentoclienteid: TZIntegerField;
    qryRelOrcamentodt_orcamento: TZDateTimeField;
    qryRelOrcamentodt_validade_orcamento: TZDateTimeField;
    qryRelOrcamentoorcamentoid: TZIntegerField;
    qryRelOrcamentovl_total_orcamento: TZBCDField;
    procedure btnRelOrcamentoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  RelOrcamentoF: TRelOrcamentoF;

implementation

{$R *.lfm}

{ TRelOrcamentoF }

procedure TRelOrcamentoF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  qryRelOrcamento.Close;
end;

procedure TRelOrcamentoF.btnRelOrcamentoClick(Sender: TObject);
begin
   frReport1.LoadFromFile('RelOrcamento.lrf');
   frReport1.PrepareReport;
   frReport1.ShowReport;
end;

procedure TRelOrcamentoF.FormShow(Sender: TObject);
begin
  qryRelOrcamento.Open;
end;

end.


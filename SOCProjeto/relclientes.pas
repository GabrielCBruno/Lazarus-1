unit RelClientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, LR_DBSet,
  LR_Class, ZDataset, ZAbstractRODataset;

type

  { TRelClientesF }

  TRelClientesF = class(TForm)
    btnRelatorioCli: TBitBtn;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    qryRelCliente: TZQuery;
    qryRelClienteclienteid: TZIntegerField;
    qryRelClientecpf_cnpj_cliente: TZRawStringField;
    qryRelClientenome_cliente: TZRawStringField;
    qryRelClientetipo_cliente: TZRawStringField;
    procedure btnRelatorioCliClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  RelClientesF: TRelClientesF;

implementation

{$R *.lfm}

{ TRelClientesF }

procedure TRelClientesF.FormShow(Sender: TObject);
begin
  qryRelCliente.Open;
end;

procedure TRelClientesF.btnRelatorioCliClick(Sender: TObject);
begin
   frReport1.LoadFromFile('relClientes.lrf');
   frReport1.PrepareReport;
   frReport1.ShowReport;
end;

procedure TRelClientesF.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
   qryRelCliente.Close;
end;

end.


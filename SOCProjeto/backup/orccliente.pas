unit OrcCliente;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, Grids,
  DBGrids, StdCtrls, Buttons, ZDataset, ZAbstractRODataset, DataModulo;

type

  { TOrcClienteF }

  TOrcClienteF = class(TForm)
    btnPesquisar: TBitBtn;
    dsClientesID: TDataSource;
    DBGrid1: TDBGrid;
    edtCodigo: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    qryClientesOrc: TZQuery;
    qryClientesOrcclienteid: TZIntegerField;
    qryClientesOrccpf_cnpj_cliente: TZRawStringField;
    qryClientesOrcnome_cliente: TZRawStringField;
    qryClientesOrctipo_cliente: TZRawStringField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private

  public

  end;

var
  OrcClienteF: TOrcClienteF;

implementation

{$R *.lfm}

{ TOrcClienteF }

procedure TOrcClienteF.btnPesquisarClick(Sender: TObject);
var
  CodPes:Integer;
begin
  if edtCodigo.Text = ''  then
    begin
      qryClientesOrc.Close;
      qryClientesOrc.SQL.Text := 'select * from cliente';
      qryClientesOrc.Open;
    end

    else
    begin
      CodPes:= StrToInt(edtCodigo.Text);
      qryClientesOrc.Close;
      qryClientesOrc.SQL.Text := 'select * from cliente where clienteid = ' + IntToStr(CodPes) + ';';
      qryClientesOrc.Open;
    end;
end;

procedure TOrcClienteF.DBGrid1DblClick(Sender: TObject);
begin
  DataModuleF.qryOrcamentoclienteid.AsInteger:= qryClientesOrcclienteid.AsInteger;
  Close;
end;



end.


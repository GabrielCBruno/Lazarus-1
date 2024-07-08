unit OrcamentoVendas;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  DBCtrls, StdCtrls, Buttons, CadModelo, DataModulo, AdicionarItens,OrcCliente;

type

  { TOrcamentoVendasF }

  TOrcamentoVendasF = class(TCadModeloF)
    btnBusca: TBitBtn;
    btnNovoItem: TBitBtn;
    btnRemoverItem: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    dbEditTotalOrcamento: TDBEdit;
    dbEditIdOrc1: TDBEdit;
    dbEditIdOrc2: TDBEdit;
    DBGrid2: TDBGrid;
    dsOrcamento: TDataSource;
    dsOrcamentoItens: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure btnBuscaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFechaClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnNovoItemClick(Sender: TObject);
    procedure btnRemoverItemClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure psCadastrarChange(Sender: TObject);

  private

  public
        procedure AbreOrcItens(orcamentoid : Integer);
        procedure SomaItens;
  end;

var
  OrcamentoVendasF: TOrcamentoVendasF;

implementation


{$R *.lfm}

{ TOrcamentoVendasF }

procedure TOrcamentoVendasF.AbreOrcItens(orcamentoid : Integer);
begin
   if orcamentoid <> 0 then
  begin
      DataModuleF.qryOrcamentoItens.Close;
      DataModuleF.qryOrcamentoItens.SQL.Clear;
      DataModuleF.qryOrcamentoItens.SQL.Add(
                      'SELECT '+
                      'ORCAMENTOITEMID, '+
                      'ORCAMENTOID, '+
                      'PRODUTOID, '+
                      'produtodesc, '+
                      'QT_PRODUTO, '+
                      'VL_UNITARIO, '+
                      'VL_TOTAL '+
                      'FROM ORCAMENTO_ITEM ' +
                      'WHERE ORCAMENTOID = '+ inttostr(orcamentoid) + ' ' +
                      'ORDER BY ORCAMENTOID');
       DataModuleF.qryOrcamentoItens.Open;
  end;
end;

procedure TOrcamentoVendasF.SomaItens;
begin

  if not (DataModuleF.qryOrcamento.State in [dsEdit, dsInsert]) then
     DataModuleF.qryOrcamento.Edit;

  if not (DataModuleF.qryOrcamentoItens.State in [dsEdit, dsInsert]) then
     DataModuleF.qryOrcamentoItens.Edit;


  DataModuleF.qryOrcamentoItens.First;
  DataModuleF.qryOrcamentovl_total_orcamento.AsFloat := 0;
  while not DataModuleF.qryOrcamentoItens.Eof do
  begin
    DataModuleF.qryOrcamentovl_total_orcamento.AsFloat := DataModuleF.qryOrcamentovl_total_orcamento.AsFloat + DataModuleF.qryOrcamentoItensvl_total.AsFloat;
    DataModuleF.qryOrcamentoItens.next;
  end;
end;


procedure TOrcamentoVendasF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  DataModulo.DataModuleF.qryOrcamento.Close;
  DataModuleF.qryOrcamentoItens.Close;
  CloseAction:=caFree;
end;

procedure TOrcamentoVendasF.FormDblClick(Sender: TObject);
begin

end;

procedure TOrcamentoVendasF.FormShow(Sender: TObject);
begin
  psCadastrar.ActivePage := tsPesquisa;
  DataModuleF.qryOrcamento.Open;
  DataModuleF.qryOrcamentoItens.Open;
end;

procedure TOrcamentoVendasF.psCadastrarChange(Sender: TObject);
begin
  AbreOrcItens(DataModuleF.qryOrcamentoorcamentoid.AsInteger);
end;


procedure TOrcamentoVendasF.DBGrid1DblClick(Sender: TObject);
begin
  AbreOrcItens(DataModuleF.qryOrcamentoorcamentoid.AsInteger);
  psCadastrar.ActivePage:= tsCadastrar;
  SomaItens;
end;

procedure TOrcamentoVendasF.btnNovoClick(Sender: TObject);
begin
  psCadastrar.ActivePage:= tsCadastrar;
  DataModuleF.qryOrcamento.Insert;
  AbreOrcItens(DataModuleF.qryOrcamentoorcamentoid.AsInteger);
end;

procedure TOrcamentoVendasF.btnNovoItemClick(Sender: TObject);
begin
    DataModuleF.qryOrcamentoItens.Insert;
    AdicionarItensF:=TAdicionarItensF.Create(Self);
    AdicionarItensF.ShowModal;
    SomaItens;
end;

procedure TOrcamentoVendasF.btnRemoverItemClick(Sender: TObject);
begin
  begin
      If  MessageDlg('Você tem certeza que deseja excluir o registro?', mtConfirmation,[mbyes,mbno],0)= mryes then
      DataModuleF.qryOrcamentoItens.Delete;
      SomaItens;

  end;
end;

procedure TOrcamentoVendasF.btPesquisarClick(Sender: TObject);
var
  CodID:Integer;
begin
  if edtCodigo.Text = ''  then
    begin
      DataModulo.DataModuleF.qryOrcamento.Close;
      DataModulo.DataModuleF.qryOrcamento.SQL.Text := 'select * from orcamento';
      DataModulo.DataModuleF.qryOrcamento.Open;
    end

    else
    begin
      CodId:= StrToInt(edtCodigo.Text);
      DataModulo.DataModuleF.qryOrcamento.Close;
      DataModulo.DataModuleF.qryOrcamento.SQL.Text := 'select * from orcamento where orcamentoid = ' + IntToStr(CodID) + ';';
      DataModulo.DataModuleF.qryOrcamento.Open;
    end
end;


procedure TOrcamentoVendasF.btnFechaClick(Sender: TObject);
begin
  Close;
end;

procedure TOrcamentoVendasF.btnExcluirClick(Sender: TObject);
begin
      If  MessageDlg('Você tem certeza que deseja excluir o registro?', mtConfirmation,[mbyes,mbno],0)= mryes then
  begin
   DataModulo.DataModuleF.qryOrcamento.Delete;
   psCadastrar.ActivePage:= tsPesquisa;
  end;
end;

procedure TOrcamentoVendasF.btnCancelarClick(Sender: TObject);
begin
    DataModulo.DataModuleF.qryOrcamento.Cancel;
    psCadastrar.ActivePage:= tsPesquisa;
end;

procedure TOrcamentoVendasF.btnBuscaClick(Sender: TObject);
begin
    OrcClienteF:=TOrcClienteF.Create(Self);
    OrcClienteF.ShowModal;
end;

procedure TOrcamentoVendasF.btnGravarClick(Sender: TObject);
begin
  DataModuleF.qryOrcamento.Edit;
  psCadastrar.ActivePage:= tsPesquisa;
end;

end.


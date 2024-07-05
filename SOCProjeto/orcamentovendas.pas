unit OrcamentoVendas;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  DBCtrls, StdCtrls, Buttons, CadModelo, DataModulo;

type

  { TOrcamentoVendasF }

  TOrcamentoVendasF = class(TCadModeloF)
    btnBusca: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    dbEditIdOrc1: TDBEdit;
    dbEditIdOrc2: TDBEdit;
    DBGrid2: TDBGrid;
    dsOrcamento: TDataSource;
    dsOrcamentoItens: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFechaClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  OrcamentoVendasF: TOrcamentoVendasF;

implementation

{$R *.lfm}

{ TOrcamentoVendasF }

procedure TOrcamentoVendasF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  DataModulo.DataModuleF.qryOrcamento.Close;
  CloseAction:=caFree;
end;

procedure TOrcamentoVendasF.FormShow(Sender: TObject);
begin

end;

procedure TOrcamentoVendasF.DBGrid1DblClick(Sender: TObject);
begin
  psCadastrar.ActivePage:= tsCadastrar;
end;

procedure TOrcamentoVendasF.btnNovoClick(Sender: TObject);
begin
  DataModuleF.qryOrcamento.Insert;
  psCadastrar.ActivePage:= tsCadastrar;
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

procedure TOrcamentoVendasF.btnGravarClick(Sender: TObject);
begin
  DataModulo.DataModuleF.qryOrcamento.Post;
  psCadastrar.ActivePage:= tsPesquisa;
end;

end.


unit CadClientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  DBCtrls, CadModelo, ZConnection, DataModulo;

type

  { TCadClientesF }

  TCadClientesF = class(TCadModeloF)
    dsCadastroClientes: TDataSource;
    dbEditNome: TDBEdit;
    dbEditId: TDBEdit;
    dbEditTipoDPes: TDBEdit;
    dbEditCPF: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFechaClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edtCodigoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  CadClientesF: TCadClientesF;

implementation

{$R *.lfm}

{ TCadClientesF }

procedure TCadClientesF.btnNovoClick(Sender: TObject);
begin
     DataModuleF.qryCadClientes.Insert;
     psCadastrar.ActivePage:= tsCadastrar;
end;

procedure TCadClientesF.btPesquisarClick(Sender: TObject);
var
  CodId: Integer;
begin
  
    if edtCodigo.Text = ''  then
    begin
      DataModulo.DataModuleF.qryCadClientes.Close;
      DataModulo.DataModuleF.qryCadClientes.SQL.Text := 'select * from cliente';
      DataModulo.DataModuleF.qryCadClientes.Open;
    end

    else
    begin
      CodId:= StrToInt(edtCodigo.Text);
      DataModulo.DataModuleF.qryCadClientes.Close;
      DataModulo.DataModuleF.qryCadClientes.SQL.Text := 'select * from cliente where clienteid = ' + IntToStr(CodID) + ';';
      DataModulo.DataModuleF.qryCadClientes.Open;
    end
end;

procedure TCadClientesF.DBGrid1DblClick(Sender: TObject);
begin
  psCadastrar.ActivePage:= tsCadastrar;
end;

procedure TCadClientesF.edtCodigoChange(Sender: TObject);
begin

end;

procedure TCadClientesF.FormShow(Sender: TObject);
begin
  psCadastrar.ActivePage:= tsPesquisa;
end;

procedure TCadClientesF.btnFechaClick(Sender: TObject);
begin
  Close;
end;

procedure TCadClientesF.btnGravarClick(Sender: TObject);
begin
    DataModulo.DataModuleF.qryCadClientes.Post;
    psCadastrar.ActivePage:= tsPesquisa;
end;

procedure TCadClientesF.btnCancelarClick(Sender: TObject);
begin
    DataModulo.DataModuleF.qryCadClientes.Cancel;
    psCadastrar.ActivePage:= tsPesquisa;
end;

procedure TCadClientesF.btnExcluirClick(Sender: TObject);
begin
    If  MessageDlg('Você tem certeza que deseja excluir o registro?', mtConfirmation,[mbyes,mbno],0)= mryes then
  begin
   DataModulo.DataModuleF.qryCadClientes.Delete;
   psCadastrar.ActivePage:= tsPesquisa;
  end;
end;

end.


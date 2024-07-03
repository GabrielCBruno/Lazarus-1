unit CadCategoria;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  DBCtrls, ZConnection, CadModelo, DataModulo;

type

  { TCadCategoriaF }

  TCadCategoriaF = class(TCadModeloF)
    dbEditID: TDBEdit;
    dbEditDescDoPro: TDBEdit;
    dsCategoria: TDataSource;
    lbID: TLabel;
    lbDescricao: TLabel;
    Panel4: TPanel;
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
  CadCategoriaF: TCadCategoriaF;

implementation

{$R *.lfm}

{ TCadCategoriaF }

procedure TCadCategoriaF.btnFechaClick(Sender: TObject);
begin
  Close;
end;

procedure TCadCategoriaF.btnGravarClick(Sender: TObject);
begin
  DataModulo.DataModuleF.qryCategoria.Post;
  psCadastrar.ActivePage:= tsPesquisa;

end;

procedure TCadCategoriaF.btnNovoClick(Sender: TObject);
begin
     DataModuleF.qryCategoria.Insert;
     psCadastrar.ActivePage:= tsCadastrar;
end;

procedure TCadCategoriaF.btPesquisarClick(Sender: TObject);
var
  CodPes: Integer;
begin

    if edtCodigo.Text = ''  then
    begin
      DataModulo.DataModuleF.qryCategoria.Close;
      DataModulo.DataModuleF.qryCategoria.SQL.Text := 'select * from categoria_produto';
      DataModulo.DataModuleF.qryCategoria.Open;
    end

    else
    begin
      CodPes:= StrToInt(edtCodigo.Text);
      DataModulo.DataModuleF.qryCategoria.Close;
      DataModulo.DataModuleF.qryCategoria.SQL.Text := 'select * from categoria_produto where categoriaprodutoid = ' + IntToStr(CodPes) + ';';
      DataModulo.DataModuleF.qryCategoria.Open;
    end


end;

procedure TCadCategoriaF.DBGrid1DblClick(Sender: TObject);
begin
  psCadastrar.ActivePage:= tsCadastrar;
end;

procedure TCadCategoriaF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  DataModulo.DataModuleF.qryCategoria.Close;
  CloseAction:=caFree;
end;

procedure TCadCategoriaF.FormShow(Sender: TObject);
begin
   DataModulo.DataModuleF.qryCategoria.Open;
   psCadastrar.ActivePage:= tsPesquisa;
end;

procedure TCadCategoriaF.btnCancelarClick(Sender: TObject);
begin
  DataModulo.DataModuleF.qryCategoria.Cancel;
  psCadastrar.ActivePage:= tsPesquisa;
end;

procedure TCadCategoriaF.btnExcluirClick(Sender: TObject);
begin
  If  MessageDlg('Você tem certeza que deseja excluir o registro?', mtConfirmation,[mbyes,mbno],0)= mryes then
  begin
   DataModulo.DataModuleF.qryCategoria.Delete;
   psCadastrar.ActivePage:= tsPesquisa;
  end;
end;

end.


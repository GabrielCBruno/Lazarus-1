unit CadUsuarios;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  CadModelo, DataModulo;

type

  { TCadUsuariosF }

  TCadUsuariosF = class(TCadModeloF)
    dbEditNomComp: TDBEdit;
    dbEditUsuario: TDBEdit;
    dbEditSenha: TDBEdit;
    dbEditID: TDBEdit;
    dsCadUsuarios: TDataSource;
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
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  CadUsuariosF: TCadUsuariosF;

implementation

{$R *.lfm}

{ TCadUsuariosF }

procedure TCadUsuariosF.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  DataModulo.DataModuleF.qryCadUsuarios.Close;
  CloseAction:=caFree;
end;

procedure TCadUsuariosF.btnNovoClick(Sender: TObject);
begin
  DataModuleF.qryCadUsuarios.Insert;
  psCadastrar.ActivePage:= tsCadastrar;
end;

procedure TCadUsuariosF.btPesquisarClick(Sender: TObject);
var
  CodPes:Integer;
begin
  if edtCodigo.Text = ''  then
    begin
      DataModulo.DataModuleF.qryCadUsuarios.Close;
      DataModulo.DataModuleF.qryCadUsuarios.SQL.Text := 'select * from usuarios';
      DataModulo.DataModuleF.qryCadUsuarios.Open;
    end

    else
    begin
      CodPes:= StrToInt(edtCodigo.Text);
      DataModulo.DataModuleF.qryCadUsuarios.Close;
      DataModulo.DataModuleF.qryCadUsuarios.SQL.Text := 'select * from usuarios where id = ' + IntToStr(CodPes) + ';';
      DataModulo.DataModuleF.qryCadUsuarios.Open;
    end
end;

procedure TCadUsuariosF.btnFechaClick(Sender: TObject);
begin
  Close;
end;

procedure TCadUsuariosF.btnExcluirClick(Sender: TObject);
begin
  If  MessageDlg('Você tem certeza que deseja excluir o registro?', mtConfirmation,[mbyes,mbno],0)= mryes then
  begin
   DataModulo.DataModuleF.qryCadUsuarios.Delete;
   psCadastrar.ActivePage:= tsPesquisa;
  end;
end;

procedure TCadUsuariosF.btnCancelarClick(Sender: TObject);
begin
  DataModulo.DataModuleF.qryCadUsuarios.Cancel;
  psCadastrar.ActivePage:= tsPesquisa;
end;

procedure TCadUsuariosF.btnGravarClick(Sender: TObject);
begin
  DataModulo.DataModuleF.qryCadUsuarios.Post;
  psCadastrar.ActivePage:= tsPesquisa;
end;

procedure TCadUsuariosF.FormShow(Sender: TObject);
begin
  DataModulo.DataModuleF.qryCadUsuarios.Open;
end;

end.


unit CadProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  DBCtrls, CadModelo, DataModulo;

type

  { TCadProdutosF }

  TCadProdutosF = class(TCadModeloF)
    dsCadProdutos: TDataSource;
    dbEditCategoriaID: TDBEdit;
    dbEditDatDeCadas: TDBEdit;
    dbEditDescri: TDBEdit;
    dbEditObser: TDBEdit;
    dbEditValor: TDBEdit;
    dbEditStatus: TDBEdit;
    dbEditID: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
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
  CadProdutosF: TCadProdutosF;

implementation

{$R *.lfm}

{ TCadProdutosF }

procedure TCadProdutosF.btnNovoClick(Sender: TObject);
begin
  DataModuleF.qryCadProdutos.Insert;
  psCadastrar.ActivePage:= tsCadastrar;
end;

procedure TCadProdutosF.btPesquisarClick(Sender: TObject);
var
  CodPes:Integer;
begin
    if edtCodigo.Text = ''  then
    begin
      DataModulo.DataModuleF.qryCadProdutos.Close;
      DataModulo.DataModuleF.qryCadProdutos.SQL.Text := 'select * from produto';
      DataModulo.DataModuleF.qryCadProdutos.Open;
    end

    else
    begin
      CodPes:= StrToInt(edtCodigo.Text);
      DataModulo.DataModuleF.qryCadProdutos.Close;
      DataModulo.DataModuleF.qryCadProdutos.SQL.Text := 'select * from produto where produtoid = ' + IntToStr(CodPes) + ';';
      DataModulo.DataModuleF.qryCadProdutos.Open;
    end
end;

procedure TCadProdutosF.DBGrid1DblClick(Sender: TObject);
begin
  psCadastrar.ActivePage:= tsCadastrar;
end;

procedure TCadProdutosF.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  DataModulo.DataModuleF.qryCadProdutos.Close;
  CloseAction:=caFree;
end;

procedure TCadProdutosF.FormShow(Sender: TObject);
begin
   DataModulo.DataModuleF.qryCadProdutos.Open;
   psCadastrar.ActivePage:= tsPesquisa;
end;

procedure TCadProdutosF.btnFechaClick(Sender: TObject);
begin
   Close;
end;

procedure TCadProdutosF.btnExcluirClick(Sender: TObject);
begin
  If  MessageDlg('Você tem certeza que deseja excluir o registro?', mtConfirmation,[mbyes,mbno],0)= mryes then
  begin
   DataModulo.DataModuleF.qryCadProdutos.Delete;
   psCadastrar.ActivePage:= tsPesquisa;
  end;
end;

procedure TCadProdutosF.btnCancelarClick(Sender: TObject);
begin
  DataModulo.DataModuleF.qryCadProdutos.Cancel;
  psCadastrar.ActivePage:= tsPesquisa;
end;

procedure TCadProdutosF.btnGravarClick(Sender: TObject);
begin
  DataModulo.DataModuleF.qryCadProdutos.Post;
  psCadastrar.ActivePage:= tsPesquisa;
end;



end.


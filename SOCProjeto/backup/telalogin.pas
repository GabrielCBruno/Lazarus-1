unit TelaLogin;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, ZDataset, ZAbstractRODataset,DataModulo,MenuPrincipal;

type

  { TTelaLoginF }

  TTelaLoginF = class(TForm)
    btnEntrarUsuarios: TBitBtn;
    dsLoginUsuario: TDataSource;
    edtSenha: TEdit;
    edtUsuario: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    qryLoginUsuario: TZQuery;
    qryLoginUsuarioid: TZIntegerField;
    qryLoginUsuarionome_completo: TZRawStringField;
    qryLoginUsuariosenha: TZRawStringField;
    qryLoginUsuariousuario: TZRawStringField;
    procedure btnEntrarUsuariosClick(Sender: TObject);
  private

  public

  end;

var
  TelaLoginF: TTelaLoginF;

implementation

{$R *.lfm}

{ TTelaLoginF }

procedure TTelaLoginF.btnEntrarUsuariosClick(Sender: TObject);
var
  Usuario,Senha:String;

begin
     if (edtUsuario.Text = '') or (edtSenha.Text = '')  then
    begin
      DataModulo.DataModuleF.qryCadProdutos.SQL.Text := 'select * from usuarios';
      ShowMessage('Login Ou Senha Vazio');
    end

    else
    begin
      Usuario:= edtUsuario.Text;
      Senha:= edtSenha.Text;
      DataModulo.DataModuleF.qryCadProdutos.SQL.Text := 'select * from produto where usuario = ' + Usuario + 'and senha = ' + Senha + ';'  ;
      MenuPrincipalF:=TMenuPrincipalF.Create(Self);
      MenuPrincipalF.ShowModal;
    end;
end;

end.


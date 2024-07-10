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
    dsUsuario: TDataSource;
    edtSenha: TEdit;
    edtUsuario: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    qryUsuario: TZQuery;
    qryUsuariosenha: TZRawStringField;
    qryUsuariousuario: TZRawStringField;
    procedure btnEntrarUsuariosClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
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
  Usuario, Senha : String;
begin
     if (edtUsuario.Text = '') or (edtSenha.Text = '')  then
     begin
          //DataModulo.DataModuleF.qryCadProdutos.SQL.Text := 'select * from usuarios'; Qual a nescessidade desta linha ?
          ShowMessage('Por Favor prencha os campos!');
     end
     else
     begin
          Usuario := edtUsuario.Text;
          Senha := edtSenha.Text;
          qryUsuario.Close;
          qryUsuario.SQL.Text := 'select usuario, senha from usuarios where usuario = ''' + Usuario + '''and senha = ''' + Senha + ''';';
          qryUsuario.Open;
          // Não existia IF na linha 60.?
          if (Usuario = qryUsuariousuario.AsString) and (Senha = qryUsuariosenha.AsString) then
          begin
               MenuPrincipalF := TMenuPrincipalF.Create(Self);
               MenuPrincipalF.ShowModal;
          end
          else
          begin
               ShowMessage('Usuário ou Senha incorretos!');
          end;
     end;
     Close;
end;

procedure TTelaLoginF.Image1Click(Sender: TObject);
begin

end;

end.


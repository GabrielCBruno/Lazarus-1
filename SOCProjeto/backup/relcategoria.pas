unit RelCategoria;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, LR_DBSet,
  LR_Class, ZDataset, ZAbstractRODataset;

type

  { TRelCategoriaF }

  TRelCategoriaF = class(TForm)
    btnRelCategoria: TBitBtn;
    dataSetRelCategoria: TfrDBDataSet;
    frReport1: TfrReport;
    qryRelCategoria: TZQuery;
    qryRelCategoriacategoriaprodutoid: TZIntegerField;
    qryRelCategoriads_categoria_produto: TZRawStringField;
    procedure btnRelCategoriaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  RelCategoriaF: TRelCategoriaF;

implementation

{$R *.lfm}

{ TRelCategoriaF }

procedure TRelCategoriaF.FormShow(Sender: TObject);
begin
  qryRelCategoria.Open;
end;

procedure TRelCategoriaF.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  qryRelCategoria.Close;
  CloseAction:=caFree;
end;

procedure TRelCategoriaF.btnRelCategoriaClick(Sender: TObject);
begin
   frReport1.LoadFromFile('RelCategoria.lrf');
   frReport1.PrepareReport;
   frReport1.ShowReport;
end;

end.


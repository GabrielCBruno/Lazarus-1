unit mSalario;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TSalarioMF }

  TSalarioMF = class(TForm)
    btnCalcular: TButton;
    Jan: TLabel;
    Label1: TLabel;
    lblValorBrutoELiquido: TLabel;
    Out: TLabel;
    Nov: TLabel;
    Dez: TLabel;
    Fev: TLabel;
    Mar: TLabel;
    Abril: TLabel;
    Mai: TLabel;
    Jun: TLabel;
    Jul: TLabel;
    Ago: TLabel;
    Setem: TLabel;
    lblDesconto: TLabel;
    lblSalario: TLabel;
    lblSalarioL1: TLabel;
    lblSalarioL10: TLabel;
    lblSalarioL11: TLabel;
    lblSalarioL12: TLabel;
    lblSalarioL2: TLabel;
    lblSalarioL3: TLabel;
    lblSalarioL4: TLabel;
    lblSalarioL5: TLabel;
    lblSalarioL6: TLabel;
    lblSalarioL7: TLabel;
    lblSalarioL8: TLabel;
    lblSalarioL9: TLabel;
    lblTotalLiquido: TLabel;
    lblValorTotalLiquido1: TLabel;
    Porcent1: TEdit;
    lblValorTotalBruto: TLabel;
    lblTotalBruto: TLabel;
    Mes1: TEdit;
    Mes10: TEdit;
    Mes11: TEdit;
    Mes12: TEdit;
    Mes2: TEdit;
    Mes3: TEdit;
    Mes4: TEdit;
    Mes5: TEdit;
    Mes6: TEdit;
    Mes7: TEdit;
    Mes8: TEdit;
    Mes9: TEdit;
    Porcent10: TEdit;
    Porcent11: TEdit;
    Porcent12: TEdit;
    Porcent2: TEdit;
    Porcent3: TEdit;
    Porcent4: TEdit;
    Porcent5: TEdit;
    Porcent6: TEdit;
    Porcent7: TEdit;
    Porcent8: TEdit;
    Porcent9: TEdit;
    procedure btnCalcularClick(Sender: TObject);
  private

  public

  end;

var
  SalarioMF: TSalarioMF;

implementation

{$R *.lfm}

{ TSalarioMF }

procedure TSalarioMF.btnCalcularClick(Sender: TObject);
var
  sMes1,sMes2,sMes3,sMes4,sMes5,sMes6,sMes7,sMes8,sMes9,sMes10,sMes11,sMes12:Double;
  sMesL1,sMesL2,sMesL3,sMesL4,sMesL5,sMesL6,sMesL7,sMesL8,sMesL9,sMesL10,sMesL11,sMesL12:Double;
  sTotalB,sTotalLi,Porcent:Double;
begin
  //salb * ((SalBruto*Percen.desc)/)
  // 1000 - ((1000* 10)+/100)
  sMes1:= StrToFloat(Mes1.Text);
  Mes1.Caption:=FloatToStr(sMes1);
  Porcent := StrToFloat(Porcent1.Text);
  sMesL1 := (sMes1-(sMes1 * Porcent)/100);
  lblSalarioL1.Caption := FloatToStr(sMesL1);


  sMes2:= StrToFloat(Mes2.Text);
  Mes2.Caption:=FloatToStr(sMes2);
  Porcent := StrToFloat(Porcent2.Text);
  sMesL2 := (sMes2-(sMes2 * Porcent)/100);
  lblSalarioL2.Caption := FloatToStr(sMesL2);

  sMes3:= StrToFloat(Mes3.Text);
  Mes3.Caption:=FloatToStr(sMes3);
  Porcent := StrToFloat(Porcent3.Text);
  sMesL3 := (sMes3-(sMes3 * Porcent)/100);
  lblSalarioL3.Caption := FloatToStr(sMesL3);

  sMes4:= StrToFloat(Mes4.Text);
  Mes4.Caption:=FloatToStr(sMes4);
  Porcent := StrToFloat(Porcent4.Text);
  sMesL4 := (sMes4-(sMes4 * Porcent)/100);
  lblSalarioL4.Caption := FloatToStr(sMesL4);

  sMes5:= StrToFloat(Mes5.Text);
  Mes5.Caption:=FloatToStr(sMes5);
  Porcent := StrToFloat(Porcent5.Text);
  sMesL5 := (sMes5-(sMes5 * Porcent)/100);
  lblSalarioL5.Caption := FloatToStr(sMesL5);

  sMes6:= StrToFloat(Mes6.Text);
  Mes6.Caption:=FloatToStr(sMes6);
  Porcent := StrToFloat(Porcent6.Text);
  sMesL6 := (sMes6-(sMes6 * Porcent)/100);
  lblSalarioL6.Caption := FloatToStr(sMesL6);

  sMes7:= StrToFloat(Mes7.Text);
  Mes7.Caption:=FloatToStr(sMes7);
  Porcent := StrToFloat(Porcent7.Text);
  sMesL7 := (sMes7-(sMes7 * Porcent)/100);
  lblSalarioL7.Caption := FloatToStr(sMesL7);

  sMes8:= StrToFloat(Mes8.Text);
  Mes8.Caption:=FloatToStr(sMes8);
  Porcent := StrToFloat(Porcent8.Text);
  sMesL8 := (sMes8-(sMes8 * Porcent)/100);
  lblSalarioL8.Caption := FloatToStr(sMesL8);

  sMes9:= StrToFloat(Mes9.Text);
  Mes9.Caption:=FloatToStr(sMes9);
  Porcent := StrToFloat(Porcent9.Text);
  sMesL9 := (sMes9-(sMes9 * Porcent)/100);
  lblSalarioL9.Caption := FloatToStr(sMesL9);

  sMes10:= StrToFloat(Mes10.Text);
  Mes10.Caption:=FloatToStr(sMes10);
  Porcent := StrToFloat(Porcent10.Text);
  sMesL10 := (sMes10-(sMes10 * Porcent)/100);
  lblSalarioL10.Caption := FloatToStr(sMesL10);

  sMes11:= StrToFloat(Mes11.Text);
  Mes11.Caption:=FloatToStr(sMes11);
  Porcent := StrToFloat(Porcent11.Text);
  sMesL11 := (sMes11-(sMes11 * Porcent)/100);
  lblSalarioL11.Caption := FloatToStr(sMesL11);

  sMes12:= StrToFloat(Mes12.Text);
  Mes12.Caption:=FloatToStr(sMes12);
  Porcent := StrToFloat(Porcent12.Text);
  sMesL12 := (sMes12-(sMes12 * Porcent)/100);
  lblSalarioL12.Caption := FloatToStr(sMesL12);

  sTotalB:= (sMes1 + sMes2 + sMes3 + sMes4 + sMes5 + sMes6 + sMes7 + sMes8 + sMes9 + sMes10 + sMes11 + sMes12);
  lblValorTotalBruto.Caption := FloatToStr(sTotalB);
  sTotalLi:= (sMesL1 + sMesL2 + sMesL3 + sMesL4 + sMesL5 + sMesL6 + sMesL7 + sMesL8 + sMesL9 + sMesL10 + sMesL11 + sMesL12);
  lblValorTotalLiquido1.Caption:= FloatToStr(sTotalLi);

  lblValorBrutoELiquido.Caption:=floatToStr(sTotalB + sTotalLi);

  if Porcent := '' then
  begin
    Porcent:= 0;
  end;




end;

end.


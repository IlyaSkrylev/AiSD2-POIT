unit ufFirst;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfFirst = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Lift12: TPanel;
    Lestnica11: TPanel;
    Lift11: TPanel;
    Panel12: TPanel;
    sLestnica12: TShape;
    Komnata12: TPanel;
    Vyhod: TPanel;
    Komnata11: TPanel;
    sVyhod: TShape;
    sLift11: TShape;
    sKomnata11: TShape;
    sLestnica11: TShape;
    sLift12: TShape;
    sKomnata12: TShape;
    Lestnica12: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Panel6Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);


  private

  public
    { Public declarations }
  end;

var
  fFirst: TfFirst;


implementation
Uses
  ufStar;

{$R *.dfm}



procedure TfFirst.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  OnPressLeft(Key);
  OnPressRight(Key);
  OnPressGotoRoom(Key);
end;

procedure TfFirst.Panel6Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fFirst.Lestnica12.name;
  Upababap(temp);

end;

procedure TfFirst.Panel7Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fFirst.Lift11.name;
  Upababap(temp);

end;

procedure TfFirst.Panel8Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fFirst.Lestnica11.name;
  Upababap(temp);
end;

procedure TfFirst.Panel9Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fFirst.Lift12.name;
  Upababap(temp);

end;

end.


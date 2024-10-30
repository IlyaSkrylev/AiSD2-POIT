unit ufSecond;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfSecond = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Lift22: TPanel;
    Lestnica21: TPanel;
    Lift21: TPanel;
    Lestnica22: TPanel;
    Panel12: TPanel;
    Komnata22: TPanel;
    MedL: TPanel;
    Komnata23: TPanel;
    Komnata21: TPanel;
    sLestnica22: TShape;
    sMedL: TShape;
    sLift22: TShape;
    sKomnata22: TShape;
    sKomnata21: TShape;
    sLestnica21: TShape;
    sKomnata23: TShape;
    sLift21: TShape;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel6: TPanel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Panel23Click(Sender: TObject);
    procedure Panel20Click(Sender: TObject);
    procedure Panel21Click(Sender: TObject);
    procedure Panel22Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSecond: TfSecond;

implementation

Uses
  ufStar;

{$R *.dfm}



procedure TfSecond.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  OnPressLeft(Key);
  OnPressRight(Key);
  OnPressGotoRoom(Key);
end;

procedure TfSecond.Panel20Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fSecond.Lift21.name;
  Down(temp);
end;

procedure TfSecond.Panel21Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fSecond.Lestnica21.name;
  Down(temp);
end;

procedure TfSecond.Panel22Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fSecond.Lift22.name;
  Down(temp);
end;

procedure TfSecond.Panel23Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fSecond.Lestnica22.name;
  Down(temp);
end;

procedure TfSecond.Panel6Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fSecond.Lestnica21.name;
  Upababap(temp);
end;

procedure TfSecond.Panel7Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fSecond.Lift22.name;
  Upababap(temp);
end;

procedure TfSecond.Panel8Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fSecond.Lestnica22.name;
  Upababap(temp);
end;

procedure TfSecond.Panel9Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fSecond.Lift21.name;
  Upababap(temp);
end;

end.

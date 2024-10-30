unit ufThird;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfThird = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Lift32: TPanel;
    Lestnica31: TPanel;
    Lift31: TPanel;
    Lestnica32: TPanel;
    Panel12: TPanel;
    PunktY: TPanel;
    Komnata31: TPanel;
    Komnata32: TPanel;
    Komnata33: TPanel;
    sLestnica32: TShape;
    SKomnata33: TShape;
    sLift31: TShape;
    sKomnata31: TShape;
    sLestnica31: TShape;
    sKomnata32: TShape;
    sLift32: TShape;
    sPunktY: TShape;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Panel9Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fThird: TfThird;

implementation

Uses
  ufStar;

{$R *.dfm}



procedure TfThird.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  OnPressLeft(Key);
  OnPressRight(Key);
  OnPressGotoRoom(Key);
end;

procedure TfThird.Panel6Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fThird.Lestnica31.name;
  Down(temp);

end;

procedure TfThird.Panel7Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fThird.Lift32.name;
  Down(temp);

end;

procedure TfThird.Panel8Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fThird.Lestnica32.name;
  Down(temp);

end;

procedure TfThird.Panel9Click(Sender: TObject);
Var
  Temp: string;
begin
  Temp := fThird.Lift31.name;
  Down(temp);

end;

end.

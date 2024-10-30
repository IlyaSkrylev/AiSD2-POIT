unit ufStar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, ufFirst, ufSecond, ufThird,
  ufGotoRoom;

type
  TfStar = class(TForm)
    Panel1: TPanel;
    btnstart: TButton;
    procedure btnstartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure OnPressLeft(Var Key: word);
  Procedure OnPressRight(Var Key: word);
  Procedure OnPressGotoRoom(Var Key: word);
  Procedure Upababap(Var Place: string);
  Procedure Down(Var Place: string);

Type
  Data = record
    Place: string;
    LPlace: string;
    RPlace: string;
    LTurn: char;
    RTurn: char;
    Obj: TShape;
    Floor: TForm;
    gotoR: char;
  end;

var
  fStar: TfStar;
  Gun: Boolean;
  Now: Data;
  Keys: array[1..3] of string;
  nKeys: byte;
  FirstPlace: Data;

implementation

{$R *.dfm}

Type
  TArr = array[1..23] of data;

Var
  Arr: TArr;


procedure TfStar.btnstartClick(Sender: TObject);
Var
  I, J: byte;
  temp: byte;
  Nfloor: TForm;
  NPers: TShape;
  Start: string;
  Flag: Boolean;
  
begin
  NKeys := 0;
  Gun := False;
  Arr[1].Place := 'Lift11';
  Arr[1].LPlace := 'Lestnica11';
  Arr[1].RPlace := 'Vyhod';
  Arr[1].LTurn := #38;
  Arr[1].RTurn := #39;
  Arr[1].Floor := FFirst;
  Arr[1].Obj := FFirst.sLift11;

  Arr[2].Place := 'Lestnica11';
  Arr[2].LPlace := 'Komnata11';
  Arr[2].RPlace := 'Lift11';
  Arr[2].LTurn := #39;
  Arr[2].RTurn := #40;
  Arr[2].Obj := FFirst.sLestnica11;
  Arr[2].Floor := FFirst;

  Arr[3].Place := 'Komnata11';
  Arr[3].LPlace := 'Lift12';
  Arr[3].RPlace :='Lestnica11';
  Arr[3].LTurn := #39;
  Arr[3].RTurn := #37;
  Arr[3].Obj :=FFirst.sKomnata11;
  Arr[3].Floor := FFirst;
  Arr[3].gotoR := #38;

  Arr[4].Place := 'Lift12';
  Arr[4].LPlace := 'Komnata12';
  Arr[4].RPlace := 'Komnata11';
  Arr[4].LTurn := #40;
  Arr[4].RTurn := #37;
  Arr[4].Obj := FFirst.sLift12;
  Arr[4].Floor := FFirst;

  Arr[5].Place := 'Komnata12';
  Arr[5].LPlace := 'Lestnica12';
  Arr[5].RPlace := 'Lift12';
  Arr[5].LTurn := #40;
  Arr[5].RTurn := #38;
  Arr[5].Obj := FFirst.sKomnata12;
  Arr[5].Floor := FFirst;
  Arr[5].gotoR := #39;

  Arr[6].Place := 'Lestnica12';
  Arr[6].LPlace := 'Vyhod';
  Arr[6].RPlace := 'Komnata12';
  Arr[6].LTurn := #37;
  Arr[6].RTurn := #38;
  Arr[6].Obj := FFirst.sLestnica12;
  Arr[6].Floor := FFirst;

  Arr[7].Place := 'Vyhod';
  Arr[7].LPlace := 'Lift11';
  Arr[7].RPlace := 'Lestnica12';
  Arr[7].LTurn := #37;
  Arr[7].RTurn := #39;
  Arr[7].Obj := FFirst.sVyhod;
  Arr[7].Floor := FFirst;
  Arr[7].GotoR := #40;

  /////////////////////////////////////////////

  Arr[8].Place := 'Lift21';
  Arr[8].LPlace := 'Lestnica21';
  Arr[8].RPlace := 'Komnata23';
  Arr[8].LTurn := #38;
  Arr[8].RTurn := #39;
  Arr[8].Obj := FSecond.sLift21;
  Arr[8].Floor := FSecond;

  Arr[9].Place := 'Lestnica21';
  Arr[9].LPlace := 'Komnata21';
  Arr[9].RPlace := 'Lift21';
  Arr[9].LTurn := #39;
  Arr[9].RTurn := #40;
  Arr[9].Obj := FSecond.sLestnica21;
  Arr[9].Floor :=FSecond;

  Arr[10].Place := 'Komnata21';
  Arr[10].LPlace := 'Komnata22';
  Arr[10].RPlace := 'Lestnica21';
  Arr[10].LTurn := #39;
  Arr[10].RTurn := #37;
  Arr[10].Obj := FSecond.sKomnata21;
  Arr[10].Floor := FSecond;
  Arr[10].gotoR := #38;

  Arr[11].Place := 'Komnata22';
  Arr[11].LPlace := 'Lift22';
  Arr[11].RPlace := 'Komnata21';
  Arr[11].LTurn := #39;
  Arr[11].RTurn := #37;
  Arr[11].Obj := FSecond.sKomnata22;
  Arr[11].Floor := FSecond;
  Arr[11].gotoR := #38;

  Arr[12].Place := 'Lift22';
  Arr[12].LPlace := 'MedL';
  Arr[12].RPlace := 'Komnata22';
  Arr[12].LTurn := #40;
  Arr[12].RTurn := #37;
  Arr[12].Obj :=FSecond.sLift22;
  Arr[12].Floor := FSecond;

  Arr[13].Place := 'MedL';
  Arr[13].LPlace := 'Lestnica22';
  Arr[13].RPlace := 'Lift22';
  Arr[13].LTurn := #40;
  Arr[13].RTurn := #38;
  Arr[13].Obj := FSecond.sMedL;
  Arr[13].Floor := FSecond;
  Arr[13].gotoR := #39;

  Arr[14].Place := 'Lestnica22';
  Arr[14].LPlace := 'Komnata23';
  Arr[14].RPlace := 'MedL';
  Arr[14].LTurn := #37;
  Arr[14].RTurn := #38;
  Arr[14].Obj := FSecond.sLestnica22;
  Arr[14].Floor := FSecond;

  Arr[15].Place := 'Komnata23';
  Arr[15].LPlace := 'Lift21';
  Arr[15].RPlace := 'Lestnica22';
  Arr[15].LTurn := #37;
  Arr[15].RTurn := #39;
  Arr[15].Obj := FSecond.sKomnata23;
  Arr[15].Floor := FSecond;
  Arr[15].gotoR := #40;

  //////////////////////////////////////////

  Arr[16].Place := 'Lift31';
  Arr[16].LPlace := 'Komnata31';
  Arr[16].RPlace := 'Komnata33';
  Arr[16].LTurn := #38;
  Arr[16].RTurn := #39;
  Arr[16].Obj := FThird.sLift31;
  Arr[16].Floor := FThird;

  Arr[17].Place :='Komnata31';
  Arr[17].LPlace := 'Lestnica31';
  Arr[17].RPlace := 'Lift31';
  Arr[17].LTurn := #38;
  Arr[17].RTurn := #40;
  Arr[17].Obj := FThird.sKomnata31;
  Arr[17].Floor := FThird;
  Arr[17].gotoR := #37;

  Arr[18].Place := 'Lestnica31';
  Arr[18].LPlace := 'Komnata32';
  Arr[18].RPlace := 'Komnata31';
  Arr[18].LTurn := #39;
  Arr[18].RTurn := #40;
  Arr[18].Obj := FThird.sLestnica31;
  Arr[18].Floor := FThird;

  Arr[19].Place := 'Komnata32';
  Arr[19].LPlace := 'Lift32';
  Arr[19].RPlace := 'Lestnica31';
  Arr[19].LTurn := #39;
  Arr[19].RTurn := #37;
  Arr[19].Obj := FThird.sKomnata32;
  Arr[19].Floor := FThird;
  Arr[19].gotoR := #38;

  Arr[20].Place := 'Lift32';
  Arr[20].LPlace := 'PunktY';
  Arr[20].RPlace := 'Komnata32';
  Arr[20].LTurn := #40;
  Arr[20].RTurn := #37;
  Arr[20].Obj :=FThird.sLift32;
  Arr[20].Floor := FThird;

  Arr[21].Place := 'PunktY';
  Arr[21].LPlace := 'Lestnica32';
  Arr[21].RPlace := 'Lift32';
  Arr[21].LTurn := #40;
  Arr[21].RTurn := #38;
  Arr[21].Obj := FThird.sPunktY;
  Arr[21].Floor := FThird;
  Arr[21].gotoR := #39;

  Arr[22].Place := 'Lestnica32';
  Arr[22].LPlace := 'Komnata33';
  Arr[22].RPlace := 'PunktY';
  Arr[22].LTurn := #37;
  Arr[22].RTurn := #38;
  Arr[22].Obj := FThird.sLestnica32;
  Arr[22].Floor :=FThird;

  Arr[23].Place := 'Komnata33';
  Arr[23].LPlace := 'Lift31';
  Arr[23].RPlace := 'Lestnica32';
  Arr[23].LTurn := #37;
  Arr[23].RTurn := #39;
  Arr[23].Obj := FThird.sKomnata33;
  Arr[23].Floor := FThird;
  Arr[23].gotoR := #40;

  randomize;
  temp := random(3) + 1;
  Start := 'Komnata' + IntToStr(Temp);
  case temp of
    1:
    begin
      temp := random(2) + 1;
      fFirst.Show;
      fFirst.SetFocus;
    end;
    2:
    begin
      temp := random(3) + 1;
      fSecond.Show;
      fSecond.SetFocus;
    end;
    3:
    begin
      temp := random(3) + 1;
      fThird.Show;
      fThird.SetFocus;
    end;
  end;
  Start := Start + IntToStr(Temp);

  for I := 1 to 23 do
  begin
    if Arr[I].Place = Start then
    begin
      Arr[I].Obj.Visible := True;
      Now := Arr[I];
      break;

    end;
  end;

  I := 1;
  while I <= 3 do
  begin
    Temp := random(3) + 1;
    Keys[I] := 'Komnata' + IntToStr(Temp);

    case temp of  
      1: Temp := random(2) + 1;
      2, 3: Temp := random(3) + 1;
    end;

    Keys[I] := Keys[I] + IntToStr(Temp);

    Flag := True;
    for J := 1 to I-1 do
    begin
      if Keys[I] = Keys[J] then
        flag := false
      else
        if Keys[I] = Start then
          flag := False;
          
    end;

    if Flag then
      Inc(I);

  end;


  fThird.Panel12.Color := rgb(125,185,94);
  fThird.Panel2.Color := rgb(125,185,94);
  fThird.Panel3.Color := rgb(125,185,94);
  fThird.Panel4.Color := rgb(125,185,94);
  fThird.Panel5.Color := rgb(125,185,94);
  fThird.Panel1.Color := rgb(163,233,164);

  fThird.Komnata31.Color := rgb(70,185,94);
  fThird.Komnata32.Color := rgb(70,185,94);
  fThird.Komnata33.Color := rgb(70,185,94);
  fThird.PunktY.Color := rgb(70,185,94);
  fThird.Panel6.Color := rgb(70,185,94);
  fThird.Panel7.Color := rgb(70,185,94);
  fThird.Panel8.Color := rgb(70,185,94);
  fThird.Panel9.Color := rgb(70,185,94);

  fSecond.Komnata21.Color := rgb(174,177,167);
  fSecond.Komnata22.Color := rgb(174,177,167);
  fSecond.Komnata23.Color := rgb(174,177,167);
  fSecond.MedL.Color := rgb(174,177,167);
  fSecond.Lestnica21.Color := rgb(174,177,167);
  fSecond.Lestnica22.Color := rgb(174,177,167);
  fSecond.Lift21.Color := rgb(174,177,167);
  fSecond.Lift22.Color := rgb(174,177,167);


  fFirst.Panel12.Color := rgb(85,85,85);
  fFirst.Panel2.Color := rgb(85,85,85);
  fFirst.Panel3.Color := rgb(85,85,85);
  fFirst.Panel4.Color := rgb(85,85,85);
  fFirst.Panel5.Color := rgb(85,85,85);

  fFirst.Komnata11.Color := rgb(62,62,62);
  fFirst.Komnata12.Color := rgb(62,62,62);
  fFirst.Vyhod.Color := rgb(62,62,62);
  fFirst.Panel6.Color := rgb(62,62,62);
  fFirst.Panel7.Color := rgb(62,62,62);
  fFirst.Panel8.Color := rgb(62,62,62);
  fFirst.Panel9.Color := rgb(62,62,62);

  FirstPlace := Now;
end;

Procedure FindLeft();
Var
  I: integer;
begin
  for I := 1 to 23 do
  begin
    if Arr[I].RPlace = Now.Place then
    begin
      Now.Obj.Visible := False;
      Arr[I].Obj.Visible := True;
      Now := Arr[I];
      break;
    end;

  end;

end;

Procedure FindRight();
Var
  I: integer;
begin
  for I := 1 to 23 do
  begin
    if Arr[I].LPlace = Now.Place then
    begin
      Now.Obj.Visible := False;
      Arr[I].Obj.Visible := True;
      Now := Arr[I];
      break;
    end;

  end;

end;

Procedure OnPressLeft(Var Key: word);
begin
  if Key = Ord(Now.LTurn) then
  begin
    Key := VK_ESCAPE;
    FindLeft;
  end;
end;

Procedure OnPressRight(Var Key: word);
begin
  if Key = Ord(Now.RTurn) then
  begin
    Key := VK_ESCAPE;
    FindRight;
  end;
end;

Procedure OnPressGotoRoom(Var Key: word);
begin
  if Key = Ord(Now.GotoR) then
  begin
    Key := VK_ESCAPE;
    fGotoRoom.ShowModal;
  end;
end;

Procedure Upababap(Var Place: string);
Var
  I: byte;
  Temp: string;
begin
  if Place = Now.Place then
  begin
      
    if Now.Floor = FFirst then
    begin  
      I := 1;
      fFirst.Close;
      fSecond.Show;
      fSecond.SetFocus;
      while Now.Place[I] <> '1' do
      begin
        Temp := Temp + Now.Place[I];
        Inc(I);
      end;
      Inc(I);
      Temp := Temp + '2' + Now.Place[I];
      

    end;

    if Now.Floor = FSecond then
    begin  
      fSecond.Close;
      FThird.Show;
      FThird.SetFocus;
      I := 1;
      while Now.Place[I] <> '2' do
      begin
        Temp := Temp + Now.Place[I];
        Inc(I);
      end;
      Inc(I);
      Temp := Temp + '3' + Now.Place[I];
      

    end;

    

    for I := 1 to 23 do
    begin
      if Arr[I].Place = Temp then
      begin
        Now.Obj.Visible := False;
        Arr[I].Obj.Visible := True;
        Now := Arr[I];
        break;
      end;

    end;
      
    
  end
  else
    ShowMessage('Вы не можете пользоваться лифтом с этого места!');
end;


Procedure Down(Var Place: string);
Var
  I: byte;
  Temp: string;
begin
  if Place = Now.Place then
  begin
      
    if Now.Floor = FSecond then
    begin  
      fSecond.Close;
      fFirst.Show;
      fFirst.SetFocus;
      I := 1;
      while Now.Place[I] <> '2' do
      begin
        Temp := Temp + Now.Place[I];
        Inc(I);
      end;
      Inc(I);
      Temp := Temp + '1' + Now.Place[I];
      

    end;

    if Now.Floor = FThird then
    begin  
      fThird.Close;
      FSecond.Show;
      FSecond.SetFocus;
      I := 1;
      while Now.Place[I] <> '3' do
      begin
        Temp := Temp + Now.Place[I];
        Inc(I);
      end;
      Inc(I);
      Temp := Temp + '2' + Now.Place[I];
      

    end;

    

    for I := 1 to 23 do
    begin
      if Arr[I].Place = Temp then
      begin
        Now.Obj.Visible := False;
        Arr[I].Obj.Visible := True;
        Now := Arr[I];
        break;
      end;

    end;
      
    
  end
  else
    ShowMessage('Вы не можете пользоваться лифтом с этого места!');
end;

end.

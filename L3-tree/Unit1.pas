unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, math;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lCon: TLabel;
    lSim: TLabel;
    lPr: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    eNumEl: TEdit;
    Button1: TButton;
    el1: TShape;
    el2: TShape;
    el3: TShape;
    el4: TShape;
    el5: TShape;
    el6: TShape;
    el7: TShape;
    el8: TShape;
    el9: TShape;
    el10: TShape;
    el11: TShape;
    el12: TShape;
    el13: TShape;
    el14: TShape;
    el15: TShape;
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    l8: TLabel;
    l9: TLabel;
    l10: TLabel;
    l11: TLabel;
    l12: TLabel;
    l13: TLabel;
    l14: TLabel;
    l15: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lN: TLabel;
    lK: TLabel;
    s21: TShape;
    s22: TShape;
    s32: TShape;
    s31: TShape;
    s41: TShape;
    s42: TShape;
    s52: TShape;
    s62: TShape;
    s72: TShape;
    s51: TShape;
    s61: TShape;
    s71: TShape;
    s91: TShape;
    s92: TShape;
    s82: TShape;
    s102: TShape;
    s112: TShape;
    s122: TShape;
    s132: TShape;
    s142: TShape;
    s152: TShape;
    s81: TShape;
    s101: TShape;
    s111: TShape;
    s121: TShape;
    s131: TShape;
    s141: TShape;
    s151: TShape;
    Label8: TLabel;
    eU: TEdit;
    btnU: TButton;
    Shape1: TShape;
    p21: TShape;
    p22: TShape;
    p32: TShape;
    p31: TShape;
    p72: TShape;
    p71: TShape;
    p152: TShape;
    p151: TShape;
    p142: TShape;
    p122: TShape;
    p102: TShape;
    p82: TShape;
    p81: TShape;
    p101: TShape;
    p121: TShape;
    p141: TShape;
    p92: TShape;
    p91: TShape;
    p132: TShape;
    p131: TShape;
    p42: TShape;
    p41: TShape;
    p61: TShape;
    p62: TShape;
    p52: TShape;
    p51: TShape;
    p112: TShape;
    p111: TShape;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btnUClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

  const
    max = 15;

  type
    arr = array[1..max] of byte;


var
  Form1: TForm1;
  a: arr;
  count: byte;
  strk: string;
  Pred: TShape;
  flags: array[1..max] of boolean;

implementation

{$R *.dfm}

procedure GetRandArr(const count: byte; out res: arr);
var
  i, j, tmp: byte;
  flag: boolean;
begin
  randomize;
  for i := 1 to count do
  begin
    flag := true;
    //while flag do
    //begin
      flag := false;
      res[i] := random(60)+10;
       for j := 1 to i - 1 do
         if res[j] = res[i] then
          flag := true;
   // end;
  end;
end;

procedure ChangeEle(var x: byte; var a: arr; var count: byte);
var
  flag: boolean;
  i, j: integer;
begin
  randomize;
  flag := true;
  while flag do
  begin
    flag := false;
    x := random(60)+10;
    for j := 1 to count do
      if x = a[j] then
        flag := true;
  end;
end;

type
  tarr = array[1..31] of byte;
procedure rectree(var a: tarr; var res: string; var tmp: arr; var i: integer; const typ: byte);
Var
  li: TShape;
begin
  if tmp[i] = 1 then
  begin
    if (a[2*i] <> 0) and (a[2*i] <> 100) then
    begin
      i := 2*i;
      Inc(tmp[i]);
      if tmp[i] = typ then
        res := res + '|' + IntTostr(a[i]) + '|, '
      else
        res := res + IntTostr(a[i]) + ', ';
      rectree(a, res, tmp, i, typ);
    end;

    if (a[2*i] = 0) and (tmp[1] < 3) then
    begin
      // 0
      res := res + IntTostr(a[2*i]) + ', ';
    end;

    if tmp[i] < 3 then
    begin
      Inc(tmp[i]);
      if tmp[i] = typ then
        res := res + '|' + IntTostr(a[i]) + '|, '
      else
        res := res + IntTostr(a[i]) + ', ';
      rectree(a, res, tmp, i, typ);

    end;
  end;

  if tmp[i] = 2 then
  begin
    if (a[2*i + 1] <> 0) and (a[2*i + 1] <> 100) then
    begin
      i := 2*i + 1;
      Inc(tmp[i]);
      if tmp[i] = typ then
        res := res + '|' + IntTostr(a[i]) + '|, '
      else
        res := res + IntTostr(a[i]) + ', ';
      rectree(a, res, tmp, i, typ);
    end;

    if (a[2*i + 1] = 0) and (tmp[1] < 3) then
    begin
      if i <> 1 then
      begin
        li := Form1.FindComponent('p' + inttostr(i) + '1') as TShape;
        li.Visible := True;

        li := Form1.FindComponent('p' + inttostr(i) + '2') as TShape;
        li.Visible := True;
      end;
      res := res + IntTostr(a[2*i+1]) + ', ';
    end;

    if tmp[i] < 3 then
    begin
      Inc(tmp[i]);
      if tmp[i] = typ then
        res := res + '|' + IntTostr(a[i]) + '|, '
      else
        res := res + IntTostr(a[i]) + ', ';
    end;
    if i <> 1 then
    begin
      i := i div 2;
      Inc(tmp[i]);
      if tmp[i] = typ then
        res := res + '|' + IntTostr(a[i]) + '|, '
      else
        res := res + IntTostr(a[i]) + ', ';
      rectree(a, res, tmp, i, typ);
    end;
  end;


end;

function tree(var a: arr; var count: byte; const typ: byte): string;
Var
  I, j: integer;
  tmp: arr;
  myarr: tarr;
  res: string;
begin
  for i := 1 to max do
  begin
    tmp[i] := 0;
  end;

  for i := 1 to 31 do
    myarr[i] := 100;

  j := 1;
  for i := 1 to max do
  begin
    if a[i] > 0 then
    begin
      myarr[i] := a[i];
    end
    else
    if a[i div 2] <> 0 then
      myarr[i] := 0;

  end;

  for i := max + 1 to 31 do
  begin
    if a[i div 2] > 0 then
      myarr[i] := 0;
  end;

  i:= 1;
  Inc(tmp[i]);
  if tmp[i] = typ then
    res := res + '|' + IntTostr(a[i]) + '|, '
  else
    res := res + IntTostr(a[i]) + ', ';
  rectree(myarr, res, tmp, i, typ);
  result := res;
end;


procedure TForm1.btnUClick(Sender: TObject);
Var
  nA: arr;
  flag: boolean;
  i, j, k, tmp, temp: byte;
  El: TShape;
  l: TLabel;
  Li: TShape;
  str: string;
begin
  for i := 1 to max do
    flags[i] := false;
  flag := true;
  try
    flag := false;
    tmp := StrToInt(eU.Text);

    for i := 1 to count do
      if a[i] = tmp then
      begin
        flag := true;
      end;

    if not flag then
      showmessage('Число не найдено!');
  except
    flag := false;
    showmessage('В поле должно находиться число!')
  end;

  if flag then
  begin

    for i := 1 to max do
  begin
    el := Form1.FindComponent('el' + inttostr(i)) as TShape;
    el.Visible := false;
    el.Brush.Color := clWhite;

    l := Form1.FindComponent('l' + inttostr(i)) as TLabel;
    l.Visible := false;

    if i <> 1 then
    begin
      li := Form1.FindComponent('s' + inttostr(i) + '1') as TShape;
      li.Visible := false;

      li := Form1.FindComponent('s' + inttostr(i) + '2') as TShape;
      li.Visible := false;

      li := Form1.FindComponent('p' + inttostr(i) + '1') as TShape;
      li.Visible := false;

      li := Form1.FindComponent('p' + inttostr(i) + '2') as TShape;
      li.Visible := false;
    end;
  end;

    for I := 1 to count do
      if a[i] = tmp then
      begin
        for j := i to count do
          a[j] := a[j+1];
        break;
      end;
    Dec(Count);

    for I := 1 to 15 do
      nA[i] := 0;

    k := 1;
    nA[1] := A[1];
    for i := 2 to count do
    begin
      temp := 1;
      J := 0;
      while True do
      begin
        if a[i] <= na[temp] then
          temp := temp * 2
        else
          temp := temp * 2 + 1;

        if temp > 15 then
        begin
          if j = 210 then
          begin
            flag := false;
            break;
          end;
          randomize;
          a[i] := random(60) + 10;
          temp := 1;
          inc(j);
        end;

        if na[temp] = 0 then
        begin
          inc(k);
          na[temp] := a[i];
          break;
        end;

      end;

      if not flag then
      begin
        showmessage('Массив был уменьшен');
        break;
      end;
    end;

    str := '';
    for i := 1 to count do
      str := str + inttostr(a[i]) + ', ';
    Form1.ln.caption := str;

    str := '';
    for i := 1 to k do
      str := str + inttostr(a[i]) + ', ';
    Form1.lk.caption := str;

    count := k;


    for i := 1 to max do
    begin
      if na[i] <> 0 then
      begin
        el := Form1.FindComponent('el' + inttostr(i)) as TShape;
        el.Visible := true;
        el.Brush.Color := clWhite;

        l := Form1.FindComponent('l' + inttostr(i)) as TLabel;
        l.Visible := true;
        l.Caption := IntToStr(na[i]);

        if i <> 1 then
        begin
          li := Form1.FindComponent('s' + inttostr(i) + '1') as TShape;
          li.Visible := true;
          li := Form1.FindComponent('s' + inttostr(i) + '2') as TShape;
          li.Visible := true;
        end;
      end;
    end;
    Form1.lCon.Caption := tree(na, count, 3);
    Form1.lSim.Caption := tree(na, count, 2);
    Form1.lPr.Caption := tree(na, count, 1);
    strk := lPr.Caption;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
Var
  nA: arr;
  flag: boolean;
  i, j, k, tmp, temp: byte;
  El: TShape;
  l: TLabel;
  Li: TShape;
  str: string;
begin
  for i := 1 to max do
    flags[i] := false;
  flag := true;
  try
    count := StrToInt(eNumEl.Text);
    if (count <= 0) or (count > 15) then
    begin
      flag := false;
      showmessage('В поле должно быть число от 1 до 15!');

    end;

  except
    flag := false;
    showmessage('В поле должно находиться число!')
  end;

  if flag then
  begin
    GetRandArr(count, A);

    for i := 1 to max do
  begin
    el := Form1.FindComponent('el' + inttostr(i)) as TShape;
    el.Visible := false;

    l := Form1.FindComponent('l' + inttostr(i)) as TLabel;
    l.Visible := false;

    if i <> 1 then
    begin
      li := Form1.FindComponent('s' + inttostr(i) + '1') as TShape;
      li.Visible := false;

      li := Form1.FindComponent('s' + inttostr(i) + '2') as TShape;
      li.Visible := false;

      li := Form1.FindComponent('p' + inttostr(i) + '1') as TShape;
      li.Visible := false;
      li.Pen.Color := clGray;

      li := Form1.FindComponent('p' + inttostr(i) + '2') as TShape;
      li.Visible := false;
      li.Pen.Color := clGray;
    end;
  end;

  for I := 1 to 15 do
      nA[i] := 0;

    k := 1;
    nA[1] := A[1];
    for i := 2 to count do
    begin
      temp := 1;
      J := 0;
      while True do
      begin
        if a[i] <= na[temp] then
          temp := temp * 2
        else
          temp := temp * 2 + 1;

        if temp > 15 then
        begin
          if j = 210 then
          begin
            flag := false;
            break;
          end;
          randomize;
          a[i] := random(60) + 10;
          temp := 1;
          inc(j);
        end;

        if na[temp] = 0 then
        begin
          inc(k);
          na[temp] := a[i];
          break;
        end;

      end;

      if not flag then
      begin
        showmessage('Массив был уменьшен');
        break;
      end;
    end;

    str := '';
    for i := 1 to count do
      str := str + inttostr(a[i]) + ', ';
    Form1.ln.caption := str;

    str := '';
    for i := 1 to k do
      str := str + inttostr(a[i]) + ', ';
    Form1.lk.caption := str;
    count := k;


    for i := 1 to max do
    begin
      if na[i] <> 0 then
      begin
        el := Form1.FindComponent('el' + inttostr(i)) as TShape;
        el.Visible := true;

        l := Form1.FindComponent('l' + inttostr(i)) as TLabel;
        l.Visible := true;
        l.Caption := IntToStr(na[i]);

        if i <> 1 then
        begin
          li := Form1.FindComponent('s' + inttostr(i) + '1') as TShape;
          li.Visible := true;
          li := Form1.FindComponent('s' + inttostr(i) + '2') as TShape;
          li.Visible := true;
        end;
      end;
    end;
    Form1.lCon.Caption := tree(na, count, 3);
    Form1.lSim.Caption := tree(na, count, 2);
    Form1.lPr.Caption := tree(na, count, 1);
    strk := lPr.Caption;

  end;
end;


procedure TForm1.Button2Click(Sender: TObject);
Var
  temp: string;
  tmp, i: byte;
  el: TShape;
  l: TLabel;
begin
  if length(strk) > 0 then
  begin
  if (strk[1] <> '|') then
    Pred.Brush.Color := clWhite;


  temp := '';
  while length(temp) < 2 do
    if ((strk[1] <> '1') and (strk[1] <> '2') and (strk[1] <> '3') and (strk[1] <> '4') and (strk[1] <> '5') and (strk[1] <> '6') and (strk[1] <> '7') and (strk[1] <> '8') and (strk[1] <> '9') and (strk[1] <> '0')) or ((strk[1] = '0') and (length(temp) = 0)) then
      delete(strk, 1, 1)
    else
    begin
      temp := temp + strk[1];
      delete(strk,1,1);
    end;
  delete(strk,1,1);

  tmp := StrToInt(temp);
  for I := 1 to max do
  begin
    l := Form1.FindComponent('l'+ IntToStr(i)) as TLabel;
    if (l.caption = temp) then
    begin
      el := Form1.FindComponent('el'+ IntToStr(i)) as TShape;
      el.Brush.Color := clYellow;
      flags[i] := true;
      break;
    end;
  end;


  Pred := el;

  end;
end;

end.

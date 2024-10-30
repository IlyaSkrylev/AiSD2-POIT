program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Generics.Collections;

Const
  N = 6;
  M = 12;

  Pro: array[1..N, 1..M] of byte =
  ((6,4,3,4,6,8,5,9,7,50,0,0),
   (3,2,1,6,8,9,7,4,3,1,50,50),
   (2,1,2,3,1,6,1,8,9,7,50,50),
   (5,3,5,6,6,7,8,2,1,8,50,50),
   (5,4,3,2,1,8,7,6,3,2,1,50),            // 278
   (5,9,3,1,2,9,7,6,4,2,1,50));

Type
  Data = record
    Prior: byte;
    Proc: byte;
    NProc: byte;
    Ent: byte;
  end;

Procedure Swap (var x,y: data);
var
  temp: data;
begin
  temp := x;
  x := y;
  y := temp;
end;


Var
  Q: TQueue<Data>;
  Element: Data;
  stand, o, TimeWork, Entering: integer;
  i, j, NN: byte;
  Res: array[1..N] of string;
  tmp: array[1..N] of byte;
  flag, bot: boolean;
  kpd: extended;
  Processing: array[1..N, 1..M] of byte =
  ((6,4,3,4,6,8,5,9,7,50,0,0),
   (3,2,1,6,8,9,7,4,3,1,50,50),
   (2,1,2,3,1,6,1,8,9,7,50,50),
   (5,3,5,6,6,7,8,2,1,8,50,50),
   (5,4,3,2,1,8,7,6,3,2,1,50),            // 278
   (5,9,3,1,2,9,7,6,4,2,1,50));

  arr: array[1..N] of data;
  result: array[1..N] of String;

begin
  write('Введите количество тактов, выделяемых процессором для обработки 1 процесса: ');
  readln(TimeWork);
  write('Введите количество тактов для ввода данных: ');
  readln(Entering);
  writeln;
  Q := TQueue<Data>.Create;
  for I := 1 to N do
  begin
    case i of
      1: Element.Prior := 1;
      2, 3, 4: Element.Prior := 2;
      5, 6: Element.Prior := 3;
    end;
    Element.Proc := i;
    Element.NProc := 1;
    Element.Ent := 0;
    Q.Enqueue(Element);
  end;
  for I := 1 to N do
    result[i] := '|';
  NN := N;
  Stand := 0;
  o := 0;

  while NN <> 0 do
  begin
    Element := Q.Peek;
    i := 2;
    for I := 1 to TimeWork do
    begin
      inc(o);
      //if (Processing[Element.Proc,Element.NProc] = 0) then
      //  Stand := Stand + 1;

      if (Processing[Element.Proc,Element.NProc] > 0) and (Element.Ent = 0)  then
      begin
        res[Element.Proc] := res[Element.Proc] + 'п';
        Dec(Processing[Element.Proc,Element.NProc]);
        flag := true;
      end
      else
      begin
        flag := false;
        Stand := Stand + 1;
      end;

      for J := 1 to N do
      begin
        if (j <> Element.Proc) or not flag then

        if (tmp[j] > 0)  then
        begin
          res[j] := res[j] + 'в';
          tmp[j] := tmp[j] - 1


        end
        else
        begin
          if (j <> Element.Proc) then
            res[j] := res[j] + ' '
          else
            if not flag then
              res[j] := res[j] + ' ';
        end;

        if (j = Element.Proc) and flag and (Processing[Element.Proc,Element.NProc] = 0) then
        begin
          tmp[Element.Proc] := Entering;
          flag := false;

        end;


      end;

    end;

    for I := 1 to N do
    begin
        result[i] := result[i] + res[i];
        res[i] := '';
        result[i] := result[i] + '|';
    end;

    if Length(result[1]) + Entering + 1 > 230 then
    begin
      for I := 1 to N do
      begin
        writeln(result[i]);
        result[i] := '|';
      end;
      writeln;
    end;



    if Processing[Element.Proc,Element.NProc] = 0 then
      Element.NProc := Element.NProc + 1;
    Element.Ent := tmp[Element.Proc];
    Arr[1] := Element;

    flag := false;
    if Processing[Element.Proc,Element.NProc] = 50 then
    begin
      NN := NN - 1;
      Q.Dequeue;
      flag := true;


    end;

    if flag then
      i := 1
    else
    begin
      q.Dequeue;
      i := 2;
    end;
    while i <= NN do
    begin
      arr[i] := Q.Peek;
      q.Dequeue;
      Inc(i);
    end;


    for i := 1 to N do
      for j := 1 to N do
        if arr[i].Proc = j then
          arr[i].Ent := tmp[j];
    Q.Clear;
    Q.Free;

    if  not flag then
    begin
      Swap(Arr[1],arr[NN]);
      if NN > 2 then
      for I := 1 to NN-2 do
      begin
        swap(Arr[I],Arr[I+1]);
      end;


    for I := NN downto 2 do
    begin
      if (Arr[I].Prior < Arr[I-1].Prior) then
        Swap(Arr[I],Arr[i-1])
      else
        break;
    end;

    if NN > 1 then
    for I := 2 to NN do
    if (Arr[1].Ent <> 0) and (NN > 1) then
      swap(Arr[1], Arr[I])
      else
        break;

    end;


    Q := TQueue<Data>.Create;
    for I := 1 to NN do
    begin
      Element := Arr[I];
      Q.Enqueue(Element);
    end;



  end;

  flag := false;
  for j := 1 to N do
    if tmp[j] > 0 then
      flag := true;
  while flag do
  begin
  for I := 1 to TimeWork do
  begin
    inc(o);
    for J := 1 to N do
    begin
      bot := true;
      if tmp[j] > 0 then
      begin
        result[j] := result[j] + 'в';
        Dec(tmp[j]);
        if bot then
        begin
          inc(Stand);
          bot := false;
        end;
      end
      else
        result[j] := result[j] + ' ';
    end;
  end;

  for J := 1 to N do
      result[j]:= result[j] + '|';

  flag := false;
  for j := 1 to N do
    if tmp[j] > 0 then
      flag := true;

  end;

  for I := 1 to N do
      begin
        writeln(result[i]);
        result[i] := '';
      end;

  writeln;
  writeln('Время работы процессора: ', o);
  writeln('Время простоя процессора: ', Stand);
  kpd := (o-stand)/o*100;
  if kpd = 100 then
    writeln('КПД процессора: ', kpd:3:0, '%')
  else
    writeln('КПД процессора: ', kpd:2:0, '%');
  readln;
end.

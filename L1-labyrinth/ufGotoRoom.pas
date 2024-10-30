unit ufGotoRoom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ufFirst, ufSecond, ufThird;

type
  TfGotoRoom = class(TForm)
    btnYes: TButton;
    btnNo: TButton;
    Label1: TLabel;
    procedure btnYesClick(Sender: TObject);
    procedure btnNoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGotoRoom: TfGotoRoom;

implementation
Uses
  ufStar;

{$R *.dfm}

procedure TfGotoRoom.btnNoClick(Sender: TObject);
begin
  fGotoRoom.Close;
end;

procedure TfGotoRoom.btnYesClick(Sender: TObject);
Var
  Chance: integer;
  Murder: byte;
  I: byte;
  S: string;
begin
  fGotoRoom.Close;
  if (Now.Place <> 'Vyhod') and (Now.Place <> 'MedL') and (Now.Place <> 'PunktY') then
  begin
    Murder := Random(2) + 1;

    if Gun then
      Chance := random(75) + 26
    else
      Chance := Random(100) + 1;



    if Murder = 1 then
    begin
      Gun := False;
      if Chance > 50 then
      begin
        s := '�������� ��� � �������, �� �� ��������!';
        for I := 1 to 3 do
          if Keys[I] = Now.Place then
          begin
            Inc(NKeys);
            Keys[I] := '';
            s := s + ' �� ����� ����!';
          end;
      end
      else
      begin
        S := '�������� ��� � �������, � �� ���������!';

        Now.Obj.Visible := False;
        FirstPlace.Obj.Visible := True;
        Now := FirstPlace;
        if Now.Floor = fFirst then
        begin
          fSecond.Close;
          fThird.Close;
          fFirst.Show;
        end;

        if Now.Floor = fSecond then
        begin
          fSecond.Show;
          fThird.Close;
          fFirst.Close;
        end;

        if Now.Floor = fThird then
        begin
          fSecond.Close;
          fThird.Show;
          fFirst.Close;
        end;



      end
    end
    else
    begin
      s := '��������� �� ���� � �������!';
      for I := 1 to 3 do
        if Keys[I] = Now.Place then
        begin
          Inc(NKeys);
          Keys[I] := '';
          s := s + ' �� ����� ����!'

        end;
    end;


    S := s + ' � ��� '+ IntToStr(NKeys);
    case NKeys of
          0: s := s + ' ������!';
          1: s := s + ' ����!';
          2,3: s := s + ' �����!';
    end;
    ShowMessage(s);
  end
  else
  begin
    if Now.Place = 'Vyhod' then
    begin
      if NKeys <> 3 then
      begin
        s := '��� ���������� ����� 3 �����!' + ' � ��� ���� ' + IntToStr(NKeys);
        case NKeys of
          0: s := s + ' ������!';
          1: s := s + ' ����!';
          2: s := s + ' �����!';
        end;
      end
      else
        s := '�� ��������!';
      ShowMessage(s);
    end;

    if (Now.Place = 'MedL') or (Now.Place = 'PunktY') then
    begin
      Gun := True;
      ShowMessage('�� ����� ������! ���� �������� ��������� ��������!');
    end;
  end;
end;

end.

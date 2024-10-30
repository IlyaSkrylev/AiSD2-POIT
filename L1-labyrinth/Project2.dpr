program Project2;

uses
  Vcl.Forms,
  ufStar in 'ufStar.pas' {fStart},
  ufFirst in 'ufFirst.pas' {fFirst},
  ufSecond in 'ufSecond.pas' {fSecond},
  ufThird in 'ufThird.pas' {fThird},
  ufGotoRoom in 'ufGotoRoom.pas' {fGotoRoom};

{$R *.res}



begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfStar, fStar);
  Application.CreateForm(TfSecond, fSecond);
  Application.CreateForm(TfFirst, fFirst);
  Application.CreateForm(TfThird, fThird);
  Application.CreateForm(TfGotoRoom, fGotoRoom);
  Application.Run;










end.

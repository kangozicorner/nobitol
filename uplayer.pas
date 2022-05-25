unit uplayer;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Math, Graphics, Dialogs, ExtCtrls,  LCLIntf,
  StdCtrls, Menus, PasLibVlcPlayerUnit, TplScrollbarUnit, BGRAFlashProgressBar,
  Clipbrd, DBGrids, StrUtils, DB, ColorSpeedButton, cySpeedButton, ZDataset,
  ZSqlUpdate;

type

  { TfrmPlayer }

  TfrmPlayer = class(TForm)
    DsSensor: TDataSource;
    grdSensor: TDBGrid;
    ImageList1: TImageList;
    lbProgress: TLabel;
    mnNext: TMenuItem;
    mnBack: TMenuItem;
    mnCapture: TMenuItem;
    mnYt: TMenuItem;
    mnImdb: TMenuItem;
    mnLogout: TMenuItem;
    mnHidegrd: TMenuItem;
    mnDel: TMenuItem;
    mnSenList: TMenuItem;
    mnSenBegin: TMenuItem;
    mnSenEnd: TMenuItem;
    popGrid: TPopupMenu;
    Separator4: TMenuItem;
    spCapture: TMenuItem;
    spHelp: TMenuItem;
    spInfo: TMenuItem;
    Splitter1: TSplitter;
    spMenu: TMenuItem;
    Separator2: TMenuItem;
    Separator3: TMenuItem;
    spMte: TMenuItem;
    spUnmute: TMenuItem;
    spAddData: TMenuItem;
    spEditData: TMenuItem;
    Separator1: TMenuItem;
    spPause: TMenuItem;
    spStop: TMenuItem;
    spResume: TMenuItem;
    popPlayer: TPopupMenu;
    ProgressPlayer: TBGRAFlashProgressBar;
    pnPogress: TPanel;
    VLCPlayer: TPasLibVlcPlayer;
    RunQ: TZQuery;
    DataSensor: TZQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdSensorDblClick(Sender: TObject);
    procedure mnBackClick(Sender: TObject);
    procedure mnCaptureClick(Sender: TObject);
    procedure mnDelClick(Sender: TObject);
    procedure mnHidegrdClick(Sender: TObject);
    procedure mnImdbClick(Sender: TObject);
    procedure mnLogoutClick(Sender: TObject);
    procedure mnNextClick(Sender: TObject);
    procedure mnSenBeginClick(Sender: TObject);
    procedure mnSenEndClick(Sender: TObject);
    procedure mnSenListClick(Sender: TObject);
    procedure mnYtClick(Sender: TObject);
    procedure ProgressPlayerClick(Sender: TObject);
    procedure spAddDataClick(Sender: TObject);
    procedure spCaptureClick(Sender: TObject);
    procedure spEditDataClick(Sender: TObject);
    procedure spHelpClick(Sender: TObject);
    procedure spInfoClick(Sender: TObject);
    procedure spMenuClick(Sender: TObject);
    procedure spMteClick(Sender: TObject);
    procedure spPauseClick(Sender: TObject);
    procedure spResumeClick(Sender: TObject);
    procedure spStopClick(Sender: TObject);
    procedure spUnmuteClick(Sender: TObject);
    procedure VLCPlayerMediaPlayerEndReached(Sender: TObject);
    procedure VLCPlayerMediaPlayerPlaying(Sender: TObject);
    procedure VLCPlayerMediaPlayerPositionChanged(Sender: TObject; p: Single);
    procedure PlayOnPos(p:single);
  private
    procedure DoExec(s:string);
    procedure DoOpen(s:string);

  public
   media : string;
   posplay : single ;



  end;

var
  frmPlayer: TfrmPlayer;
  opening : Boolean;
  posisi : single;
  nama_sensor: string;
implementation

uses umain,umsgposisi;

{$R *.frm}

{ TfrmPlayer }

procedure TfrmPlayer.FormShow(Sender: TObject);
begin

  if media='' then frmMain.ledMenuClick(sender);

  opening := true;
  pnPogress.Visible:=false;
  VLCPlayer.Play(WideString(ExtractFilePath(Application.exeName) + 'opening.mp4'));

  DataSensor.close;
  DataSensor.ParamByName('vidy').Value:= media;
  DataSensor.open;

end;

procedure TfrmPlayer.grdSensorDblClick(Sender: TObject);
begin
  VLCPlayer.SetVideoPosInPercent(DataSensor.FieldByName('Awal').AsSingle);
end;

procedure TfrmPlayer.mnBackClick(Sender: TObject);
begin
    VLCPlayer.SetVideoPosInPercent(VLCPlayer.GetVideoPosInPercent()-0.1);
end;


procedure TfrmPlayer.mnCaptureClick(Sender: TObject);
begin
  OpenDocument(ExtractFilePath(Application.ExeName) + 'tools/FC/FSCapture.exe');
end;

procedure TfrmPlayer.mnDelClick(Sender: TObject);
begin

  if DataSensor.IsEmpty then exit;
  if messagedlg('Hapus Data ini  ? '  ,mtconfirmation,[mbYes]+[mbNo],0)=mrYes then
  begin
  DataSensor.Delete;
  DataSensor.Refresh;
  grdSensor.Visible:=false;
  end;

end;

procedure TfrmPlayer.mnHidegrdClick(Sender: TObject);
begin
    grdSensor.Hide;
end;

procedure TfrmPlayer.mnImdbClick(Sender: TObject);
begin
  OpenURL('https://www.imdb.com/');
end;

procedure TfrmPlayer.mnLogoutClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPlayer.mnNextClick(Sender: TObject);
begin
  VLCPlayer.SetVideoPosInPercent(VLCPlayer.GetVideoPosInPercent()+0.1);
end;

procedure TfrmPlayer.mnSenBeginClick(Sender: TObject);
var
  w : string;
  p : string;
begin

  w := DateToStr(now) + timetostr(now);
  p := FloatToStr(VLCPlayer.GetVideoPosInPercent());
  nama_sensor:= w;

  VLCPlayer.Pause();
  DoExec('delete from sensor where Akhir is null');
  DoExec('insert into sensor (idy,NSen,Awal) Values(' +
         QuotedStr(media) + ',' +
         QuotedStr(w) + ',' +
         QuotedStr(p)+')');
  VLCPlayer.Resume();

end;

procedure TfrmPlayer.mnSenEndClick(Sender: TObject);
var
    p : string;
begin

  VLCPlayer.Pause();
  p := FloatToStr(VLCPlayer.GetVideoPosInPercent());
  DoExec('update sensor set Akhir= ' +
         QuotedStr(p) + ' where Nsen=' + QuotedStr(nama_sensor));
  VLCPlayer.Resume();
  DataSensor.Refresh;
end;

procedure TfrmPlayer.mnSenListClick(Sender: TObject);
begin
  if DataSensor.IsEmpty then exit;
  grdSensor.Visible:=true;
end;

procedure TfrmPlayer.mnYtClick(Sender: TObject);
begin
  OpenURL('https://www.youtube.com/');
end;

procedure TfrmPlayer.ProgressPlayerClick(Sender: TObject);
var
  yo : TPoint;
  po : Single;
begin

  yo.x := Mouse.CursorPos.x;
  po := yo.x / ProgressPlayer.Width * 100;
  ProgressPlayer.Value:=trunc(po);
  VLCPlayer.SetVideoPosInPercent(po);
end;

procedure TfrmPlayer.spAddDataClick(Sender: TObject);
begin
    frmMain.ledAddClick(sender);
end;

procedure TfrmPlayer.spCaptureClick(Sender: TObject);
var
  fi : integer;
  f : string;
begin
  Randomize;
  fi := RandomRange(1000000,9999999);
  f := ExtractFilePath(Application.ExeName) + 'capture/' + Inttostr(fi) +'.jpg';
  VLCPlayer.Snapshot(f,VLCPlayer.Width,VLCPlayer.Height);
end;

procedure TfrmPlayer.spEditDataClick(Sender: TObject);
begin
    frmMain.ledEditClick(sender);
end;

procedure TfrmPlayer.spHelpClick(Sender: TObject);
begin
    frmMain.ledManualClick(sender);
end;

procedure TfrmPlayer.spInfoClick(Sender: TObject);
begin
    frmMain.ledAboutClick(sender);
end;

procedure TfrmPlayer.spMenuClick(Sender: TObject);
begin
  frmMain.ledMenuClick(sender);
end;

procedure TfrmPlayer.spMteClick(Sender: TObject);
begin
  VLCPlayer.SetAudioMute(true);
end;

procedure TfrmPlayer.spPauseClick(Sender: TObject);
begin
  VLCPlayer.Pause();
end;

procedure TfrmPlayer.spResumeClick(Sender: TObject);
begin
  if VLCPlayer.IsPause then
    VLCPlayer.Resume();
end;

procedure TfrmPlayer.spStopClick(Sender: TObject);
begin

  frmMain.Koneksi.ExecuteDirect('update movie set posisi=' + AnsiReplaceStr(floattostr( posisi ),',','.') +
                                 ' where media= ' + QuotedStr(media));
  VLCPlayer.Stop(1000);
  frmMain.ledMenuClick(sender);
  pnPogress.Visible:=false;
end;

procedure TfrmPlayer.spUnmuteClick(Sender: TObject);
begin
   VLCPlayer.SetAudioMute(false);
end;


procedure TfrmPlayer.VLCPlayerMediaPlayerEndReached(Sender: TObject);
var
  m : string;
begin

  m := AnsiRightStr(Trim(media),11);
  m := 'https://youtu.be/' + m;

  if opening=true then
    begin
    if posplay>0 then
      begin
      frmMessagePos.posplay:=posplay;
      frmMessagePos.SHow ;
      end
    else
      begin
         VLCPlayer.PlayYoutube(WideString(m)) ;
         VLCPlayer.SetVideoPosInPercent(0);
         pnPogress.Visible:=false;
      end ;
    end;
      opening := false;
end;

procedure TfrmPlayer.VLCPlayerMediaPlayerPlaying(Sender: TObject);
begin
  Application.ProcessMessages;
end;


procedure TfrmPlayer.VLCPlayerMediaPlayerPositionChanged(Sender: TObject;
  p: Single);
var
  v : single;
begin

  ProgressPlayer.Value := Trunc(VLCPlayer.GetVideoPosInPercent);
  lbProgress.Caption:= Inttostr(ProgressPlayer.Value) + ' % ' ;
  v := VLCPlayer.GetVideoPosInPercent;
  posisi := v ;

  if opening= false then
  frmMain.Koneksi.ExecuteDirect('update movie set posisi=' + AnsiReplaceStr(floattostr( v ),',','.') +
                                ' where media= ' + QuotedStr(media));

  // Periksa Sensor
  DoOpen('select Akhir from sensor where idy=' + QuotedStr(media) + ' and Awal= '+
        QuotedStr(FloatToStr(v)));

  if not RunQ.IsEmpty then
     begin
     VLCPlayer.SetVideoPosInPercent(RunQ.FieldByName('Akhir').AsSingle);
     VLCPlayer.Resume();
     end;

end;

procedure TfrmPlayer.FormCreate(Sender: TObject);
begin
  VLCPlayer.VLC.Path:= ExtractFilePath(Application.ExeName) + 'core\vlc\';
end;

procedure TfrmPlayer.PlayOnPos(p:single);
begin
  VLCPlayer.PlayYoutube(WideString(media)) ;
  VLCPlayer.SetVideoPosInPercent(p);
  pnPogress.Visible:=true;
end;

procedure TfrmPlayer.DoExec(s:string);
begin
  RunQ.SQL.Clear;
  RunQ.SQL.Add(s);
  RunQ.ExecSQL;
end;

procedure TfrmPlayer.DoOpen(s:string);
begin
  RunQ.SQL.Clear;
  RunQ.SQL.Add(s);
  RunQ.open;
end;

end.


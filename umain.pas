unit umain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  StdCtrls, ColorSpeedButton, BGRALabel, BCLabel, bgraExLed, ZConnection,
  ZDataset, usplash, uabout, LCLIntf, ugaleri, uplayer, uyoutube, usapa,
  JvNavigationPane, udata, cmpTimeDisplay;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    BGRALabel1: TBGRALabel;
    ECariJudul: TEdit;
    gMusikal: TColorSpeedButton;
    JvNavPanelHeader1: TJvNavPanelHeader;
    JvNavPanelHeader2: TJvNavPanelHeader;
    gAksi: TColorSpeedButton;
    gPetualangan: TColorSpeedButton;
    ColorSpeedButton11: TColorSpeedButton;
    gMisteri: TColorSpeedButton;
    gThriller: TColorSpeedButton;
    gBiografi: TColorSpeedButton;
    gAnimasi: TColorSpeedButton;
    gScifi: TColorSpeedButton;
    gSejarah: TColorSpeedButton;
    gKriminal: TColorSpeedButton;
    gKeluarga: TColorSpeedButton;
    gdrama: TColorSpeedButton;
    gHoror: TColorSpeedButton;
    lbBantuan1: TLabel;
    lbTime: TLabel;
    lbTentang: TLabel;
    lbBantuan: TLabel;
    lbTentang1: TLabel;
    ledMenu: TbgraLedEx;
    ledTutup: TbgraLedEx;
    Panel1: TPanel;
    pnAtas: TPanel;
    pnLeft: TPanel;
    pnMain: TPanel;
    Koneksi: TZConnection;
    twaktu: TTimer;
    tmMenu: TTimer;
    DPosisi: TZQuery;
    procedure ColorSpeedButton11Click(Sender: TObject);
    procedure ECariJudulKeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gAksiClick(Sender: TObject);
    procedure gAnimasiClick(Sender: TObject);
    procedure gBiografiClick(Sender: TObject);
    procedure gdramaClick(Sender: TObject);
    procedure gHororClick(Sender: TObject);
    procedure gKeluargaClick(Sender: TObject);
    procedure gKriminalClick(Sender: TObject);
    procedure gMisteriClick(Sender: TObject);
    procedure gMusikalClick(Sender: TObject);
    procedure gPetualanganClick(Sender: TObject);
    procedure gScifiClick(Sender: TObject);
    procedure gSejarahClick(Sender: TObject);
    procedure gThrillerClick(Sender: TObject);
    procedure ledAboutClick(Sender: TObject);
    procedure ledAddClick(Sender: TObject);
    procedure ledEditClick(Sender: TObject);
    procedure ledMenuChange(Sender: TObject);
    procedure ledMenuClick(Sender: TObject);
    procedure ledManualClick(Sender: TObject);
    procedure ledTutupClick(Sender: TObject);
    procedure tmMenuTimer(Sender: TObject);
    procedure twaktuTimer(Sender: TObject);
  private
    frmGaleri: TfrmGaleri;
    frmTentang: TfrmTentang;
    frmSapa: TfrmSapa;

    frmYoutube: TfrmYoutube;
    frmData: TfrmData;
    frmSplashx: TfrmSplashx;
    procedure LoadbyGenre(gen:string);
    procedure LoadByJudul(jud:string);
  public
     c_anim : string;
     i_menu : integer;
     frmPlayer: TfrmPlayer;
    procedure LoadPlayMovie(id:string;posisi:single);
    procedure TampilkanBannerKoz;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.frm}

{ TfrmMain }


procedure TfrmMain.ledManualClick(Sender: TObject);
begin

    OpenDocument(ExtractFilePath(Application.ExeName) + 'manual.pdf');

end;



procedure TfrmMain.ledTutupClick(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TfrmMain.tmMenuTimer(Sender: TObject);
begin

  if c_anim='menu' then
  begin
    i_menu:=i_menu + 5;
    pnLeft.Width:=i_menu;
    if pnLeft.Width>192 then
    begin
      i_menu:=0;
      tmMenu.Enabled:=false;
      c_anim:='show';
      tmMenu.Enabled:=true;
    end;
  end

  else if c_anim='galery' then
  begin
   i_menu:=i_menu + 20;
   frmGaleri.scbMain.Height:=320+ i_menu;
   if frmGaleri.scbMain.Height > pnMain.Height then
    begin
      i_menu:=0;
      frmGaleri.scbMain.Height := pnMain.Height ;
      tmMenu.Enabled:=false;
    end;
  end

  else if c_anim = 'show'  then
   begin
   i_menu:=i_menu + 5;
   frmGaleri.scbMain.Height:=pnMain.Height - i_menu;
   if frmGaleri.scbMain.Height < (pnMain.Height - frmGaleri.pnBanner.Height) then
    begin
      i_menu:=0;
      tmMenu.Enabled:=false;
    end;
  end


  else if c_anim = 'menu_off'  then
   begin
   i_menu:=i_menu + 5;
    pnLeft.Width:=192 - i_menu;
    if pnLeft.Width=0 then
    begin
      i_menu:=0;
      tmMenu.Enabled:=false;
    end;
  end;

end;

procedure TfrmMain.twaktuTimer(Sender: TObject);
begin
  lbTime.Caption:= TimeToStr(now);
end;


procedure TfrmMain.LoadPlayMovie(id:string;posisi:single);
begin


  frmGaleri.Close;
  frmPlayer.Parent:= pnMain;
  frmPlayer.Align:=alClient;
  frmPlayer.BorderStyle:=bsNone;
  frmPlayer.posplay:=posisi;
  frmPlayer.media:=id;
  frmPlayer.Show;

end ;

procedure TfrmMain.FormCreate(Sender: TObject);
begin

  frmGaleri:= TfrmGaleri.Create(self);
  frmTentang:= TfrmTentang.Create(self);
  frmSapa:= TfrmSapa.Create(self);
  frmPlayer:= TfrmPlayer.Create(self);
  frmYoutube:= TfrmYoutube.Create(self);
  frmData:= TfrmData.Create(self);
  frmSplashx:= TfrmSplashx.Create(self);

end;

procedure TfrmMain.ColorSpeedButton11Click(Sender: TObject);
begin
  LoadbyGenre('Komedi');
end;

procedure TfrmMain.ECariJudulKeyPress(Sender: TObject; var Key: char);
begin
  if Key=#13 then
   LoadByJudul(ECariJudul.text);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin

  frmSplashx.Show;
  i_menu := 0;

  Koneksi.Protocol:='sqlite';
  Koneksi.Database:=  ExtractFilePath(Application.ExeName)  + 'data/nobita.bs';
  Koneksi.LibraryLocation:=  ExtractFilePath(Application.ExeName)  + 'SQLite3.dll';
  Koneksi.Connected:=true;
  Koneksi.AutoCommit:=true;


  frmGaleri.Parent := pnMain;
  frmGaleri.gen:='';
  frmGaleri.scbMain.Height:=pnMain.Height ;
  frmGaleri.BorderStyle:=bsNone;
  frmGaleri.Align:=alClient;
  frmGaleri.Show;

  if frmGaleri.scbMain.Height=pnMain.Height then
  begin
   c_anim:='show' ;
   tmMenu.Enabled:=true;
   end ;

end;

procedure TfrmMain.gAksiClick(Sender: TObject);
begin
  LoadbyGenre('Aksi');
end;

procedure TfrmMain.gAnimasiClick(Sender: TObject);
begin
  LoadbyGenre('Animasi');
end;

procedure TfrmMain.gBiografiClick(Sender: TObject);
begin
  LoadbyGenre('Biografi');
end;

procedure TfrmMain.gdramaClick(Sender: TObject);
begin
  LoadbyGenre('Drama');
end;

procedure TfrmMain.gHororClick(Sender: TObject);
begin
  LoadbyGenre('Horror');
end;

procedure TfrmMain.gKeluargaClick(Sender: TObject);
begin
  LoadbyGenre('Keluarga');
end;

procedure TfrmMain.gKriminalClick(Sender: TObject);
begin
  LoadbyGenre('Kriminal');
end;

procedure TfrmMain.gMisteriClick(Sender: TObject);
begin
  LoadbyGenre('Misteri');
end;

procedure TfrmMain.gMusikalClick(Sender: TObject);
begin
  LoadbyGenre('Musikal');
end;

procedure TfrmMain.gPetualanganClick(Sender: TObject);
begin
  LoadbyGenre('Petualangan');
end;

procedure TfrmMain.gScifiClick(Sender: TObject);
begin
  LoadbyGenre('Sci-fi');
end;

procedure TfrmMain.gSejarahClick(Sender: TObject);
begin
  LoadbyGenre('Sejarah');
end;

procedure TfrmMain.gThrillerClick(Sender: TObject);
begin
  LoadbyGenre('Thiller');
end;

procedure TfrmMain.ledAboutClick(Sender: TObject);
begin
  frmTentang.ShowModal;
end;

procedure TfrmMain.ledAddClick(Sender: TObject);
begin
  frmData.qaMovie.Close;
  frmData.qaMovie.ParamByName('vid').Value:= frmGaleri.taPlay.FieldByName('id').AsString;
  frmData.qaMovie.open;
  frmData.qaMovie.Append;
  frmData.showmodal;
end;

procedure TfrmMain.ledEditClick(Sender: TObject);
begin

   frmData.qaMovie.Close;
   frmData.qaMovie.ParamByName('vid').Value:= frmGaleri.taPlay.FieldByName('id').AsString;
   frmData.qaMovie.open;
   frmData.ShowModal;

end;

procedure TfrmMain.ledMenuChange(Sender: TObject);
begin

end;


procedure TfrmMain.ledMenuClick(Sender: TObject);
begin


  if frmPlayer.Showing then
  begin
  frmPlayer.VLCPlayer.Stop();
  frmPlayer.close
  end;

  if frmYoutube.Showing then
  begin
  frmYoutube.Chromium1.LoadURL('about:blank');
  frmYoutube.close;
  end;

  if frmGaleri.Showing then  frmGaleri.Close;
  i_menu := 0;
  frmGaleri.gen:='';
  frmGaleri.scbMain.Height:=pnMain.Height ;
  frmGaleri.Align:=alClient;
  frmGaleri.Show;

  if i_menu>0 then
  begin
    c_anim:= 'menu_off';
    tmMenu.Enabled:=true;
  end

  else
  begin
    c_anim:= 'menu';
    tmMenu.Enabled:=true;

  end;

end;

procedure TfrmMain.LoadbyGenre(gen:string);
begin

  if frmPlayer.Showing then
   begin
    frmPlayer.VLCPlayer.Stop(1000);
    frmPlayer.close;

   end;

  if frmGaleri.scbMain.Height<=pnMain.Height then
   begin
    c_anim:= 'galery';
    frmGaleri.cari:=false;
    frmGaleri.gen:=gen;
    frmGaleri.close;
    frmGaleri.Show;
    tmMenu.Enabled:=true;
   end;
end;

procedure TfrmMain.LoadByJudul(jud:string);
begin

  if frmGaleri.scbMain.Height<=pnMain.Height then
   begin
    c_anim:= 'galery';
    frmGaleri.cari:=true;
    frmGaleri.jud:=jud;
    frmGaleri.close;
    frmGaleri.Show;
    tmMenu.Enabled:=true;
   end;
end;

procedure TfrmMain.TampilkanBannerKoz;
begin
  frmSapa.ShowModal;
end;

end.


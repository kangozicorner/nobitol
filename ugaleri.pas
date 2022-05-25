unit ugaleri;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Math, DB, Graphics, Dialogs, ExtCtrls,
  DBCtrls, StdCtrls, Buttons, ColorSpeedButton, BGRANeoButton, ZDataset;

type

  { TfrmGaleri }

  TfrmGaleri = class(TForm)
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    dsMovie: TDataSource;
    dsPlay: TDataSource;
    imgBanner: TDBImage;
    pnBanner: TPanel;
    pnSynopsis: TPanel;
    scbMain: TScrollBox;
    ScbBaner: TScrollBox;
    spPlayMovie: TColorSpeedButton;
    taPlay: TZQuery;
    taMovie: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure spPlayMovieClick(Sender: TObject);
  private
    procedure LoadListMovie(q:string);
    procedure LoadListMovieByJudul(j:string);
    procedure GambarMovieClick(Sender:TObject);
  public
    gen : string;
    jud : string;
    cari : boolean;
  end;

var
  frmGaleri: TfrmGaleri;

implementation

uses umain;

{$R *.frm}

procedure TfrmGaleri.FormShow(Sender: TObject);
begin
  if cari=false then
   LoadListMovie(gen)
  else
   LoadListMovieByJudul(jud);
end;

procedure TfrmGaleri.spPlayMovieClick(Sender: TObject);
var
  media : string;
  posisi : single;
  subt : TStringList;
begin

  frmMain.c_anim:= 'menu_off';
  frmMain.tmMenu.Enabled:=true;

  media := taPlay.FieldByName('media').AsString;
  posisi := taPlay.FieldByName('posisi').AsFloat;
  subt := TStringList.Create;
  subt.Text:= taPlay.FieldByName('sub_indo').AsString;

   if FileExists(ExtractFilePath(Application.ExeName) + 'movie.srt') then
      DeleteFile(ExtractFilePath(Application.ExeName) + 'movie.srt');

  if subt.Count > 10 then
    begin
    subt.SaveToFile(ExtractFilePath(Application.ExeName) + 'movie.srt');
    end;


  frmMain.LoadPlayMovie(media,posisi);

end;

procedure TfrmGaleri.LoadListMovie(q:string);
var
  d : TDBImage;
  g : TImage;
  i : integer;
  o : TObject;
  w : Integer;
  c : String;
  fp : TFlowPanel;
  x : Integer; // Random Integer
  s : string ; // SQL Script

begin


    Randomize;
    x := RandomRange(1,4);
    if x = 1 then
      s := 'select * from movie where genre1 like ''%'  + q + ''' order by tahun desc limit 20'
    else if x = 2 then
     s := 'select * from movie where genre1 like ''%'  + q + ''' order by tahun asc limit 20'
    else if x = 3 then
     s := 'select * from movie where genre1 like ''%'  + q +''' order by judul desc limit 20'
    else if x = 4 then
     s := 'select * from movie where genre1 like ''%'  + q + ''' order by pemain desc limit 20';



  taMovie.close;
  taMovie.SQL.Clear;
  taMovie.SQl.Add(s);
  taMovie.open;


  taMovie.First;
  i := 0;

  w := Round((frmMain.pnMain.Width-60)/5);


  fp := TFlowPanel.Create(self);
  fp.Parent:= scbMain;
  fp.Align:=alClient;
  fp.BorderStyle:=bsNone;
  fp.Color:=clBlack;
  fp.BevelOuter:=bvNone;


  taMovie.First;
  i := 0 ;
  while not taMovie.EOF do
  begin
    inc(i);
    d := TDBImage.Create(nil);
    g := TImage.Create(nil);
    d.Name:= 'g'+  IntToStr(i);
    g.Name:= 'd'+  IntToStr(i);
    d.DataSource := dsMovie;
    d.DataField:='cover';
    g.Picture := d.Picture;;
    g.Parent := fp;
    d.Visible:=false;
    g.Width:=w;
    g.Cursor:=crHandPoint;
    g.Caption:=taMovie.FieldByName('id').AsString;
    g.Height:= trunc(140/100*g.Width);
    g.Stretch:=true;
    g.BorderSpacing.Around:=0;
    g.OnClick:= @GambarMovieClick;
    taMovie.Next;
  end;

  taMovie.First;

  c := taMovie.FieldByName('id').AsString;
  taPlay.Close;
  taPlay.ParamByName('vid').Value:=c;
  taPlay.Open;


end;

procedure TfrmGaleri.LoadListMovieByJudul(j:string);
var
  d : TDBImage;
  g : TImage;
  i : integer;
  o : TObject;
  w : Integer;
  c : String;
  fp : TFlowPanel;
  x : Integer; // Random Integer
  s : string ; // SQL Script

begin


  s := 'select * from movie where judul like ''%'  + j + '%''' +
       'or pemain like''%' + j + '%''' +
       'order by tahun desc limit 20';

  taMovie.close;
  taMovie.SQL.Clear;
  taMovie.SQl.Add(s);
  taMovie.open;


  taMovie.First;
  i := 0;

  w := Round((frmMain.pnMain.Width-60)/5);


  fp := TFlowPanel.Create(self);
  fp.Parent:= scbMain;
  fp.Align:=alClient;
  fp.BorderStyle:=bsNone;
  fp.Color:=clBlack;
  fp.BevelOuter:=bvNone;


  taMovie.First;
  i := 0 ;
  while not taMovie.EOF do
  begin
    inc(i);
    d := TDBImage.Create(nil);
    g := TImage.Create(nil);
    d.Name:= 'g'+  IntToStr(i);
    g.Name:= 'd'+  IntToStr(i);
    d.DataSource := dsMovie;
    d.DataField:='cover';
    g.Picture := d.Picture;;
    g.Parent := fp;
    d.Visible:=false;
    g.Width:=w;
    g.Cursor:=crHandPoint;
    g.Caption:=taMovie.FieldByName('id').AsString;
    g.Height:= trunc(140/100*g.Width);
    g.Stretch:=true;
    g.BorderSpacing.Around:=0;
    g.OnClick:= @GambarMovieClick;
    taMovie.Next;
  end;

  taMovie.First;

  c := taMovie.FieldByName('id').AsString;
  taPlay.Close;
  taPlay.ParamByName('vid').Value:=c;
  taPlay.Open;


end;

procedure TfrmGaleri.GambarMovieClick(Sender:TObject);
var
  y : TImage;
begin

 y := Sender as TImage;

 if scbMain.Height=frmMain.pnMain.Height then
 begin
 frmMain.c_anim:='show' ;
 frmMain.tmMenu.Enabled:=true;
 taPlay.Close;
 taPlay.ParamByName('vid').Value:= y.Caption;
 taPlay.Open;
 end
 else
 begin
  taPlay.Close;
  taPlay.ParamByName('vid').Value:= y.Caption;
  taPlay.Open;
 end;

end;


end.


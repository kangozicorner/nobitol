unit udata;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, ExtDlgs,
  DBCtrls, StdCtrls, ZDataset, ColorSpeedButton, BGRALabel, bgraExLed, FZCommon,
  FZDB, LCLIntf;

type

  { TfrmData }

  TfrmData = class(TForm)
    BGRALabel1: TBGRALabel;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    deGenre1: TDBComboBox;
    deGenre2: TDBComboBox;
    deGenre3: TDBComboBox;
    deJudul: TDBEdit;
    deSInops: TDBMemo;
    deURL: TDBEdit;
    DsMovie: TDataSource;
    DBEdit7: TDBEdit;
    DBImage1: TDBImage;
    DBImage3: TDBImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ledTutup: TbgraLedEx;
    odPicBanner: TOpenPictureDialog;
    odSub: TOpenDialog;
    Panel1: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    spBanner: TColorSpeedButton;
    spCover: TColorSpeedButton;
    spHapus: TColorSpeedButton;
    spSave: TColorSpeedButton;
    qaMovie: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure ledTutupClick(Sender: TObject);
    procedure spBannerClick(Sender: TObject);
    procedure spCLoseClick(Sender: TObject);
    procedure spCoverClick(Sender: TObject);
    procedure spGoIMDBClick(Sender: TObject);
    procedure spGoOpenSubClick(Sender: TObject);
    procedure spGoYTClick(Sender: TObject);
    procedure spHapusClick(Sender: TObject);
    procedure spSaveClick(Sender: TObject);
  private

  public
   id : string ;
   pil : string;
  end;

var
  frmData: TfrmData;

implementation

uses umain;

{$R *.frm}

procedure TfrmData.spSaveClick(Sender: TObject);
begin

  if (deURL.Text='') or
     (deSInops.text='') or
     (deJudul.text='') or
     (deGenre1.text='') then
     begin
       ShowMessage('Data Belum Lengkap');
       exit;
     end;

  qaMovie.Edit;
  qaMovie.post;

  ShowMessage('Data Tersimpan');

end;

procedure TfrmData.spBannerClick(Sender: TObject);
begin

  if odPicBanner.Execute then
  begin
    qaMovie.edit;
    TBlobField(qaMovie.FieldByName('banner')).LoadFromFile(odPicBanner.FileName);
    qaMovie.post;
  end;

end;

procedure TfrmData.spCLoseClick(Sender: TObject);
begin
  close;
end;


procedure TfrmData.ledTutupClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmData.FormShow(Sender: TObject);
begin

end;

procedure TfrmData.spCoverClick(Sender: TObject);
begin

  if odPicBanner.Execute then
  begin
    qaMovie.edit;
    TBlobField(qaMovie.FieldByName('cover')).LoadFromFile(odPicBanner.FileName);
    qaMovie.post;
  end;

end;

procedure TfrmData.spGoIMDBClick(Sender: TObject);
begin
 OpenURL('https://www.imdb.com/');

end;

procedure TfrmData.spGoOpenSubClick(Sender: TObject);
begin
  OpenURL('https://opensubtitle.info/');

end;

procedure TfrmData.spGoYTClick(Sender: TObject);
begin
  OpenURL('https://www.youtube.com/');

end;

procedure TfrmData.spHapusClick(Sender: TObject);
begin

  if Dialogs.MessageDlg('Hapus Data Ini ... ?  Tidak bisa dikembalikan ',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      qaMovie.Delete;
    end;
end;



end.


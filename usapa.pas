unit usapa;

{$mode Delphi}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics,LCLIntf,
  StdCtrls,Dialogs, ExtCtrls,JvSpecialProgress,Buttons,
  urlmon;

type

  { TfrmSapa }

  TfrmSapa = class(TForm)
    barupdate: TJvSpecialProgress;
    btclose: TButton;
    ckAutoCekUpdate: TCheckBox;
    ckAutoCekUpdate1: TCheckBox;
    Image1: TImage;
    Image2: TImage;
    imgSapa: TImage;
    kozweb: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    pnCekUpdate: TPanel;
    spKozWeb: TSpeedButton;
    tmUpdate: TTimer;
    procedure btcloseClick(Sender: TObject);
    procedure ckAutoCekUpdate1Change(Sender: TObject);
    procedure ckAutoCekUpdate1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure spKozWebClick(Sender: TObject);
    procedure tmUpdateTimer(Sender: TObject);
  private
    const VERSI = '0.1.1.001 [23 Mei 2022]';
    procedure CekUpdate ;
    procedure GetPicSplash(u:string);
  public
    MUST_UPDATE : String;
  end;

var
  frmSapa: TfrmSapa;
  hit : integer;
  LINK : string;
implementation

{$R *.frm}

{ TfrmSapa }

procedure TfrmSapa.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
   tmUpdate.Enabled:=false;
end;

procedure TfrmSapa.btcloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmSapa.ckAutoCekUpdate1Change(Sender: TObject);
var
  fc : TStringList;
begin
  fc := TStringList.Create;
  fc.Add('4%^#3456789**&%js74asadjai3456789787asgahs');
  if ckAutoCekUpdate.Checked then
     begin
     DeleteFile(ExtractFilePath(Application.ExeName) + 'AutoChekTrue.no');
     fc.SaveToFile(ExtractFilePath(Application.ExeName) + 'AutoChekTrue.yes')
     end
  else
     begin
     DeleteFile(ExtractFilePath(Application.ExeName) + 'AutoChekTrue.yes');
     fc.SaveToFile(ExtractFilePath(Application.ExeName) + 'AutoChekTrue.no')
     end;

end;

procedure TfrmSapa.ckAutoCekUpdate1Click(Sender: TObject);
  var
  fc : TStringList;
begin
  fc := TStringList.Create;
  fc.Add('4%^#3456789**&%js74asadjai3456789787asgahs');

  if ckAutoCekUpdate.Checked then
     begin
     DeleteFile(ExtractFilePath(Application.ExeName) + 'AutoChekTrue.no');
     fc.SaveToFile(ExtractFilePath(Application.ExeName) + 'AutoChekTrue.yes')
     end
  else
     begin
     DeleteFile(ExtractFilePath(Application.ExeName) + 'AutoChekTrue.yes');
     fc.SaveToFile(ExtractFilePath(Application.ExeName) + 'AutoChekTrue.no')
     end;

end;

procedure TfrmSapa.FormShow(Sender: TObject);
begin
  imgSapa.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'sapa.jpg');
  hit := 0;
  if FileExists(ExtractFilePath(Application.ExeName) + 'AutoChekTrue.yes') then
  begin
     pnCekUpdate.Visible:=true;
     ckAutoCekUpdate.Checked:=true;
     tmUpdate.Enabled:=true;
  end
  else
  begin
     pnCekUpdate.Visible:=false;
     tmUpdate.Enabled:=false;
     btclose.Caption:='Lanjut>>';
     btclose.Enabled:=true;
     ckAutoCekUpdate.Checked:=false;
  end;
end;

procedure TfrmSapa.spKozWebClick(Sender: TObject);
begin
      OpenURL('https://sites.google.com/view/kangozicorner/home');
end;

procedure TfrmSapa.tmUpdateTimer(Sender: TObject);
begin
   inc(hit);

   barupdate.Position:=hit;
   Application.ProcessMessages;
   if hit =50 then
     begin
        CekUpdate;
     end
   else if hit=100 then
      begin
      hit:=0;
      barupdate.Position:=0;
      tmUpdate.Enabled:=false;
      GetPicSplash('1HpeJos7c4frZr09D0eRwNsarWPEeDtx8');
   end;
end;


procedure TfrmSapa.CekUpdate ;
var
     versi_server : string;
     versi_server_nomor : string;
     filep : string;
     p:TStringList;
begin
  versi_server := 'https://drive.google.com/uc?export=download&id=1xguYpyaHVsiynuTtzz-AgjiKM-spgcMY';
  filep        := ExtractFilePath(Application.ExeName) + 'vernew.log';

  if URLDownloadToFile(nil, PChar(versi_server),
     PChar(filep), 0, nil) = 0 then
     begin
     try
        p := TStringList.Create;
        p.LoadFromFile(filep);
        versi_server_nomor := p.Strings[0];
   LINK := p.Strings[1];      // Untuk v64
  // LINK := p.Strings[2];      // Untuk v32
        if versi_server_nomor=VERSI then
           begin
           ShowMessage('Terima Kasih ' + #13 + 'Anda menggunakan Nobitol terbaru') ;
           MUST_UPDATE:= '1001';   // Tidak Perlu Update
           kozweb.Visible:=false;
           btclose.Enabled:=true;
           btclose.Caption:='Lanjut >>';
           pnCekUpdate.Hide;
           end
        else
           begin
           ShowMessage('Tersedia Update Terbaru, Silahkan klik tombol Download Patch');
           MUST_UPDATE:= '1002'; // Harus Update
           kozweb.Visible:=true;
           btclose.Enabled:=true;
           btclose.Caption:='Lanjut >>';
           pnCekUpdate.Hide;
           end;

     finally
     p.Free;
     end;

     end
  else
  ShowMessage('Periksa Koneksi Internet') ;

end;

procedure TfrmSapa.GetPicSplash(u:string);
var
  fs,fd : string;
begin

  fs := 'https://drive.google.com/uc?export=download&id='+ u;
  fd := ExtractFilePath(Application.ExeName) + 'sapa.jpg';

  if URLDownloadToFile(nil, PChar(fs),
     PChar(fd), 0, nil) = 0 then
     begin
        imgSapa.Picture.LoadFromFile(fd);
     end;

end;

end.


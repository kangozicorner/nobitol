unit uabout;

{$mode Delphi}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  atshapelinebgra, klabels, LCLIntf;

type

  { TfrmTentang }

  TfrmTentang = class(TForm)
    btclose: TButton;
    ECLink1: TKLinkLabel;
    ECLink2: TKLinkLabel;
    goChromium: TImage;
    goChromium1: TImage;
    goCT: TImage;
    goFPC: TImage;
    goLazarus: TImage;
    Image1: TImage;
    Image6: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    procedure btcloseClick(Sender: TObject);
    procedure goChromiumClick(Sender: TObject);
    procedure goCTClick(Sender: TObject);
    procedure goFPCClick(Sender: TObject);
    procedure goLazarusClick(Sender: TObject);
  private

  public

  end;

var
  frmTentang: TfrmTentang;

implementation

{$R *.frm}

{ TfrmTentang }

procedure TfrmTentang.btcloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTentang.goChromiumClick(Sender: TObject);
begin
  OpenURL('https://www.videolan.org/vlc/');
end;

procedure TfrmTentang.goCTClick(Sender: TObject);
begin
  OpenURL('https://www.pilotlogic.com/sitejoom/');
end;

procedure TfrmTentang.goFPCClick(Sender: TObject);
begin
  OpenURL('https://www.freepascal.org');
end;

procedure TfrmTentang.goLazarusClick(Sender: TObject);
begin
   OpenURL('https://www.lazarus-ide.org');
end;

end.


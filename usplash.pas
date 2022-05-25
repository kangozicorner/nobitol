unit usplash;

{$mode Delphi}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TfrmSplashx }

  TfrmSplashx = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbTerminate: TLabel;
    Panel1: TPanel;
    tmSplash: TTimer;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lbTerminateClick(Sender: TObject);
    procedure tmSplashTimer(Sender: TObject);
  private

  public

  end;

var
  frmSplashx: TfrmSplashx;
  i : integer;

implementation

uses umain;


{$R *.frm}

{ TfrmSplashx }

procedure TfrmSplashx.lbTerminateClick(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TfrmSplashx.tmSplashTimer(Sender: TObject);
begin
   inc(i);
  if i>3 then
      begin

        tmSplash.Enabled:=false;
        close;
      end;
end;

procedure TfrmSplashx.FormShow(Sender: TObject);
begin
    i := 0 ;
  tmSplash.Enabled:=true;
end;

procedure TfrmSplashx.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  frmMain.TampilkanBannerKoz;
end;

end.


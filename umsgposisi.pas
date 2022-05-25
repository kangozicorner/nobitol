unit umsgposisi;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, ExtCtrls,
  BGRALabelFX, ColorSpeedButton;

type

  { TfrmMessagePos }

  TfrmMessagePos = class(TForm)
    lb1: TBGRALabelFX;
    lb2: TBGRALabelFX;
    Panel1: TPanel;
    Panel2: TPanel;
    spNo: TColorSpeedButton;
    spYes: TColorSpeedButton;
    procedure spNoClick(Sender: TObject);
    procedure spYesClick(Sender: TObject);
  private

  public
      posplay : single;
  end;

var
  frmMessagePos: TfrmMessagePos;

implementation

uses umain,uplayer;

{$R *.frm}

{ TfrmMessagePos }

procedure TfrmMessagePos.spYesClick(Sender: TObject);
begin
 close;
 frmMain.frmPlayer.PlayOnPos(posplay);

end;

procedure TfrmMessagePos.spNoClick(Sender: TObject);
begin
 close;
 frmMain.frmPlayer.PlayOnPos(0);

end;

end.


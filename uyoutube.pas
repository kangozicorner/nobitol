unit uyoutube;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, uCEFChromium,
  uCEFWindowParent;

type

  { TfrmYoutube }

  TfrmYoutube = class(TForm)
    CEFWindowParent1: TCEFWindowParent;
    Chromium1: TChromium;
  private

  public
   posplay : single;
  end;

var
  frmYoutube: TfrmYoutube;

implementation

{$R *.frm}

end.


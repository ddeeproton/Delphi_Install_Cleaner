unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    XPManifest1: TXPManifest;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  homepath, borlandpath: String;
begin
  if MessageDlg(PChar('Clean Delphi 7 license?'),  mtConfirmation, [mbYes, mbNo], 0) <> IDYES then
    Exit;
    
  homepath := GetEnvironmentVariable('HOMEPATH'); //Goto C:\Users\myuser\
  borlandpath := homepath + '\.borland';
  if not DirectoryExists(borlandpath) then
  begin
    Memo1.Lines.Add('Error: Delphi 7 is not installed!');
    Exit;
  end;
  if FileExists(borlandpath+'\registry.dat') then
    DeleteFile(borlandpath+'\registry.dat');

  if FileExists(borlandpath+'\registry.slm') then
    DeleteFile(borlandpath+'\registry.slm');

  if FileExists(borlandpath+'\registry.dat')
  or FileExists(borlandpath+'\registry.slm') then
    Memo1.Lines.Add('Error, cannot clean Delphi 7. Close all applications and try again.')
  else
    Memo1.Lines.Add('Delphi 7 license cleaned! :)');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines.Add('Erase all licenses information in Delphi 7.');
end;

end.

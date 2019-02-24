unit UnitAbout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ShellAPI;

type
  Tabout = class(TForm)
    cheackUpdate: TButton;
    version: TLabel;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  about: Tabout;

implementation

{$R *.dfm}

uses unitSettings, unitMain;

procedure Tabout.FormShow(Sender: TObject);
begin
about.version.Caption:='ver. '+main.currentVersion;
end;

procedure Tabout.Label1Click(Sender: TObject);
begin
  ShellExecute(handle, 'open', 'https://github.com/delphi-m/multiple-buffering', nil, nil, SW_SHOW);
end;

end.

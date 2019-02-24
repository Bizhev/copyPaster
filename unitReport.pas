unit unitReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls;

type
  Treport = class(TForm)
    progress: TProgressBar;
    log: TDBMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure bar(a:word;b:word;current:word;action:string);
  end;

var
  report: Treport;

implementation

{$R *.dfm}
procedure Treport.bar(a:word;b:word;current:word;action:string);
begin
//  report.progres.Min:=a;
//  report.progres.Max:=b;
//  report.progres.Max:=current;
//  report.action.Caption:=action;
end;
procedure Treport.Button1Click(Sender: TObject);
begin
  report.Hide
end;

procedure Treport.FormCreate(Sender: TObject);
begin
  report.log.Clear;
end;

end.

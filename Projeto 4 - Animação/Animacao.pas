unit Animacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Effects,
  FMX.Filter.Effects, FMX.Ani, FMX.Edit;

type
  TForm1 = class(TForm)
    ShapeTransitionEffect1: TShapeTransitionEffect;
    Circle1: TCircle;
    btn_play: TButton;
    FloatAnimation1: TFloatAnimation;
    Label1: TLabel;
    txt_duracao: TEdit;
    btn_pause: TSpeedButton;
    procedure btn_playClick(Sender: TObject);
    procedure FloatAnimation1Process(Sender: TObject);
    procedure txt_duracaoKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btn_pauseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_pauseClick(Sender: TObject);
begin
   FloatAnimation1.Enabled := False;
end;

procedure TForm1.btn_playClick(Sender: TObject);
begin
   FloatAnimation1.Enabled := True;
   btn_pause.Enabled := True;
end;

procedure TForm1.FloatAnimation1Process(Sender: TObject);
var txt : double;
begin

   txt := strToFloat(txt_duracao.Text);
   FloatAnimation1.Duration := txt;
end;

procedure TForm1.txt_duracaoKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
   if txt_duracao.Text <> '' then
   begin
      btn_play.Enabled := true;
   end
   else
   begin
      btn_play.Enabled := false;
   end;
end;

end.

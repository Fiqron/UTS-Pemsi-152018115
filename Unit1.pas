unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    mmo1: TMemo;
    Start: TButton;
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure StartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.StartClick(Sender: TObject);
begin
FormFrekuensi.Show;
Form1.Hide;
end;

end.

unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TFormFrekuensi = class(TForm)
    pnl1: TPanel;
    editPity1: TEdit;
    editPity2: TEdit;
    editPity3: TEdit;
    editPity4: TEdit;
    editPity5: TEdit;
    editFrek1: TEdit;
    editFrek2: TEdit;
    editFrek3: TEdit;
    editFrek4: TEdit;
    editFrek5: TEdit;
    editProb1: TEdit;
    editProb2: TEdit;
    editProb3: TEdit;
    editProb4: TEdit;
    editProb5: TEdit;
    editKum1: TEdit;
    editKum2: TEdit;
    editKum3: TEdit;
    editKum4: TEdit;
    editKum5: TEdit;
    editB1: TEdit;
    editB2: TEdit;
    editB3: TEdit;
    editB4: TEdit;
    editB5: TEdit;
    editA1: TEdit;
    editA2: TEdit;
    editA3: TEdit;
    editA4: TEdit;
    editA5: TEdit;
    btnback: TButton;
    butProses: TButton;
    btnnext: TButton;
    img1: TImage;
    pnl2: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure butProsesClick(Sender: TObject);
    procedure btnnextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFrekuensi: TFormFrekuensi;

implementation

uses Unit3, Unit1;

{$R *.dfm}

procedure TFormFrekuensi.btn1Click(Sender: TObject);
begin
Form1.Show;
FormFrekuensi.Hide;
end;

procedure TFormFrekuensi.butProsesClick(Sender: TObject);
var
p1,p2,p3,p4,p5:Double;
f1,f2,f3,f4,f5:Double;
pr1,pr2,pr3,pr4,pr5:Double;
ia1,ia2,ia3,ia4,ia5:Double;

h1,h2,h3,h4,h5:Double;
hk1,hk2,hk3,hk4:Double;
hb1,hb2,hb3,hb4,hb5:Double;

begin
p1:=StrToFloat(editPity1.Text);
p2:=StrToFloat(editPity2.Text);
p3:=StrToFloat(editPity3.Text);
p4:=StrToFloat(editPity4.Text);
p5:=StrToFloat(editPity5.Text);


f1:=StrToFloat(editFrek1.Text);
f2:=StrToFloat(editFrek2.Text);
f3:=StrToFloat(editFrek3.Text);
f4:=StrToFloat(editFrek4.Text);
f5:=StrToFloat(editFrek5.Text);


pr1:=StrToFloat(editProb1.Text);
pr2:=StrToFloat(editProb2.Text);
pr3:=StrToFloat(editProb3.Text);
pr4:=StrToFloat(editProb4.Text);
pr5:=StrToFloat(editProb5.Text);

ia1:=StrToFloat(editA1.Text);
ia2:=StrToFloat(editA2.Text);
ia3:=StrToFloat(editA3.Text);
ia4:=StrToFloat(editA4.Text);
ia5:=StrToFloat(editA5.Text);


h1:=f1/100;
editProb1.Text:=FloatToStr(h1);
h2:=f2/100;
editProb2.Text:=FloatToStr(h2);
h3:=f3/100;
editProb3.Text:=FloatToStr(h3);
h4:=f4/100;
editProb4.Text:=FloatToStr(h4);
h5:=f5/100;
editProb5.Text:=FloatToStr(h5);


editKum1.Text:=editProb1.Text;
hk1:=h1+h2;
editKum2.Text:=FloatToStr(hk1);
hk2:=hk1+h3;
editKum3.Text:=FloatToStr(hk2);
hk3:=hk2+h4;
editKum4.Text:=FloatToStr(hk3);
hk4:=hk3+h5;
editKum5.Text:=FloatToStr(hk4);

editA1.Text:=editKum1.Text;
editA2.Text:=editKum2.Text;
editA3.Text:=editKum3.Text;
editA4.Text:=editKum4.Text;
editA5.Text:=editKum5.Text;

hb1:=ia1+0.01;
editB2.Text:=FloatToStr(hb1);
hb2:=ia2+0.01;
editB3.Text:=FloatToStr(hb2);
hb3:=ia3+0.01;
editB4.Text:=FloatToStr(hb3);
hb4:=ia4+0.01;
editB5.Text:=FloatToStr(hb4);



end;

procedure TFormFrekuensi.btnnextClick(Sender: TObject);
begin
FForcast.Show;
FormFrekuensi.Hide;
end;

end.

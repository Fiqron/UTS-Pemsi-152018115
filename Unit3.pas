unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, jpeg;

type
  TFForcast = class(TForm)
    edtName: TEdit;
    strngrd1: TStringGrid;
    strngrd2: TStringGrid;
    btn3: TButton;
    dlg: TOpenDialog;
    btn4: TButton;
    btnback: TButton;
    pnl1: TPanel;
    btnResult: TButton;
    edithasil: TEdit;
    lbl1: TLabel;
    editb5: TEdit;
    Label1: TLabel;
    img1: TImage;

    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btnbackClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnResultClick(Sender: TObject);
    procedure edithasilChange(Sender: TObject);
  private
     { Private declarations }
  public
    procedure PopulateStringGrid(Grid: TStringGrid; const FileName: string);

    { Public declarations }
  end;

var
  FForcast: TFForcast;
  b1,b2,b3,b4,b5:Double;
  a1,a2,a3,a4,a5:Double;

  n1:Double;
  m1:Double;
implementation

uses Unit2;

{$R *.dfm}

procedure TFForcast.PopulateStringGrid(Grid: TStringGrid; const FileName: string);
var
  TextFile, Line: TStringList;
  Row,Col: Integer;
begin
  Grid.RowCount := 0;//clear any previous data
  TextFile := TStringList.Create;
  try
    Line := TStringList.Create;
    try
      Line.Delimiter := ';';
      TextFile.LoadFromFile(FileName);
      Grid.RowCount := TextFile.Count;

      for Row := 0 to TextFile.Count-1 do
      begin
        Line.DelimitedText := TextFile[Row];
        Grid.ColCount:= Line.Count;
        for Col := 0 to Grid.ColCount-1 do
          if Col<Line.Count then
            Grid.Cells[Col, Row] := Line[Col]
          else
            Grid.Cells[Col, Row] := '0';
      end;
    finally
      Line.Free;
    end;
  finally
    TextFile.Free;
  end;
end;
//procedure clustering dengan Algoritma EM
//Procedure untuk visualisasi


procedure TFForcast.btn4Click(Sender: TObject);
begin
 if dlg.Execute then
begin
EdtName.Text:= dlg.FileName;
PopulateStringGrid(strngrd1, edtName.Text);
//memo1.Lines.LoadFromFile(Edit1.Text);
end
else ShowMessage ('Open File was cancelled');
end;

procedure TFForcast.btn3Click(Sender: TObject);
var
i:Integer;
angka:Double;
begin
strngrd2.Cells[0,0] := 'Pity';
  with strngrd1 do
  begin
    for i:=1 to RowCount-1 do
       begin
         angka:= StrToFloat(strngrd1.Cells[1,i]);
         if (angka >= b1) and (angka <= a1) then
         strngrd2.Cells[0,i]:= FormFrekuensi.editPity1.Text
         else if (angka >= b2) and (angka <= a2) then
         strngrd2.Cells[0,i]:= FormFrekuensi.editPity2.Text
         else if (angka >= b3) and (angka <= a3) then
         strngrd2.Cells[0,i]:= FormFrekuensi.editPity3.Text
         else if (angka >= b4) and (angka <= a4) then
         strngrd2.Cells[0,i]:= FormFrekuensi.editPity4.Text
         else if (angka >= b5) and (angka <= a5) then
         strngrd2.Cells[0,i]:= FormFrekuensi.editPity5.Text
         else
         strngrd2.Cells[0,i]:=FloatToStr(0);
         end;
    end;

end;

procedure TFForcast.btnbackClick(Sender: TObject);
begin
formFrekuensi.show;
FForcast.Hide;
end;

procedure TFForcast.FormShow(Sender: TObject);
begin
b1:=StrToFloat(FormFrekuensi.editB1.Text);
b2:=StrToFloat(FormFrekuensi.editB2.Text);
b3:=StrToFloat(FormFrekuensi.editB3.Text);
b4:=StrToFloat(FormFrekuensi.editB4.Text);
b5:=StrToFloat(FormFrekuensi.editB5.Text);



a1:=StrToFloat(FormFrekuensi.editA1.Text);
a2:=StrToFloat(FormFrekuensi.editA2.Text);
a3:=StrToFloat(FormFrekuensi.editA3.Text);
a4:=StrToFloat(FormFrekuensi.editA4.Text);
a5:=StrToFloat(FormFrekuensi.editA5.Text);



end;

procedure TFForcast.btnResultClick(Sender: TObject);
var
i:integer;
total:Integer;
begin
total :=0;
for i := 1 to strngrd1.RowCount -1 do
begin
total := total + StrToInt(strngrd2.Cells[0,i]);
end;
edithasil.Text := IntToStr(total)
end;

procedure TFForcast.edithasilChange(Sender: TObject);
var
total, hasil:Double;
begin
total:=StrToFloat(edithasil.Text);
hasil:=total/90;
editb5.Text:=FloatToStr(hasil);
end;

end.

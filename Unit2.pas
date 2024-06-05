unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    edt1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
 if edt1.Text = 'admin' then
 begin
 form1.mm1.items[1].Visible:=True;
 form1.mm1.items[2].Visible:=False;
 form1.mm1.items[3].Visible:=False;
 end else if edt1.Text= 'Kasir' then
 begin
 form1.mm1.items[1].Visible:=False;
 form1.mm1.items[2].Visible:=True;
 form1.mm1.items[3].Visible:=False;
 end else if edt1.Text= 'Pemilik' then
 begin
 form1.mm1.items[1].Visible:=False;
 form1.mm1.items[2].Visible:=False;
 form1.mm1.items[3].Visible:=True;
 end else
 begin

 end;
 Form2.Close;
end;

end.

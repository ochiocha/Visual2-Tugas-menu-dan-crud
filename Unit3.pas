unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    lbl2: TLabel;
    edt2: TEdit;
    Button4: TButton;
    dbgrd1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a:string;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
DataModule4.Zqry.SQL.Clear;
DataModule4.Zqry.SQL.Add('insert into kategori values (null,"'+edt1.Text+'")');
DataModule4.Zqry.ExecSQL ;

DataModule4.Zqry.SQL.Clear;
DataModule4.Zqry.SQL.Add('select * from kategori');
DataModule4.Zqry.Open;
ShowMessage('Data Berhasil Disimpan!');

end;

procedure TForm3.Button2Click(Sender: TObject);
begin         //kode update
with DataModule4.zqry do
begin
  SQL.Clear;
  SQL.Add('update kategori set name="'+edt1.text+'" where id= "'+a+'"');
  ExecSQL ;

  SQL.Clear;
  SQL.Add('select * from kategori');
  Open;
end;
ShowMessage('Data Berhasil Diupdate!');
end;
procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule4.zqry.Fields[1].AsString;
a:= DataModule4.zqry.Fields[0].AsString;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin           //kode delete
with DataModule4.zqry do
begin
  SQL.Clear;
  SQL.Add('delete from kategori where id= "'+a+'"');
  ExecSQL ;

  SQL.Clear;
  SQL.Add('select * from kategori');
  Open;
end;
ShowMessage('Data Berhasil DiDelete!');
end;
end.

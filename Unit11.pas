unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm11 = class(TForm)
    mm1: TMainMenu;
    LOGIN1: TMenuItem;
    FORM1: TMenuItem;
    FORMBARANG1: TMenuItem;
    FORMKATEGORI1: TMenuItem;
    FORMJUAL1: TMenuItem;
    FORMKOSTUMER1: TMenuItem;
    FORMSTOK1: TMenuItem;
    FORMBELI1: TMenuItem;
    FOEMSUPPLIER1: TMenuItem;
    FORMDETAILJUAL1: TMenuItem;
    FORMDETAILBELI1: TMenuItem;
    FORMUSER1: TMenuItem;
    LAPORAN1: TMenuItem;
    procedure FORMBARANG1Click(Sender: TObject);
    procedure FORMKATEGORI1Click(Sender: TObject);
    procedure FORMJUAL1Click(Sender: TObject);
    procedure FORMKOSTUMER1Click(Sender: TObject);
    procedure FORMSTOK1Click(Sender: TObject);
    procedure FORMBELI1Click(Sender: TObject);
    procedure FOEMSUPPLIER1Click(Sender: TObject);
    procedure FORMDETAILJUAL1Click(Sender: TObject);
    procedure FORMDETAILBELI1Click(Sender: TObject);
    procedure FORMUSER1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit5, Unit10, Unit2, Unit3, Unit4, Unit7, Unit9, Unit6, Unit8;

{$R *.dfm}

procedure TForm11.FORMBARANG1Click(Sender: TObject);
begin
Form5.Showmodal;
end;

procedure TForm11.FORMKATEGORI1Click(Sender: TObject);
begin
Form10.Showmodal;
end;

procedure TForm11.FORMJUAL1Click(Sender: TObject);
begin
Form2.Showmodal;
end;

procedure TForm11.FORMKOSTUMER1Click(Sender: TObject);
begin
Form3.Showmodal;
end;

procedure TForm11.FORMSTOK1Click(Sender: TObject);
begin
Form4.Showmodal;
end;

procedure TForm11.FORMBELI1Click(Sender: TObject);
begin
Form7.Showmodal;
end;

procedure TForm11.FOEMSUPPLIER1Click(Sender: TObject);
begin
Form9.Showmodal;
end;

procedure TForm11.FORMDETAILJUAL1Click(Sender: TObject);
begin
Form6.Showmodal;
end;

procedure TForm11.FORMDETAILBELI1Click(Sender: TObject);
begin
Form8.Showmodal;
end;

procedure TForm11.FORMUSER1Click(Sender: TObject);
begin
Form1.Showmodal;
end;

end.

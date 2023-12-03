unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, frxClass, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TForm9 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    dbgrd1: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
end;

procedure TForm9.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= False;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
btn6.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('ID SUPPLIER TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('ID BARANG TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('NAMA SUPPLIER TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('NAMA BARANG TIDAK BOLEH KOSONG!');
end else
if edt5.Text ='' then
begin
ShowMessage('JUMLAH TIDAK BOLEH KOSONG!');
end else
if edt6.Text ='' then
begin
ShowMessage('HARGA SATUAN TIDAK BOLEH KOSONG!');
end else
if edt7.Text ='' then
begin
ShowMessage('JUMLAH HARGA TIDAK BOLEH KOSONG!');
end else
if edt8.Text ='' then
begin
ShowMessage('TELEPHONE TIDAK BOLEH KOSONG!');
end else
begin
zqry1.SQL.Clear; //simpan
zqry1.SQL.Add('insert into supplier values("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from supplier');
zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm9.btn3Click(Sender: TObject);
var
  idSupplier: string;
begin
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or (edt5.Text = '') or (edt6.Text = '') or (edt7.Text = '') or (edt8.Text = '') then
  begin
    ShowMessage('Semua input harus diisi!');
  end
  else
  begin
    idSupplier:= zqry1.FieldByName('id_supplier').AsString;
    if edt1.Text = idSupplier then
    begin
      zqry1.Edit;
      zqry1.FieldByName('id_supplier').AsString := edt1.Text;
      zqry1.FieldByName('id_barang').AsString := edt2.Text;
      zqry1.FieldByName('nama_supplier').AsString := edt3.Text;
      zqry1.FieldByName('nama_barang').AsString := edt4.Text;
      zqry1.FieldByName('jumlah').AsString := edt5.Text;
      zqry1.FieldByName('harga_satuan').AsString := edt6.Text;
      zqry1.FieldByName('jumlah_harga').AsString := edt7.Text;
      zqry1.FieldByName('telephone').AsString := edt8.Text;
      zqry1.Post;

      ShowMessage('Data berhasil diperbarui!');
      posisiawal;
    end
    else
    begin
      ShowMessage('Data tidak ada perubahan');
      posisiawal;
    end;
  end;
end;

procedure TForm9.btn4Click(Sender: TObject);
var
  idSupplier: string;
begin
  idSupplier := zqry1.FieldByName('id_supplier').AsString;

  if MessageDlg('Apakah Anda yakin menghapus data ini?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('DELETE FROM supplier WHERE id_supplier = "' + idSupplier + '"');
    zqry1.ExecSQL;
    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM supplier');
    zqry1.Open;
    ShowMessage('Data berhasil dihapus');
    posisiawal;
  end
  else
  begin
    ShowMessage('Penghapusan data dibatalkan');
    posisiawal;
  end;
end;

procedure TForm9.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm9.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
btn6.Enabled:= True;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
edt6.Enabled:= False;
edt7.Enabled:= False;
edt8.Enabled:= False;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm9.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= zqry1.Fields[0].AsString;
edt2.Text:= zqry1.Fields[1].AsString;
edt3.Text:= zqry1.Fields[2].AsString;
edt4.Text:= zqry1.Fields[3].AsString;
edt5.Text:= zqry1.Fields[4].AsString;
edt6.Text:= zqry1.Fields[5].AsString;
edt7.Text:= zqry1.Fields[6].AsString;
edt8.Text:= zqry1.Fields[7].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
btn6.Enabled:= True;
end;

end.

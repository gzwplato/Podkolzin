unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBDatabase, IBCustomDataSet, IBQuery, Grids,
  DBGrids, IniFiles;

type
  TForm6 = class(TForm)
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button3: TButton;
    Button1: TButton;
    IBDatabase1: TIBDatabase;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    DataSource1: TDataSource;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    IBQuery3: TIBQuery;
    IBTransaction3: TIBTransaction;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FNew: boolean;
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm6.FormCreate(Sender: TObject);
var
  FIniFile: TIniFile;
begin
  FNew := true;
  try
    FIniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');
    try
      IBDatabase1.DatabaseName := FIniFile.ReadString('Base', 'Path', '');
   finally
     FIniFile.Free;
   end;
   IBDatabase1.Connected := true;
   with IBQuery1 do
   begin
    SQL.Text := 'select id as "�����", tour_name as "��������", team_comp as "����������", result as "���������" from competition';
    Open;
   end;
  except
   on E: Exception do
  begin
      Application.MessageBox(Pchar(E.Message), 'error', MB_ICONERROR);
      Halt;
   end;
  end;
  end;
procedure TForm6.RadioButton1Click(Sender: TObject);
begin
FNew := true;
RadioButton2.Checked := false;
end;

procedure TForm6.RadioButton2Click(Sender: TObject);
begin
FNew := false;
RadioButton1.Checked := false;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
   try
   with IBQuery2 do
   begin
    if FNew then
      SQL.Text := 'execute procedure proc_competition(-1, ''' + Edit1.Text + ''', '''+Edit2.Text+''', '''+Edit3.Text+''')'
    else
      SQL.Text := 'execute procedure proc_competition(' +IBQuery1.FieldByName('�����').AsString + ', ''' + Edit1.Text + ''', '''+Edit2.Text+''', '''+Edit3.Text+''')';
    Transaction.StartTransaction;
    ExecSQL;
    Transaction.Commit;
    Transaction.Active := false;
    end;
    IBQuery1.Close;
    IBQuery1.Open;
  except
   on E: Exception do
  begin
      if  IBQuery2.Active then
        IBQuery2.Transaction.Rollback;
      Application.MessageBox(Pchar(E.Message), 'Error', MB_ICONERROR);
   end;
  end;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
    try
   with IBQuery2 do
   begin
      SQL.Text := 'delete from competition where id = ' +IBQuery1.FieldByName('�����').AsString;
    Transaction.StartTransaction;
    ExecSQL;
    Transaction.Commit;
    Transaction.Active := false;
    end;
      IBQuery1.Close;
      IBQuery1.Open;
  except
   on E: Exception do
  begin
      if  IBQuery2.Active then
        IBQuery2.Transaction.Rollback;
      Application.MessageBox(Pchar(E.Message), 'Error', MB_ICONERROR);
   end;
  end;
end;

procedure TForm6.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Form6.Hide;
Form1.Show;
end;

end.

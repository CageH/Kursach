unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls,DB, Menus;

type
  TMainForm = class(TForm)
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DateTimePicker1: TDateTimePicker;
    Panel4: TPanel;
    NewCheck: TButton;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    AddChek: TButton;
    Label5: TLabel;
    PrintChek: TButton;
    Label6: TLabel;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DelChek: TButton;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    Label7: TLabel;
    MainMenu1: TMainMenu;
    By1: TMenuItem;
    Praic: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure NewCheckClick(Sender: TObject);
    procedure AddChekClick(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DelChekClick(Sender: TObject);
    procedure By1Click(Sender: TObject);
    procedure PraicClick(Sender: TObject);
    procedure PrintChekClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  ChekNum, ChekSum, CenaTov:String;

implementation

uses Unit2, Unit1, Unit4, Unit5, Unit6;
{$R *.dfm}


procedure TMainForm.FormShow(Sender: TObject);
begin
DataModule2.ADOChek.Close;
DataModule2.ADOChek.SQL.Text:='SELECT Chek.Код_чеку, Chek.Дата, Chek.[Договірна сума] FROM Chek;';
DataModule2.ADOChek.Open;
end;



procedure TMainForm.NewCheckClick(Sender: TObject);
begin
DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'INSERT INTO Chek (Дата, [Договірна сума] ) Values (:dt, 0);';
DataModule2.ADOWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',DateTimePicker1.Date);
DataModule2.ADOWork.ExecSQL;

FormShow(Sender);

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'select * from Chek order by Код_чеку';
DataModule2.ADOWork.Open;

DataModule2.ADOWork.Last;
ChekNum:= DataModule2.DataWork.DataSet.Fields[0].AsString;
Label6.Caption:='№ чека: '+ ChekNum;

DataModule2.ADOProdaj.Close;
DataModule2.ADOProdaj.SQL.Text:= 'SELECT Prodaj.Код, Game.Назва, Personal.ФІО, Prodaj.Кількість, Prodaj.Ціна,'
+' Chek.Код_чеку FROM Personal INNER JOIN (Kompaniya INNER JOIN (Game INNER JOIN (Chek INNER'
+' JOIN Prodaj ON Chek.Код_чеку = Prodaj.Код_чеку) ON Game.Код_гри = Prodaj.Код_гри) ON Kompaniya.Код_виробника '
+'= Game.Код_виробника) ON Personal.Код_персоналу = Prodaj.Код_персоналу '
+' Where (((Prodaj.Код_чеку)='+ChekNum+'));';
DataModule2.ADOProdaj.Open;
ChekSum:='0';
Label5.Caption:='ИТОГО: '+ChekSum;
Panel4.Enabled:=True;
NewCheck.Enabled:=False;
DBLookupComboBox2.Enabled:=False;
end;

procedure TMainForm.AddChekClick(Sender: TObject);
begin
CenaTov:= IntToStr(DataModule2.DataGameF.DataSet.Fields[2].AsInteger * strtoint(Edit1.Text));
Label5.Caption:='Цена товара: '+ CenaTov;

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'INSERT INTO Prodaj (Код_гри, Код_персоналу, Кількість, Ціна, Код_чеку ) '
+'Values ('+inttostr(DBLookupComboBox1.KeyValue)+', '+inttostr(DBLookupComboBox2.KeyValue)+', '+Edit1.Text+', '+CenaTov+', '+ChekNum+');';
DataModule2.ADOWork.ExecSQL;

DataModule2.ADOProdaj.Close;
DataModule2.ADOProdaj.SQL.Text:= 'SELECT Prodaj.Код, Game.Назва, Personal.ФІО, Prodaj.Кількість, Prodaj.Ціна,'
+' Chek.Код_чеку FROM Personal INNER JOIN (Kompaniya INNER JOIN (Game INNER JOIN (Chek INNER'
+' JOIN Prodaj ON Chek.Код_чеку = Prodaj.Код_чеку) ON Game.Код_гри = Prodaj.Код_гри) ON Kompaniya.Код_виробника '
+'= Game.Код_виробника) ON Personal.Код_персоналу = Prodaj.Код_персоналу '
+' Where (((Prodaj.Код_чеку)='+ChekNum+'));';
DataModule2.ADOProdaj.Open;

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'Select Sum(Prodaj.[Ціна]) AS [Sum-Ціна] from Prodaj Group By Prodaj.[Код_чеку] HAVING (((Prodaj.[Код_чеку])='+ChekNum+'))';
DataModule2.ADOWork.Open;
ChekSum:= DataModule2.DataWork.DataSet.Fields[0].AsString;
Label7.Caption:='ИТОГО: ' + ChekSum;

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'Update Chek Set Chek.[Договірна сума] = '+ChekSum+' WHERE(((Chek.[Код_чеку])='+ChekNum+'))';
DataModule2.ADOWork.ExecSQL;

FormShow(Sender);
end;


procedure TMainForm.DBLookupComboBox2Click(Sender: TObject);
begin
NewCheck.Enabled:=True;
end;

procedure TMainForm.DelChekClick(Sender: TObject);
begin
DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'Delete * from Prodaj Where Код = '+DBGrid2.Fields[0].AsString+'';
DataModule2.ADOWork.ExecSQL;

DataModule2.ADOProdaj.Close;
DataModule2.ADOProdaj.SQL.Text:= 'SELECT Prodaj.Код, Game.Назва, Personal.ФІО, Prodaj.Кількість, Prodaj.Ціна,'
+' Chek.Код_чеку FROM Personal INNER JOIN (Kompaniya INNER JOIN (Game INNER JOIN (Chek INNER'
+' JOIN Prodaj ON Chek.Код_чеку = Prodaj.Код_чеку) ON Game.Код_гри = Prodaj.Код_гри) ON Kompaniya.Код_виробника '
+'= Game.Код_виробника) ON Personal.Код_персоналу = Prodaj.Код_персоналу '
+' Where (((Prodaj.Код_чеку)='+ChekNum+'));';
DataModule2.ADOProdaj.Open;

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'Select Sum(Prodaj.[Ціна]) AS [Sum-Ціна] from Prodaj Group By Prodaj.[Код_чеку] HAVING (((Prodaj.[Код_чеку])='+ChekNum+'))';
DataModule2.ADOWork.Open;
ChekSum:= DataModule2.DataWork.DataSet.Fields[0].AsString;
Label7.Caption:='ИТОГО: ' + ChekSum;

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'Update Chek Set Chek.[Договірна сума] = '+ChekSum+' WHERE(((Chek.[Код_чеку])='+ChekNum+'))';
DataModule2.ADOWork.ExecSQL;

FormShow(Sender);
end;

procedure TMainForm.By1Click(Sender: TObject);
begin
Dovidka.Show;
end;

procedure TMainForm.PraicClick(Sender: TObject);
begin
Report_GameOtchet.QuickRepGame.PreviewModal;
end;

procedure TMainForm.PrintChekClick(Sender: TObject);
begin

DataModule2.ADOChekRep.Close;
DataModule2.ADOChekRep.SQL.Text:= 'SELECT Prodaj.Код, Prodaj.Ціна, Prodaj.Кількість, Game.Назва, Game.Ціна, Prodaj.Код_чеку '
+'FROM Game INNER JOIN Prodaj ON Game.Код_гри = Prodaj.Код_гри '
+'Where Prodaj.Код_чеку = '+ChekNum+';';
DataModule2.ADOChekRep.Open;


ChekReport.QRLabel2.Caption:='Дата: ' + DateToStr(DateTimePicker1.Date);
ChekReport.QRLabel3.Caption:='Робітник: ' + DBLookupComboBox2.Text;
ChekReport.QRLabel1.Caption:='Чек№ ' + ChekNum;
ChekReport.QRLabel12.Caption:='ІТОГО: ' + ChekSum;


ChekReport.QuickRepChekRep.PreviewModal;
end;

end.


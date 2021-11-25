unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls,DB;

type
  TDovidka = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    AddNote: TButton;
    ChangeNote: TButton;
    Delete: TButton;
    Label3: TLabel;
    Panel3: TPanel;
    Label1: TLabel;
    Cancel2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Ok: TButton;
    Label4: TLabel;
    CostEdit: TEdit;
    Label6: TLabel;
    ButtonAdd: TButton;
    GameEdit: TEdit;
    Cancel: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    ButtonChange: TButton;
    TabSheet1: TTabSheet;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    AgeEdit: TEdit;
    Label5: TLabel;
    AddButton1: TButton;
    ChangeButton1: TButton;
    DeletButton1: TButton;
    AddButton2: TButton;
    ChangeButton2: TButton;
    DeleteButton2: TButton;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    Panel6: TPanel;
    SearchGameName: TEdit;
    Label7: TLabel;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    Panel7: TPanel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure AddNoteClick(Sender: TObject);
    procedure ChangeNoteClick(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonChangeClick(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure OkClick(Sender: TObject);
    procedure AddButton1Click(Sender: TObject);
    procedure ChangeButton1Click(Sender: TObject);
    procedure DeletButton1Click(Sender: TObject);
    procedure AddButton2Click(Sender: TObject);
    procedure ChangeButton2Click(Sender: TObject);
    procedure DeleteButton2Click(Sender: TObject);
    procedure SearchGameNameChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure ButtonOtchetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dovidka: TDovidka;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TDovidka.FormShow(Sender: TObject);
begin
DataModule2.ADOGame.Close;
DataModule2.ADOGame.SQL.Text:='SELECT Game.Код_гри, Game.Назва, Kompaniya.Назва, Game.[Вікові_обмеження],'
+' Game.Ціна FROM Kompaniya INNER JOIN Game ON Kompaniya.Код_виробника = Game.Код_виробника;';
DataModule2.ADOGame.Open;

DataModule2.ADOProdaj.Close;
DataModule2.ADOProdaj.SQL.Text:='SELECT Prodaj.Код, Game.Назва, Personal.ФІО, Prodaj.Кількість, Prodaj.Ціна, Prodaj.Код_чеку '
+'FROM Chek INNER JOIN (Personal INNER JOIN ((Kompaniya INNER JOIN Game ON Kompaniya.Код_виробника = Game.Код_виробника) INNER JOIN Prodaj ON '
+'Game.Код_гри = Prodaj.Код_гри) ON Personal.Код_персоналу = Prodaj.Код_персоналу) ON Chek.Код_чеку = Prodaj.Код_чеку;';
DataModule2.ADOProdaj.Open;

DataModule2.ADOChek.Close;
DataModule2.ADOChek.SQL.Text:='SELECT Chek.Код_чеку, Chek.Дата, Chek.[Договірна сума] FROM Chek;';
DataModule2.ADOChek.Open;
end;








procedure TDovidka.AddNoteClick(Sender: TObject);
begin
GameEdit.Text:= '';
AgeEdit.Text:= '0';
CostEdit.Text:= '0';
DBLookupComboBox1.KeyValue:=1;
Panel2.Visible:=True;
ButtonChange.Visible:=False;
ButtonAdd.Visible:=True;
end;

procedure TDovidka.ChangeNoteClick(Sender: TObject);
begin
GameEdit.Text:= DBGrid1.Fields[1].AsString;
CostEdit.Text:= DBGrid1.Fields[4].AsString;
AgeEdit.Text:= DBGrid1.Fields[3].AsString;
DataModule2.ADOCompany.Locate('Назва', DBGrid1.Fields[2].AsString,[loCaseInsensitive,loPartialKey]);
DBLookupComboBox1.KeyValue:=StrToInt(DataModule2.DataCompany.DataSet.Fields[0].AsString);
Panel2.Visible:=True;
ButtonAdd.Visible:=False;
ButtonChange.Visible:=True;
end;

procedure TDovidka.ButtonAddClick(Sender: TObject);
begin
DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:='INSERT INTO Game ( [Назва], [Ціна], [Код_виробника], [Вікові_обмеження] )'
+' values ("'+GameEdit.Text+'", '+CostEdit.Text+', '+IntToStr(DBLookupComboBox1.KeyValue)+', '+AgeEdit.Text+')';
DataModule2.ADOWork.ExecSQL;

FormShow(Sender);
Panel2.Visible:=False;
end;

procedure TDovidka.ButtonChangeClick(Sender: TObject);
begin
DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:='UPDATE Game SET Game.Назва = "'+GameEdit.Text+'", Game.Ціна = '+CostEdit.Text+','
+' Game.Код_виробника = '+IntToStr(DBLookupComboBox1.KeyValue)+', Game.Вікові_обмеження = '+AgeEdit.Text+''
+' WHERE (((Game.Код_гри)='+DBGrid1.Fields[0].AsString+'))';
DataModule2.ADOWork.ExecSQL;

FormShow(Sender);
Panel2.Visible:=False;

end;

procedure TDovidka.DeleteClick(Sender: TObject);
begin
DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'DELETE * FROM Game Where (Game.Код_гри = '+DBGrid1.Fields[0].AsString+')';
DataModule2.ADOWork.ExecSQL;
FormShow(Sender);
end;

procedure TDovidka.Edit1Change(Sender: TObject);
begin
DataModule2.ADOGame.Close;
DataModule2.ADOGame.SQL.Text:= 'SELECT Game.Код_гри, Game.Назва AS Game_Назва, Kompaniya.Назва AS Kompaniya_Назва, Game.Ціна, Game.Вікові_обмеження '
+' FROM Kompaniya INNER JOIN Game ON Kompaniya.[Код_виробника] = Game.[Код_виробника] where Game.Назва like "%'+Edit1.Text+'%" ORDER BY Game.Код_гри';
DataModule2.ADOGame.Open;
end;

procedure TDovidka.OkClick(Sender: TObject);
begin
DataModule2.ADOGame.Close;
DataModule2.ADOGame.SQL.Text:= 'SELECT Game.Код_гри, Game.Назва AS Game_Назва, Kompaniya.Назва AS Kompaniya_Назва, Game.Ціна, Game.Вікові_обмеження '
+' FROM Kompaniya INNER JOIN Game ON Kompaniya.[Код_виробника] = Game.[Код_виробника] where Game.Код_гри = '+Edit2.Text+' ORDER BY Game.Код_гри';
DataModule2.ADOGame.Open;
end;

procedure TDovidka.AddButton1Click(Sender: TObject);
begin
DataModule2.ADOPersonal.Insert;
end;

procedure TDovidka.ChangeButton1Click(Sender: TObject);
begin
if  DataModule2.ADOPersonal.Modified then
 DataModule2.ADOPersonal.Post;
end;


procedure TDovidka.DeletButton1Click(Sender: TObject);
begin
DataModule2.ADOPersonal.Delete;
end;

procedure TDovidka.AddButton2Click(Sender: TObject);
begin
DataModule2.ADOCompany.Insert;
end;

procedure TDovidka.ChangeButton2Click(Sender: TObject);
begin
if  DataModule2.ADOCompany.Modified then
 DataModule2.ADOCompany.Post;
end;

procedure TDovidka.DeleteButton2Click(Sender: TObject);
begin
DataModule2.ADOCompany.Delete;
end;



procedure TDovidka.SearchGameNameChange(Sender: TObject);
begin
DataModule2.ADOProdaj.Close;
DataModule2.ADOProdaj.SQL.Text:= 'SELECT Prodaj.Код, Game.Назва, Personal.ФІО, Prodaj.Кількість, Prodaj.Ціна, Prodaj.Код_чеку'
+' FROM Personal INNER JOIN (Game INNER JOIN Prodaj ON Game.Код_гри = Prodaj.Код_гри) ON Personal.Код_персоналу = Prodaj.Код_персоналу '
+' WHERE (((Game.Назва) like "%'+SearchGameName.Text+'%")) ORDER BY Prodaj.Код;';
DataModule2.ADOProdaj.Open;
end;

procedure TDovidka.Button1Click(Sender: TObject);
begin
DataModule2.ADOChek.Close;
DataModule2.ADOChek.SQL.Text:='SELECT Chek.Код_чеку, Chek.Дата, Chek.[Договірна сума] FROM Chek WHERE (((Chek.Дата)=dt));';
DataModule2.ADOChek.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',DateTimePicker1.Date);
DataModule2.ADOChek.Open;
end;

procedure TDovidka.CancelClick(Sender: TObject);
begin
Panel2.Visible:=False;
end;

procedure TDovidka.ButtonOtchetClick(Sender: TObject);
begin
Report_GameOtchet.QuickRepGame.PreviewModal;
end;

end.

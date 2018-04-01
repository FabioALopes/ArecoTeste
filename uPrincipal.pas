unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  System.ImageList, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, uProduto;

type
  TPrincipal = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ActionList1: TActionList;
    Incluir: TAction;
    Alterar: TAction;
    Excluir: TAction;
    ImageList1: TImageList;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    edtPesquisa: TEdit;
    procedure IncluirExecute(Sender: TObject);
    procedure AlterarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
  private
    Produto: TProduto;
    procedure AtualizarCadastro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

uses uIncProduto;

procedure TPrincipal.AlterarExecute(Sender: TObject);
begin
  if DBGrid1.DataSource.DataSet.RecordCount = 0 then
  Exit;

  if IncProduto = nil then
    Application.CreateForm(TIncProduto, IncProduto);
  IncProduto.vID:= DBGrid1.DataSource.DataSet.FieldByName('ID').AsInteger; // Edição
  Try
    IncProduto.ShowModal;
  Finally
    FreeAndNil(IncProduto);
  End;

  AtualizarCadastro;
end;

procedure TPrincipal.FormCreate(Sender: TObject);
begin
  AtualizarCadastro;
end;

procedure TPrincipal.IncluirExecute(Sender: TObject);
begin
  if IncProduto = nil then
    Application.CreateForm(TIncProduto, IncProduto);
  IncProduto.vID:= 0; // Inclusão
  Try
    IncProduto.ShowModal;
  Finally
    FreeAndNil(IncProduto);
  End;

  AtualizarCadastro;
end;

procedure TPrincipal.AtualizarCadastro;
begin
  Try
    Produto:= TProduto.Create;
    DataSource1.DataSet:= Produto.ConsultarProduto(edtPesquisa.Text);
    TFloatField(DataSource1.DataSet.FieldByName('VALOR')).DisplayFormat:= '#,##0.00';
  Finally
    FreeAndNil(Produto);
  End;
end;


procedure TPrincipal.edtPesquisaChange(Sender: TObject);
begin
  AtualizarCadastro;
end;

procedure TPrincipal.ExcluirExecute(Sender: TObject);
begin
  if DBGrid1.DataSource.DataSet.RecordCount = 0 then
  Exit;

  if MessageDlg('Deseja realmente excluir o produto selecionado?', mtConfirmation, [mbok], 0) <> mrYes then
  Exit;

  Try
    Produto:= TProduto.Create;
    Produto.ID:= DBGrid1.DataSource.DataSet.FieldByName('ID').AsInteger;
    Produto.ExcluirProduto;
  Finally
    FreeAndNil(Produto);
  End;

  AtualizarCadastro;
end;

end.

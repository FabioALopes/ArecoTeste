unit uIncProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uProduto;

type
  TIncProduto = class(TForm)
    Label1: TLabel;
    edtCodigo: TEdit;
    Label2: TLabel;
    edtDescricao: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    edtValor: TEdit;
    Label4: TLabel;
    edtCodigoBarras: TEdit;
    Label5: TLabel;
    edtObservacoes: TEdit;
    Label6: TLabel;
    edtDataCadastro: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    Produto: TProduto;
    procedure CarregarProduto;
    procedure IncluirProduto;
    procedure AlterarProduto;
    { Private declarations }
  public
    vID: Integer;
    { Public declarations }
  end;

var
  IncProduto: TIncProduto;

implementation

{$R *.dfm}

procedure TIncProduto.Button1Click(Sender: TObject);
begin
  if vID = 0 then
    IncluirProduto
  Else
    AlterarProduto;
  Close;
end;

procedure TIncProduto.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TIncProduto.IncluirProduto;
var vValor: Double;
begin
  Try
    Produto:= TProduto.Create;
    Produto.Codigo := edtCodigo.Text;
    Produto.Descricao := edtDescricao.Text;
    if TryStrtoFloat(edtValor.Text, vValor) then Produto.Valor:= vValor Else Produto.Valor := 0;
    Produto.CodigoBarras := edtCodigoBarras.Text;
    Produto.Observacoes := edtObservacoes.Text;
    Produto.DataCadastro := Date;

    if Produto.IncluirProduto = False then
      MessageDlg('Não foi possível incluir o produto!', mtError, [mbok], 0);
  Finally
    FreeAndNil(Produto);
  End;
end;

procedure TIncProduto.AlterarProduto;
var vValor: Double;
begin
  Try
    Produto:= TProduto.Create;
    Produto.ID := vID;
    Produto.Codigo := edtCodigo.Text;
    Produto.Descricao := edtDescricao.Text;
    if TryStrtoFloat(edtValor.Text, vValor) then Produto.Valor:= vValor Else Produto.Valor := 0;
    Produto.CodigoBarras := edtCodigoBarras.Text;
    Produto.Observacoes := edtObservacoes.Text;

    if Produto.AlterarProduto = False then
      MessageDlg('Não foi possível alterar o produto!', mtError, [mbok], 0);
  Finally
    FreeAndNil(Produto);
  End;
end;

procedure TIncProduto.CarregarProduto;
begin
  Try
    Produto:= TProduto.Create;
    Produto.LerProduto(vID);
    edtCodigo.Text       := Produto.Codigo;
    edtDescricao.Text    := Produto.Descricao;
    edtValor.Text        := FormatFloat('#,##0.00', Produto.Valor);
    edtCodigoBarras.Text := Produto.CodigoBarras;
    edtObservacoes.Text  := Produto.Observacoes;
    edtDataCadastro.Text := FormatDateTime('dd/mm/yyyy', Produto.DataCadastro);
  Finally
    FreeAndNil(Produto);
  End;
end;


procedure TIncProduto.FormShow(Sender: TObject);
begin
  if vID <> 0 then // Se for edição
    CarregarProduto;
end;

end.

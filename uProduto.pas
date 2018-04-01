unit uProduto;

interface

uses

Windows, SysUtils, Classes, Controls, Forms, ComCtrls, uControle, DB;

type

  TProduto = class
  private
    FID : Integer;
    FCodigo : String;
    FDescricao : String;
    FValor : Currency;
    FCodigoBarras : String;
    FDataCadastro : TDate;
    FObservacoes : String;
    FControle: TControle; // Classe de persistência
    procedure SetCodigo(const Value: String);
    procedure SetDescricao(const Value: String);
    procedure SetValor(const Value: Currency);
    procedure SetCodigoBarras(const Value: String);
    procedure SetObservacoes(const Value: String);
  public
    function IncluirProduto : Boolean;
    function AlterarProduto : Boolean;
    function ExcluirProduto : Boolean;
    function LerProduto(pID:integer):TProduto;
    function ConsultarProduto(pCodigo:string):TDataSet;
    constructor Create;
    destructor Destroy;

    property ID : Integer read FID write FID;
    property Codigo : String read FCodigo write SetCodigo;
    property Descricao : String read FDescricao write SetDescricao;
    property Valor : Currency read FValor write SetValor;
    property CodigoBarras : String read FCodigoBarras write SetCodigoBarras;
    property DataCadastro : TDate read FDataCadastro write FDataCadastro;
    property Observacoes : String read FObservacoes write SetObservacoes;
end;

implementation

{ TProduto }

constructor TProduto.Create;
begin
  FControle:= TControle.Create;
end;

destructor TProduto.Destroy;
begin
  FreeAndNil(FControle);
  inherited;
end;


function TProduto.IncluirProduto: Boolean;
begin
  FControle.qryGeral.Close;
  FControle.qryGeral.SQL.Clear;
  FControle.qryGeral.SQL.Add(' INSERT INTO PRODUTOS ');
  FControle.qryGeral.SQL.Add(' (CODIGO, ');
  FControle.qryGeral.SQL.Add(' DESCRICAO, ');
  FControle.qryGeral.SQL.Add(' VALOR, ');
  FControle.qryGeral.SQL.Add(' CODIGOBARRAS, ');
  FControle.qryGeral.SQL.Add(' DATACADASTRO, ');
  FControle.qryGeral.SQL.Add(' OBSERVACOES) ');

  FControle.qryGeral.SQL.Add(' VALUES (:vCODIGO, ');
  FControle.qryGeral.SQL.Add(' :vDESCRICAO, ');
  FControle.qryGeral.SQL.Add(' :vVALOR, ');
  FControle.qryGeral.SQL.Add(' :vCODIGOBARRAS, ');
  FControle.qryGeral.SQL.Add(' :vDATACADASTRO, ');
  FControle.qryGeral.SQL.Add(' :vOBSERVACOES) ');

  FControle.qryGeral.ParamByName('vCODIGO').AsString := Self.Codigo;
  FControle.qryGeral.ParamByName('vDESCRICAO').AsString := Self.Descricao;
  FControle.qryGeral.ParamByName('vVALOR').AsFloat := Self.Valor;
  FControle.qryGeral.ParamByName('vCODIGOBARRAS').AsString := Self.CodigoBarras;
  FControle.qryGeral.ParamByName('vDATACADASTRO').AsDate := Self.DataCadastro;
  FControle.qryGeral.ParamByName('vOBSERVACOES').AsString := Self.Observacoes;

  try
    FControle.qryGeral.ExecSQL;
    Result := True;
  except
    Result := False;
  end;

end;

function TProduto.AlterarProduto: Boolean;
begin
  FControle.qryGeral.Close;
  FControle.qryGeral.SQL.Clear;
  FControle.qryGeral.SQL.Add(' UPDATE PRODUTOS ');
  FControle.qryGeral.SQL.Add(' SET CODIGO = :vCODIGO, ');
  FControle.qryGeral.SQL.Add(' DESCRICAO = :vDESCRICAO, ');
  FControle.qryGeral.SQL.Add(' VALOR = :vVALOR, ');
  FControle.qryGeral.SQL.Add(' CODIGOBARRAS = :vCODIGOBARRAS, ');
  FControle.qryGeral.SQL.Add(' OBSERVACOES = :vOBSERVACOES ');
  FControle.qryGeral.SQL.Add(' WHERE (ID = :vID) ');

  FControle.qryGeral.ParamByName('vID').AsInteger := Self.ID;
  FControle.qryGeral.ParamByName('vCODIGO').AsString := Self.Codigo;
  FControle.qryGeral.ParamByName('vDESCRICAO').AsString := Self.Descricao;
  FControle.qryGeral.ParamByName('vVALOR').AsFloat := Self.Valor;
  FControle.qryGeral.ParamByName('vCODIGOBARRAS').AsString := Self.CodigoBarras;
  FControle.qryGeral.ParamByName('vOBSERVACOES').AsString := Self.Observacoes;
  try
    FControle.qryGeral.ExecSQL;
    Result := True;
  except
    Result := False;
  end;

end;

function TProduto.ExcluirProduto: Boolean;
begin
  FControle.qryGeral.Close;
  FControle.qryGeral.SQL.Clear;
  FControle.qryGeral.SQL.Add(' DELETE FROM PRODUTOS ');
  FControle.qryGeral.SQL.Add(' WHERE ID = :vID ');
  FControle.qryGeral.ParamByName('vID').AsInteger := Self.ID;
  try
    FControle.qryGeral.ExecSQL;
    Result := True;
  except
    Result := False;
  end

end;

function TProduto.LerProduto(pID: integer): TProduto;
begin
  FControle.qryGeral.Close;
  FControle.qryGeral.SQL.Clear;
  FControle.qryGeral.SQL.Add(' SELECT ID, ');
  FControle.qryGeral.SQL.Add(' CODIGO, ');
  FControle.qryGeral.SQL.Add(' DESCRICAO, ');
  FControle.qryGeral.SQL.Add(' VALOR, ');
  FControle.qryGeral.SQL.Add(' CODIGOBARRAS, ');
  FControle.qryGeral.SQL.Add(' DATACADASTRO, ');
  FControle.qryGeral.SQL.Add(' OBSERVACOES ');
  FControle.qryGeral.SQL.Add(' FROM PRODUTOS ');
  FControle.qryGeral.SQL.Add(' WHERE ID = '+ InttoStr(pID) );
  FControle.qryGeral.Open;
  if FControle.qryGeral.IsEmpty then
  begin
    Self.ID := 0;
  end
  else
  begin
    Self.ID           := FControle.qryGeral.FieldByName('ID').AsInteger;
    Self.Codigo       := FControle.qryGeral.FieldByName('CODIGO').AsString;
    Self.Descricao    := FControle.qryGeral.FieldByName('DESCRICAO').AsString;
    Self.Valor        := FControle.qryGeral.FieldByName('VALOR').AsFloat;
    Self.CodigoBarras := FControle.qryGeral.FieldByName('CODIGOBARRAS').AsString;
    Self.DataCadastro := FControle.qryGeral.FieldByName('DATACADASTRO').AsDateTime;
    Self.Observacoes  := FControle.qryGeral.FieldByName('OBSERVACOES').AsString;
  end;
  FControle.qryGeral.Close;
end;

function TProduto.ConsultarProduto(pCodigo: string): TDataSet;
begin
  FControle.qryGeral.Close;
  FControle.qryGeral.SQL.Clear;
  FControle.qryGeral.SQL.Add(' SELECT ID, ');
  FControle.qryGeral.SQL.Add(' CODIGO, ');
  FControle.qryGeral.SQL.Add(' DESCRICAO, ');
  FControle.qryGeral.SQL.Add(' VALOR, ');
  FControle.qryGeral.SQL.Add(' CODIGOBARRAS, ');
  FControle.qryGeral.SQL.Add(' DATACADASTRO, ');
  FControle.qryGeral.SQL.Add(' OBSERVACOES ');
  FControle.qryGeral.SQL.Add(' FROM PRODUTOS ');
  if pCodigo <> '' then
    FControle.qryGeral.SQL.Add(' WHERE CODIGO LIKE '+ QuotedStr(pCodigo + '%'));
  FControle.qryGeral.SQL.Add(' ORDER BY CODIGO ');
  FControle.qryGeral.Open;
  Result:= TDataSet(FControle.qryGeral);
end;

procedure TProduto.SetDescricao(const Value: String);
begin
  If Value <> '' Then
     FDescricao := Copy(Value, 1, 200)
  Else
    Raise Exception.Create('Informe uma descrição!');
end;

procedure TProduto.SetCodigo(const Value: String);
begin
  If Value <> '' Then
     FCodigo := Copy(Value, 1, 30)
  Else
    Raise Exception.Create('Informe um código!');
end;

procedure TProduto.SetValor(const Value: Currency);
begin
  Try
    FValor := Value;
  Except
    Raise Exception.Create('Informe um valor válido!');
  end;
end;

procedure TProduto.SetCodigoBarras(const Value: String);
begin
  FCodigoBarras := Copy(Value, 1, 20);
end;

procedure TProduto.SetObservacoes(const Value: String);
begin
  FObservacoes := Copy(Value, 1, 200);
end;


end.

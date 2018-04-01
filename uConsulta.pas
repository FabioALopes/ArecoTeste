unit uConsulta;

interface

uses

Windows, SysUtils, Classes, Controls, Forms, ComCtrls, uConexao,
ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TConsulta = class
  private
    FConexao  : TConexao;
    FqryConsulta : TZQuery;
  public
    constructor Create(pConexaoControle:TControle);
    destructor Destroy; override;
    function ConsultaProduto(pCodigo: string): TZQuery;
    property qryConsulta : TZQuery read FqryConsulta write FqryConsulta;
  end;

implementation

{ TConsulta }

constructor TConsulta.Create(pConexaoControle:TControle);
begin
  FConsulta := pConexaoControle;
end;

destructor TConsulta.Destroy;
begin
  inherited;
end;




end.

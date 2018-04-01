unit uControle; // Classe Controller

interface

uses
   Windows, Messages, SysUtils, Classes,  Controls, Forms, Dialogs,
   Variants, Contnrs, StrUtils, uConexao,
   ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TControle = class
    private
      FConexao  : TConexao;
      FqryGeral : TZQuery;
    public
     constructor Create;
     destructor  Destroy; override;
     property qryGeral : TZQuery read FqryGeral write FqryGeral;
  end;

implementation

{ TControle }

constructor TControle.Create;
begin
  FConexao  := TConexao.Create;
  FqryGeral := TZQuery.Create(Application);
  FqryGeral.Connection := FConexao.ConexaoDados;
end;

destructor TControle.Destroy;
begin
  inherited;
end;

end.

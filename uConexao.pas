unit uConexao;

interface

uses
  SysUtils, Forms, ZAbstractConnection, ZConnection;

type
   TConexao = class
      private
       FConexao : TZConnection;
      public
       constructor Create;
       destructor  Destroy; override;
       function GetConexao : TZConnection;
       property ConexaoDados : TZConnection read GetConexao;
   end;

implementation

{ TConexaoBanco }

constructor TConexao.Create;
  function GetCaminhoBD: String;
  begin
    Result:= ExtractFilePath(Application.ExeName) + 'ARECO.FDB';
  end;
  function GetLibraryBD: String;
  begin
    Result:= ExtractFilePath(Application.ExeName) + 'FBCLIENT.DLL';
  end;

begin
  try
    FConexao := TZConnection.Create(Application);
    FConexao.Disconnect;
    FConexao.HostName       := 'localhost';
    FConexao.Port           := 3050;
    FConexao.Database       := GetCaminhoBD;
    FConexao.User           := 'SYSDBA';
    FConexao.Password       := 'masterkey';
    FConexao.Protocol       := 'firebird-3.0';
    FConexao.LoginPrompt    := False;
    FConexao.LibLocation := GetLibraryBD;
    FConexao.Connect;
  except
    Raise;
  end;
end;

destructor TConexao.Destroy;
begin
  FConexao.Free;
  inherited;
end;

function TConexao.GetConexao: TZConnection;
begin
  Result := FConexao;
end;

end.

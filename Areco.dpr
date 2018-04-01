program Areco;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Principal},
  uControle in 'uControle.pas',
  uProduto in 'uProduto.pas',
  uConexao in 'uConexao.pas',
  uIncProduto in 'uIncProduto.pas' {IncProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal, Principal);
  Application.Run;
end.

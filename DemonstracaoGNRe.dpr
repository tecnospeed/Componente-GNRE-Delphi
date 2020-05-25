program DemonstracaoGNRe;

uses
  Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

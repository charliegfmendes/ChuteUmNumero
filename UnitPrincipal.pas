unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFormPrincipal = class(TForm)
    LabelT�tulo: TLabel;
    LabelDescri��o: TLabel;
    LabelEditChute: TLabel;
    EditChute: TEdit;
    ButtonChutar: TButton;
    LabelChutes: TLabel;
    Label�ltimoResultado: TLabel;
    LabelBaixoOuAlto: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ButtonChutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;
  N�meroAleat�rio: Integer;
  ContagemDosChutes: Integer;

implementation

{$R *.dfm}


procedure TFormPrincipal.ButtonChutarClick(Sender: TObject);
var
  RespostaDoUsu�rio: Integer;
begin
  RespostaDoUsu�rio := StrToInt(EditChute.Text);

  if ContagemDosChutes < 10 then
  begin
    if ContagemDosChutes = 1 then
    begin
      LabelChutes.Caption := 'Chutes anteriores:';
    end;
    LabelChutes.Caption := LabelChutes.Caption + ' ';

    if  RespostaDoUsu�rio = N�meroAleat�rio then
    begin
      Label�ltimoResultado.Caption := 'Parab�ns voc� acertou!';
      LabelChutes.Caption := LabelChutes.Caption + IntToStr(N�meroAleat�rio);
      EditChute.Text := '';
    end
    else
    begin
      if N�meroAleat�rio > RespostaDoUsu�rio then
      begin
        Label�ltimoResultado.Caption := 'Errou! Seu chute est� baixo. Tente de novo.';
      end
      else
      begin
        Label�ltimoResultado.Caption := 'Errou! Seu chute est� alto. Tente de novo.';
      end;
      LabelChutes.Caption := LabelChutes.Caption + EditChute.Text;
      EditChute.Text := '';
      ContagemDosChutes := ContagemDosChutes + 1;
    end;
  end
  else
  begin
    Label�ltimoResultado.Caption := 'Tentativas esgotadas, o chute certo era ' + IntToStr(N�meroAleat�rio);
  end;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  Randomize;
  N�meroAleat�rio := Random(101);
  ContagemDosChutes := 1;
end;

end.

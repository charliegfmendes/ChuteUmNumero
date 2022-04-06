unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFormPrincipal = class(TForm)
    LabelTítulo: TLabel;
    LabelDescrição: TLabel;
    LabelEditChute: TLabel;
    EditChute: TEdit;
    ButtonChutar: TButton;
    LabelChutes: TLabel;
    LabelÚltimoResultado: TLabel;
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
  NúmeroAleatório: Integer;
  ContagemDosChutes: Integer;

implementation

{$R *.dfm}


procedure TFormPrincipal.ButtonChutarClick(Sender: TObject);
var
  RespostaDoUsuário: Integer;
begin
  RespostaDoUsuário := StrToInt(EditChute.Text);

  if ContagemDosChutes < 10 then
  begin
    if ContagemDosChutes = 1 then
    begin
      LabelChutes.Caption := 'Chutes anteriores:';
    end;
    LabelChutes.Caption := LabelChutes.Caption + ' ';

    if  RespostaDoUsuário = NúmeroAleatório then
    begin
      LabelÚltimoResultado.Caption := 'Parabéns você acertou!';
      LabelChutes.Caption := LabelChutes.Caption + IntToStr(NúmeroAleatório);
      EditChute.Text := '';
    end
    else
    begin
      if NúmeroAleatório > RespostaDoUsuário then
      begin
        LabelÚltimoResultado.Caption := 'Errou! Seu chute está baixo. Tente de novo.';
      end
      else
      begin
        LabelÚltimoResultado.Caption := 'Errou! Seu chute está alto. Tente de novo.';
      end;
      LabelChutes.Caption := LabelChutes.Caption + EditChute.Text;
      EditChute.Text := '';
      ContagemDosChutes := ContagemDosChutes + 1;
    end;
  end
  else
  begin
    LabelÚltimoResultado.Caption := 'Tentativas esgotadas, o chute certo era ' + IntToStr(NúmeroAleatório);
  end;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  Randomize;
  NúmeroAleatório := Random(101);
  ContagemDosChutes := 1;
end;

end.

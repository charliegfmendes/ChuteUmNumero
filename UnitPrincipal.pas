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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

end.

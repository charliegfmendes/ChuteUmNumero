object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Jogo chute um n'#250'mero'
  ClientHeight = 378
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelTítulo: TLabel
    Left = 40
    Top = 56
    Width = 129
    Height = 19
    Caption = 'Chute um n'#250'mero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelDescrição: TLabel
    Left = 40
    Top = 81
    Width = 420
    Height = 48
    Caption = 
      'N'#243's selecionamos um n'#250'mero aleat'#243'rio entre 1 e 100. Veja se cons' +
      'egue adivinhar em 10 chances ou menos. N'#243's lhe diremos se seu ch' +
      'ute foi muito alto ou muito baixo.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object LabelEditChute: TLabel
    Left = 40
    Top = 144
    Width = 96
    Height = 16
    Caption = 'Digite seu chute:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelChutes: TLabel
    Left = 40
    Top = 176
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelÚltimoResultado: TLabel
    Left = 40
    Top = 195
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelBaixoOuAlto: TLabel
    Left = 40
    Top = 217
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object EditChute: TEdit
    Left = 142
    Top = 143
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object ButtonChutar: TButton
    Left = 269
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Chutar'
    TabOrder = 1
  end
end

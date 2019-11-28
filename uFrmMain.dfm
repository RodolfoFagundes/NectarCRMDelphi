object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 361
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object splResults: TSplitter
    Left = 366
    Top = 41
    Width = 10
    Height = 320
    Align = alRight
    Color = clDefault
    ParentColor = False
    ExplicitLeft = 297
  end
  object mmRequest: TMemo
    Left = 0
    Top = 41
    Width = 366
    Height = 320
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 725
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      725
      41)
    object btnEnviar: TButton
      Left = 232
      Top = 8
      Width = 273
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Enviar'
      TabOrder = 0
      OnClick = btnEnviarClick
    end
  end
  object mmResult: TMemo
    Left = 376
    Top = 41
    Width = 349
    Height = 320
    Align = alRight
    ScrollBars = ssVertical
    TabOrder = 2
  end
end

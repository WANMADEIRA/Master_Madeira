object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 357
  ClientWidth = 656
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Painel_Superior: TPanel
    Left = 0
    Top = 0
    Width = 656
    Height = 65
    Align = alTop
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 435
      Top = 23
      Width = 98
      Height = 22
      Caption = 'PESQUISAR'
    end
    object SpeedButton2: TSpeedButton
      Left = 542
      Top = 23
      Width = 98
      Height = 22
      Caption = 'CONFIRMAR'
    end
    object ComboBox1: TComboBox
      Left = 15
      Top = 24
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 166
      Top = 24
      Width = 258
      Height = 21
      Hint = 'Pesuisar o conteudo desejado'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TextHint = 'Pesquisar'
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 65
    Width = 656
    Height = 292
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
  end
  object DS: TDataSource
    Left = 520
    Top = 112
  end
  object CDSPESQUISA: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 520
    Top = 208
  end
end

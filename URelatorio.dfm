object FRelatorio: TFRelatorio
  Left = 0
  Top = 0
  Caption = 'Relatorio de Aluno'
  ClientHeight = 171
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 106
    Width = 425
    Height = 57
    TabOrder = 0
    object Editar_Relatorio: TButton
      Left = 64
      Top = 8
      Width = 137
      Height = 41
      Caption = 'Editar Relatorio'
      TabOrder = 0
      OnClick = Editar_RelatorioClick
    end
    object Gerar_Relatorio: TButton
      Left = 224
      Top = 8
      Width = 139
      Height = 41
      Caption = 'Gerar Relat'#243'rio'
      TabOrder = 1
      OnClick = Gerar_RelatorioClick
    end
  end
  object frxReport: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44292.803904085650000000
    ReportOptions.LastChange = 44292.804121597220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 200
    Top = 16
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 296
    Top = 18
  end
end

object frmPrincipal: TfrmPrincipal
  Left = 364
  Top = 185
  Width = 1017
  Height = 533
  Caption = 'Componente GNRe - Demonstra'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblProtocolo: TLabel
    Left = 529
    Top = 11
    Width = 67
    Height = 16
    Caption = 'Protocolo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCertificado: TLabel
    Left = 11
    Top = 9
    Width = 75
    Height = 16
    Caption = 'Certificado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblUF: TLabel
    Left = 922
    Top = 11
    Width = 23
    Height = 16
    Caption = 'UF: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbCertificados: TComboBox
    Left = 92
    Top = 8
    Width = 420
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object edtProtocolo: TEdit
    Left = 601
    Top = 8
    Width = 314
    Height = 21
    TabOrder = 1
  end
  object pgXmlDestinatario: TPageControl
    Left = 11
    Top = 256
    Width = 505
    Height = 234
    ActivePage = tsXMLDestinatario
    TabOrder = 2
    object tsXMLDestinatario: TTabSheet
      Caption = 'XML Destinat'#225'rio'
      object mmXML: TMemo
        Left = 0
        Top = 0
        Width = 497
        Height = 206
        Align = alClient
        BorderStyle = bsNone
        ScrollBars = ssVertical
        TabOrder = 0
        OnKeyDown = mmCtrlA
      end
    end
  end
  object pgcTX2Complementar: TPageControl
    Left = 527
    Top = 47
    Width = 467
    Height = 199
    ActivePage = tsTX2Complementar
    TabOrder = 3
    object tsTX2Complementar: TTabSheet
      Caption = 'Par'#226'metros Complementares (TX2 Complementar)'
      object mmTX2Complementar: TMemo
        Left = 0
        Top = 0
        Width = 459
        Height = 171
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        OnKeyDown = mmCtrlA
      end
    end
  end
  object pgRetorno: TPageControl
    Left = 529
    Top = 256
    Width = 467
    Height = 234
    ActivePage = tsRetorno
    TabOrder = 4
    object tsRetorno: TTabSheet
      Caption = 'Retorno'
      object mmRetorno: TMemo
        Left = 0
        Top = 0
        Width = 459
        Height = 206
        Align = alClient
        BorderStyle = bsNone
        ScrollBars = ssVertical
        TabOrder = 0
        OnKeyDown = mmCtrlA
      end
    end
  end
  object pgcGeral: TPageControl
    Left = 11
    Top = 47
    Width = 505
    Height = 114
    ActivePage = tsMenuPrincipal
    TabOrder = 5
    object tsMenuPrincipal: TTabSheet
      Caption = 'M'#233'todos'
      object btnConfigurarIni: TButton
        Left = 333
        Top = 6
        Width = 155
        Height = 34
        Caption = 'Configurar Arquivo INI'
        TabOrder = 2
        OnClick = btnConfigurarIniClick
      end
      object btnLoadConfig: TButton
        Left = 172
        Top = 6
        Width = 155
        Height = 34
        Caption = 'Load Config'
        TabOrder = 1
        OnClick = btnLoadConfigClick
      end
      object btnConsultaReciboGuia: TButton
        Left = 172
        Top = 46
        Width = 155
        Height = 34
        Caption = 'Consulta Recibo Guia'
        TabOrder = 4
        OnClick = btnConsultaReciboGuiaClick
      end
      object btnEnviarGuia: TButton
        Left = 5
        Top = 46
        Width = 161
        Height = 34
        Caption = 'Enviar Guia'
        TabOrder = 3
        OnClick = btnEnviarGuiaClick
      end
      object btnVisualizarGnre: TButton
        Left = 333
        Top = 46
        Width = 155
        Height = 34
        Caption = 'Visualizar Gnre'
        TabOrder = 5
        OnClick = btnVisualizarGnreClick
      end
      object rgConfig: TRadioGroup
        Left = 5
        Top = 6
        Width = 161
        Height = 34
        Caption = 'Modo configura'#231#227'o:'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Via INI'
          'Via Fonte')
        TabOrder = 0
      end
    end
  end
  object edtUF: TEdit
    Left = 950
    Top = 8
    Width = 40
    Height = 21
    ReadOnly = True
    TabOrder = 6
  end
  object pgcImpressao: TPageControl
    Left = 8
    Top = 171
    Width = 504
    Height = 75
    ActivePage = tsImpressao
    TabOrder = 7
    object tsImpressao: TTabSheet
      Caption = 'Impress'#227'o'
      object btnImprimirGuia: TButton
        Left = 8
        Top = 6
        Width = 161
        Height = 34
        Caption = 'Imprimir'
        TabOrder = 0
        OnClick = btnImprimirGuiaClick
      end
      object btnExportarGnre: TButton
        Left = 175
        Top = 6
        Width = 155
        Height = 34
        Caption = 'Exportar'
        TabOrder = 1
        OnClick = btnExportarGnreClick
      end
      object btnEditarModeloGuia: TButton
        Left = 336
        Top = 6
        Width = 155
        Height = 34
        Caption = 'Editar Layout'
        TabOrder = 2
        OnClick = btnEditarModeloGuiaClick
      end
    end
  end
  object btCarregarXML: TButton
    Left = 365
    Top = 280
    Width = 131
    Height = 25
    Caption = 'Carregar XML'
    TabOrder = 8
    OnClick = btCarregarXMLClick
  end
  object OpenDialog: TOpenDialog
    Left = 81
    Top = 440
  end
end

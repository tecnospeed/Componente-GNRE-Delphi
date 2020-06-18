object frmPrincipal: TfrmPrincipal
  Left = 626
  Top = 211
  Width = 554
  Height = 663
  AutoSize = True
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
  object Label2: TLabel
    Left = 189
    Top = 2
    Width = 106
    Height = 13
    Caption = 'CNPJ SoftwareHouse:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 373
    Top = 2
    Width = 110
    Height = 13
    Caption = 'Token SoftwareHouse:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object pgXmlDestinatario: TPageControl
    Left = 0
    Top = 242
    Width = 546
    Height = 390
    ActivePage = tsXMLDestinatario
    TabOrder = 0
    object tsXMLDestinatario: TTabSheet
      Caption = 'XML Destinat'#225'rio'
      object mmXML: TMemo
        Left = 0
        Top = 0
        Width = 538
        Height = 362
        Align = alClient
        BorderStyle = bsNone
        ScrollBars = ssVertical
        TabOrder = 0
        OnKeyDown = mmCtrlA
      end
    end
    object pgcTX2Complementar: TTabSheet
      Caption = 'TX2 Complementar'
      ImageIndex = 1
      object mmTX2Complementar: TMemo
        Left = 0
        Top = 0
        Width = 538
        Height = 362
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
    object pgRetorno: TTabSheet
      Caption = 'Retorno'
      ImageIndex = 2
      object mmRetorno: TMemo
        Left = 0
        Top = 0
        Width = 538
        Height = 362
        Align = alClient
        BorderStyle = bsNone
        ScrollBars = ssVertical
        TabOrder = 0
        OnKeyDown = mmCtrlA
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 0
    Width = 185
    Height = 241
    Caption = 'Configura'#231#245'es'
    TabOrder = 1
    object lblProtocolo: TLabel
      Left = 6
      Top = 93
      Width = 104
      Height = 13
      Caption = 'N'#250'mero do Protocolo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 6
      Top = 54
      Width = 29
      Height = 13
      Caption = 'CNPJ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblUF: TLabel
      Left = 6
      Top = 15
      Width = 20
      Height = 13
      Caption = 'UF: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtProtocolo: TEdit
      Left = 6
      Top = 107
      Width = 172
      Height = 21
      TabOrder = 0
    end
    object edtCNPJ: TEdit
      Left = 6
      Top = 68
      Width = 172
      Height = 21
      TabOrder = 1
    end
    object edtUF: TEdit
      Left = 6
      Top = 30
      Width = 40
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object rgConfig: TRadioGroup
      Left = 6
      Top = 145
      Width = 172
      Height = 33
      Caption = 'Modo configura'#231#227'o:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Via INI'
        'Via Fonte')
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 189
    Top = 37
    Width = 356
    Height = 203
    Caption = 'Opera'#231#245'es'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object lblCertificado: TLabel
      Left = 6
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Certificado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object pgcGeral: TPageControl
      Left = 6
      Top = 60
      Width = 343
      Height = 140
      ActivePage = tsMenuPrincipal
      TabOrder = 0
      object tsMenuPrincipal: TTabSheet
        Caption = 'M'#233'todos'
        object btnConfigurarIni: TButton
          Left = 4
          Top = 9
          Width = 155
          Height = 29
          Caption = '1 - Configurar Arquivo INI'
          TabOrder = 0
          OnClick = btnConfigurarIniClick
        end
        object btnConsultaReciboGuia: TButton
          Left = 87
          Top = 77
          Width = 155
          Height = 29
          Caption = '5 - Consulta Recibo Guia'
          TabOrder = 2
          OnClick = btnConsultaReciboGuiaClick
        end
        object btnEnviarGuia: TButton
          Left = 173
          Top = 43
          Width = 155
          Height = 29
          Caption = '4 - Enviar Guia'
          TabOrder = 1
          OnClick = btnEnviarGuiaClick
        end
        object btnLoadConfig: TButton
          Left = 173
          Top = 8
          Width = 155
          Height = 29
          Caption = '2 - Load Config'
          TabOrder = 3
          OnClick = btnLoadConfigClick
        end
        object btCarregarXML: TButton
          Left = 4
          Top = 43
          Width = 155
          Height = 29
          Caption = '3 - Carregar XML Destinat'#225'rio'
          TabOrder = 4
          OnClick = btCarregarXMLClick
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Impress'#227'o'
        ImageIndex = 1
        object btnImprimirGuia: TButton
          Left = 173
          Top = 43
          Width = 155
          Height = 29
          Caption = 'Imprimir'
          TabOrder = 0
          OnClick = btnImprimirGuiaClick
        end
        object btnExportarGnre: TButton
          Left = 4
          Top = 9
          Width = 155
          Height = 29
          Caption = 'Exportar'
          TabOrder = 1
          OnClick = btnExportarGnreClick
        end
        object btnEditarModeloGuia: TButton
          Left = 173
          Top = 8
          Width = 155
          Height = 29
          Caption = 'Editar Layout'
          TabOrder = 2
          OnClick = btnEditarModeloGuiaClick
        end
        object btnVisualizarGnre: TButton
          Left = 4
          Top = 43
          Width = 155
          Height = 29
          Caption = 'Visualizar GNRe'
          TabOrder = 3
          OnClick = btnVisualizarGnreClick
        end
      end
    end
    object cbCertificados: TComboBox
      Left = 6
      Top = 33
      Width = 345
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbCertificadosChange
    end
  end
  object edtCnpjSoftwareHouse: TEdit
    Left = 189
    Top = 17
    Width = 172
    Height = 21
    TabOrder = 3
  end
  object edtTokenSoftwareHouse: TEdit
    Left = 373
    Top = 17
    Width = 172
    Height = 21
    TabOrder = 4
  end
  object OpenDialog: TOpenDialog
    Left = 73
    Top = 200
  end
end

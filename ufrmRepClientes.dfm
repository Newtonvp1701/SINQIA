object frmRepClientes: TfrmRepClientes
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Clientes'
  ClientHeight = 428
  ClientWidth = 869
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Scaled = False
  OnShow = FormShow
  TextHeight = 15
  object pnBotoes: TPanel
    Left = 0
    Top = 341
    Width = 869
    Height = 87
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 340
    ExplicitWidth = 865
    object btnVisualizar: TButton
      Left = 64
      Top = 23
      Width = 177
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 0
      OnClick = btnVisualizarClick
    end
    object btnImprimir: TButton
      Left = 336
      Top = 23
      Width = 177
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 1
      OnClick = btnVisualizarClick
    end
    object btnSair: TButton
      Left = 592
      Top = 23
      Width = 177
      Height = 25
      Caption = 'Sair'
      TabOrder = 2
      OnClick = btnSairClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 869
    Height = 341
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 865
    ExplicitHeight = 340
    object lblEstado: TLabel
      Left = 32
      Top = 209
      Width = 92
      Height = 15
      Caption = 'Selecionar Estado'
    end
    object gbCodCliente: TGroupBox
      Left = 32
      Top = 24
      Width = 225
      Height = 153
      Caption = 'C'#243'digo de Cliente'
      TabOrder = 0
      object edtCodIni: TLabeledEdit
        Left = 16
        Top = 41
        Width = 121
        Height = 23
        EditLabel.Width = 76
        EditLabel.Height = 15
        EditLabel.Caption = 'C'#243'digo Inicial '
        TabOrder = 0
        Text = ''
      end
      object edtCodFin: TLabeledEdit
        Left = 16
        Top = 99
        Width = 121
        Height = 23
        EditLabel.Width = 67
        EditLabel.Height = 15
        EditLabel.Caption = 'C'#243'digo Final'
        TabOrder = 1
        Text = ''
      end
    end
    object cbEstado: TComboBox
      Left = 32
      Top = 241
      Width = 193
      Height = 23
      TabOrder = 1
      Text = 'cbEstado'
    end
    object gbCodCidade: TGroupBox
      Left = 288
      Top = 24
      Width = 297
      Height = 153
      Caption = 'C'#243'digo de Cidade'
      TabOrder = 2
      object edtCodCidIni: TLabeledEdit
        Left = 32
        Top = 41
        Width = 193
        Height = 23
        EditLabel.Width = 59
        EditLabel.Height = 15
        EditLabel.Caption = 'Cod. Inicial'
        TabOrder = 0
        Text = ''
      end
      object edtcodCidFin: TLabeledEdit
        Left = 32
        Top = 99
        Width = 193
        Height = 23
        EditLabel.Width = 67
        EditLabel.Height = 15
        EditLabel.Caption = 'C'#243'digo Final'
        TabOrder = 1
        Text = ''
      end
    end
    object rgSelecao: TRadioGroup
      Left = 288
      Top = 209
      Width = 297
      Height = 112
      Caption = 'Selecionar a Op'#231#227'o:'
      Items.Strings = (
        'C'#243'digo de Cliente'
        'C'#243'digo de Cidade '
        'Estado'
        'Agrupados por Estado'
        'Todos')
      TabOrder = 3
      OnClick = rgSelecaoClick
    end
  end
  object qryEstados: TFDQuery
    Active = True
    Connection = dm.dbConn
    SQL.Strings = (
      'select * from dbo.clientes '
      '')
    Left = 704
    Top = 128
  end
  object dsEstados: TDataSource
    DataSet = qryEstados
    Left = 704
    Top = 176
  end
end

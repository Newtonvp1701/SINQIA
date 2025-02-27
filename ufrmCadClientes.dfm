object frmCadClientes: TfrmCadClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 730
  ClientWidth = 1188
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  GlassFrame.Enabled = True
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 15
  object pnBottom: TPanel
    Left = 0
    Top = 678
    Width = 1188
    Height = 52
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 677
    ExplicitWidth = 1184
    object btnNovo: TButton
      Left = 24
      Top = 10
      Width = 130
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnEditar: TButton
      Left = 226
      Top = 10
      Width = 130
      Height = 25
      Caption = 'Editar'
      TabOrder = 1
      OnClick = btnEditarClick
    end
    object btnExcluir: TButton
      Left = 629
      Top = 10
      Width = 130
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnCancelar: TButton
      Left = 830
      Top = 10
      Width = 130
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = btnCancelarClick
    end
    object btnSair: TButton
      Left = 1032
      Top = 10
      Width = 130
      Height = 25
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
    object btnSalvar: TButton
      Left = 427
      Top = 10
      Width = 130
      Height = 25
      Caption = 'Salvar'
      TabOrder = 5
      OnClick = btnSalvarClick
    end
  end
  object rgPesquisa: TRadioGroup
    Left = 25
    Top = 10
    Width = 185
    Height = 65
    Caption = 'Pesquisar por:'
    Items.Strings = (
      'C'#243'digo'
      'Nome')
    TabOrder = 1
    OnClick = rgPesquisaClick
  end
  object edtPesquisa: TLabeledEdit
    Left = 273
    Top = 34
    Width = 329
    Height = 23
    EditLabel.Width = 46
    EditLabel.Height = 15
    EditLabel.Caption = 'Pesquisa'
    TabOrder = 2
    Text = ''
    OnKeyPress = edtPesquisaKeyPress
  end
  object btnPesquisar: TButton
    Left = 641
    Top = 33
    Width = 128
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 3
    OnClick = btnPesquisarClick
  end
  object pnDadosPrincipal: TPanel
    Left = 24
    Top = 100
    Width = 1138
    Height = 229
    TabOrder = 4
    object lblCidades: TLabel
      Left = 8
      Top = 169
      Width = 106
      Height = 15
      Caption = 'Selecionar a Cidade:'
    end
    object edtComplemento: TLabeledEdit
      Left = 840
      Top = 84
      Width = 265
      Height = 23
      EditLabel.Width = 77
      EditLabel.Height = 15
      EditLabel.Caption = 'Complemento'
      TabOrder = 6
      Text = ''
    end
    object edtEstado: TLabeledEdit
      Left = 8
      Top = 132
      Width = 200
      Height = 23
      EditLabel.Width = 35
      EditLabel.Height = 15
      EditLabel.Caption = 'Estado'
      TabOrder = 7
      Text = ''
      OnExit = edtEstadoExit
    end
    object edtCodCliente: TLabeledEdit
      Left = 8
      Top = 24
      Width = 83
      Height = 23
      EditLabel.Width = 79
      EditLabel.Height = 15
      EditLabel.Caption = 'C'#243'digo Cliente'
      TabOrder = 13
      Text = ''
    end
    object edtNomeCliente: TLabeledEdit
      Left = 114
      Top = 24
      Width = 320
      Height = 23
      EditLabel.Width = 33
      EditLabel.Height = 15
      EditLabel.Caption = 'Nome'
      TabOrder = 0
      Text = ''
    end
    object edtEndereco: TLabeledEdit
      Left = 8
      Top = 84
      Width = 426
      Height = 23
      EditLabel.Width = 49
      EditLabel.Height = 15
      EditLabel.Caption = 'Endere'#231'o'
      TabOrder = 4
      Text = ''
    end
    object edtCEP: TLabeledEdit
      Left = 292
      Top = 132
      Width = 142
      Height = 23
      EditLabel.Width = 21
      EditLabel.Height = 15
      EditLabel.Caption = 'CEP'
      EditMask = '00000\-000;1;_'
      MaxLength = 9
      TabOrder = 9
      Text = '     -   '
      OnExit = edtCEPExit
    end
    object edtBairro: TLabeledEdit
      Left = 509
      Top = 84
      Width = 300
      Height = 23
      EditLabel.Width = 31
      EditLabel.Height = 15
      EditLabel.Caption = 'Bairro'
      TabOrder = 5
      Text = ''
    end
    object edtCodCidade: TLabeledEdit
      Left = 840
      Top = 132
      Width = 200
      Height = 23
      EditLabel.Width = 79
      EditLabel.Height = 15
      EditLabel.Caption = 'C'#243'digo Cidade'
      TabOrder = 10
      Text = ''
    end
    object edtCPF_CGC: TLabeledEdit
      Left = 648
      Top = 24
      Width = 161
      Height = 23
      EditLabel.Width = 21
      EditLabel.Height = 15
      EditLabel.Caption = 'CPF'
      TabOrder = 2
      Text = ''
    end
    object edtEmail: TLabeledEdit
      Left = 840
      Top = 24
      Width = 265
      Height = 23
      EditLabel.Width = 29
      EditLabel.Height = 15
      EditLabel.Caption = 'Email'
      TabOrder = 3
      Text = ''
    end
    object edtCidade: TLabeledEdit
      Left = 509
      Top = 132
      Width = 300
      Height = 23
      EditLabel.Width = 37
      EditLabel.Height = 15
      EditLabel.Caption = 'Cidade'
      TabOrder = 11
      Text = ''
    end
    object dblCidades: TDBLookupComboBox
      Left = 8
      Top = 190
      Width = 329
      Height = 23
      DataField = 'Codigo_Cidade'
      DataSource = dm.dsCadClientes
      KeyField = 'codigo_cidade'
      ListField = 'nome'
      ListSource = dm.dsCadCidades
      TabOrder = 8
      OnClick = dblCidadesClick
    end
    object rgPfPj: TRadioGroup
      Left = 449
      Top = 6
      Width = 160
      Height = 41
      Caption = 'Pessoa Fisica / Juridica'
      Columns = 2
      Items.Strings = (
        'Fisica'
        'Juridica')
      TabOrder = 1
      OnClick = rgPfPjClick
    end
    object edtTelefone: TLabeledEdit
      Left = 840
      Top = 186
      Width = 198
      Height = 23
      EditLabel.Width = 45
      EditLabel.Height = 15
      EditLabel.Caption = 'Telefone'
      EditMask = '!\(99\)0000-0000;1;_'
      MaxLength = 13
      TabOrder = 12
      Text = '(  )    -    '
    end
  end
  object btnListartodosNome: TButton
    Left = 1006
    Top = 33
    Width = 153
    Height = 25
    Caption = 'Listar todos por Nome'
    TabOrder = 5
    OnClick = btnListartodosNomeClick
  end
  object btnListarTodosCodigo: TButton
    Left = 1006
    Top = 64
    Width = 153
    Height = 25
    Caption = 'Listar todos por c'#243'digo'
    TabOrder = 6
    OnClick = btnListarTodosCodigoClick
  end
  object pnGridCliente: TPanel
    Left = 24
    Top = 350
    Width = 1138
    Height = 313
    Caption = 'pnGridCliente'
    TabOrder = 7
    object dbNavClientes: TcxDBNavigator
      Left = 1
      Top = 1
      Width = 1134
      Height = 56
      Buttons.ConfirmDelete = False
      Buttons.CustomButtons = <>
      Buttons.Insert.Enabled = False
      Buttons.Insert.Visible = False
      Buttons.Append.Enabled = False
      Buttons.Delete.Enabled = False
      Buttons.Delete.Visible = False
      Buttons.Edit.Enabled = False
      Buttons.Edit.Visible = False
      Buttons.Post.Visible = False
      Buttons.Cancel.Enabled = False
      Buttons.Cancel.Visible = False
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Enabled = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Enabled = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Enabled = False
      Buttons.Filter.Visible = False
      DataSource = dm.dsCadClientes
      Align = alTop
      TabOrder = 0
    end
    object dbgClientes: TDBGrid
      Left = 1
      Top = 57
      Width = 1136
      Height = 255
      Align = alClient
      DataSource = dm.dsCadClientes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnCellClick = dbgClientesCellClick
      OnDrawDataCell = dbgClientesDrawDataCell
      Columns = <
        item
          Expanded = False
          FieldName = 'id_cliente'
          Title.Caption = 'Id Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CGC_CPF_Cliente'
          Title.Caption = 'CGC CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Telefone'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Endereco'
          Title.Caption = 'Endere'#231'o'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bairro'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Complemento'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'E_mail'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Cidade'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Cidade'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Estado'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cep'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF_PJ'
          Width = 64
          Visible = True
        end>
    end
  end
end

object frmCadCidades: TfrmCadCidades
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cidades'
  ClientHeight = 723
  ClientWidth = 966
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnShow = FormShow
  TextHeight = 15
  object lblAviso: TLabel
    Left = 8
    Top = 211
    Width = 273
    Height = 17
    Caption = 'Clicar no registro para Editar / Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnBottom: TPanel
    Left = 0
    Top = 673
    Width = 966
    Height = 50
    Align = alBottom
    BorderWidth = 1
    TabOrder = 0
    ExplicitTop = 672
    ExplicitWidth = 962
    object btnNovo: TButton
      Left = 24
      Top = 10
      Width = 110
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnEditar: TButton
      Left = 189
      Top = 10
      Width = 110
      Height = 25
      Caption = 'Editar'
      TabOrder = 1
      OnClick = btnEditarClick
    end
    object btnSalvar: TButton
      Left = 355
      Top = 10
      Width = 110
      Height = 25
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = btnSalvarClick
    end
    object btnExcluir: TButton
      Left = 520
      Top = 10
      Width = 110
      Height = 25
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnCancelar: TButton
      Left = 686
      Top = 10
      Width = 110
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = btnCancelarClick
    end
    object btnSair: TButton
      Left = 851
      Top = 10
      Width = 110
      Height = 25
      Caption = 'Sair'
      TabOrder = 5
      OnClick = btnSairClick
    end
  end
  object pnDados: TPanel
    Left = 0
    Top = 0
    Width = 966
    Height = 204
    Align = alTop
    TabOrder = 1
    object rgPesquisar: TRadioGroup
      Left = 24
      Top = 24
      Width = 209
      Height = 64
      Caption = 'Pesquisar por:'
      Items.Strings = (
        'C'#243'digo da Cidade'
        'Nome')
      TabOrder = 0
      OnClick = rgPesquisarClick
    end
    object edtPesquisar: TLabeledEdit
      Left = 272
      Top = 33
      Width = 333
      Height = 23
      EditLabel.Width = 53
      EditLabel.Height = 15
      EditLabel.Caption = 'Pesquisar:'
      TabOrder = 1
      Text = ''
      OnEnter = btnPesquisarClick
    end
    object btnPesquisar: TButton
      Left = 628
      Top = 32
      Width = 121
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = btnPesquisarClick
    end
    object btnListarTodos: TButton
      Left = 764
      Top = 32
      Width = 173
      Height = 25
      Caption = 'Listar Todos por nome'
      TabOrder = 3
      OnClick = btnListarTodosClick
    end
    object btnListarTodosCodigo: TButton
      Left = 764
      Top = 63
      Width = 173
      Height = 25
      Caption = 'Listar Todos por C'#243'digo'
      TabOrder = 4
      OnClick = btnListarTodosCodigoClick
    end
    object GroupBox1: TGroupBox
      Left = 24
      Top = 104
      Width = 921
      Height = 79
      Caption = 'Editar / Excluir'
      TabOrder = 5
      object edtCodCidade: TLabeledEdit
        Left = 16
        Top = 45
        Width = 105
        Height = 23
        EditLabel.Width = 65
        EditLabel.Height = 15
        EditLabel.Caption = 'C'#243'd. Cidade'
        TabOrder = 0
        Text = ''
      end
      object edtCidade: TLabeledEdit
        Left = 153
        Top = 45
        Width = 289
        Height = 23
        EditLabel.Width = 37
        EditLabel.Height = 15
        EditLabel.Caption = 'Cidade'
        TabOrder = 1
        Text = ''
      end
      object edtEstado: TLabeledEdit
        Left = 473
        Top = 45
        Width = 121
        Height = 23
        EditLabel.Width = 35
        EditLabel.Height = 15
        EditLabel.Caption = 'Estado'
        TabOrder = 2
        Text = ''
      end
      object edtCepInicial: TLabeledEdit
        Left = 625
        Top = 45
        Width = 121
        Height = 23
        EditLabel.Width = 55
        EditLabel.Height = 15
        EditLabel.Caption = 'Cep Inicial'
        TabOrder = 3
        Text = ''
      end
      object edtCepFinal: TLabeledEdit
        Left = 778
        Top = 45
        Width = 121
        Height = 23
        EditLabel.Width = 49
        EditLabel.Height = 15
        EditLabel.Caption = 'Cep Final'
        TabOrder = 4
        Text = ''
      end
    end
  end
  object pnGrid: TPanel
    Left = 0
    Top = 234
    Width = 966
    Height = 433
    TabOrder = 2
    object dbgCidades: TDBGrid
      Left = 1
      Top = 61
      Width = 964
      Height = 371
      Align = alBottom
      DataSource = dm.dsCadCidades
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnCellClick = dbgCidadesCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo_cidade'
          Title.Caption = 'C'#243'd. Cidade'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Cidade'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'estado'
          Title.Caption = 'Estado'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep_inicial'
          Title.Caption = 'Cep Inicial'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep_final'
          Title.Caption = 'Cep Final'
          Width = 150
          Visible = True
        end>
    end
    object dbNavClientes: TcxDBNavigator
      Left = 1
      Top = 1
      Width = 960
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
      DataSource = dm.dsCadCidades
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 1134
    end
  end
end

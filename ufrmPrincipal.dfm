object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'SINQIA - Clientes - Cidades'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mnuPrincipal
  OnShow = FormShow
  TextHeight = 15
  object StatusBar1: TStatusBar
    Left = 0
    Top = 423
    Width = 628
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
    ExplicitTop = 422
    ExplicitWidth = 624
  end
  object mnuPrincipal: TMainMenu
    Left = 120
    Top = 80
    object mnuCadastro: TMenuItem
      Caption = 'Cadastros'
      object mnuCadClientes: TMenuItem
        Caption = 'Clientes'
        OnClick = mnuCadClientesClick
      end
      object mnuCadCidades: TMenuItem
        Caption = 'Cidades'
        OnClick = mnuCadCidadesClick
      end
    end
    object mnuRelatorios: TMenuItem
      Caption = 'Relat'#243'rios'
      object mnuRepClientes: TMenuItem
        Caption = 'Clientes'
        OnClick = mnuRepClientesClick
      end
      object mnuRepCidades: TMenuItem
        Caption = 'Cidades'
        OnClick = mnuRepCidadesClick
      end
    end
    object mnuSair: TMenuItem
      Caption = 'Sair'
      OnClick = mnuSairClick
    end
  end
  object FDQuery1: TFDQuery
    Left = 352
    Top = 104
  end
end

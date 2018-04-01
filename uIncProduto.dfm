object IncProduto: TIncProduto
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Incluir/alterar produto'
  ClientHeight = 227
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel
    Left = 8
    Top = 120
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label4: TLabel
    Left = 112
    Top = 120
    Width = 82
    Height = 13
    Caption = 'C'#243'digo de barras'
  end
  object Label5: TLabel
    Left = 8
    Top = 176
    Width = 63
    Height = 13
    Caption = 'Observa'#231#245'es'
  end
  object Label6: TLabel
    Left = 464
    Top = 8
    Width = 68
    Height = 13
    Caption = 'Data cadastro'
  end
  object edtCodigo: TEdit
    Left = 8
    Top = 27
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object edtDescricao: TEdit
    Left = 8
    Top = 83
    Width = 672
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 605
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 605
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = Button2Click
  end
  object edtValor: TEdit
    Left = 8
    Top = 139
    Width = 89
    Height = 21
    Alignment = taRightJustify
    TabOrder = 2
  end
  object edtCodigoBarras: TEdit
    Left = 112
    Top = 139
    Width = 257
    Height = 21
    TabOrder = 3
  end
  object edtObservacoes: TEdit
    Left = 8
    Top = 195
    Width = 672
    Height = 21
    TabOrder = 4
  end
  object edtDataCadastro: TEdit
    Left = 464
    Top = 27
    Width = 105
    Height = 21
    Enabled = False
    TabOrder = 7
  end
end

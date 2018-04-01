object Principal: TPrincipal
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 574
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1008
    Height = 23
    Caption = 'ToolBar1'
    Images = ImageList1
    TabOrder = 0
    ExplicitWidth = 758
    object edtPesquisa: TEdit
      Left = 0
      Top = 0
      Width = 217
      Height = 22
      TabOrder = 0
      OnChange = edtPesquisaChange
    end
    object ToolButton1: TToolButton
      Left = 217
      Top = 0
      Action = Incluir
    end
    object ToolButton2: TToolButton
      Left = 240
      Top = 0
      Action = Alterar
    end
    object ToolButton3: TToolButton
      Left = 263
      Top = 0
      Action = Excluir
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 23
    Width = 1008
    Height = 551
    Align = alClient
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor R$'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGOBARRAS'
        Title.Caption = 'C'#243'digo de barras'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATACADASTRO'
        Title.Caption = 'Data de cadastro'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSERVACOES'
        Title.Caption = 'Observa'#231#245'es'
        Width = 400
        Visible = True
      end>
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 368
    Top = 120
    object Incluir: TAction
      Caption = 'Incluir'
      Hint = 'Incluir'
      ImageIndex = 0
      OnExecute = IncluirExecute
    end
    object Alterar: TAction
      Caption = 'Alterar'
      Hint = 'Alterar'
      ImageIndex = 1
      OnExecute = AlterarExecute
    end
    object Excluir: TAction
      Caption = 'Excluir'
      Hint = 'Excluir'
      ImageIndex = 2
      OnExecute = ExcluirExecute
    end
  end
  object ImageList1: TImageList
    Left = 320
    Top = 272
    Bitmap = {
      494C010103000800140010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCDCDC23CCCCCC33CCCCCC33CCCCCC33DCDCDC23000000000000
      000000000000000000000000000000000000ECECEC13CCCCCC33CCCCCC33CCCC
      CC33CCCCCC33CCCCCC33CCCCCC33CCCCCC33CCCCCC33CCCCCC33CCCCCC33CCCC
      CC33CCCCCC33CCCCCC33ECECEC13FFFFFF000000000000000000000000000000
      0000E1E1E11ECECECE31CCCCCC33CCCCCC33CCCCCC33CECECE31E1E1E11E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003FA074C0008949FF008847FF008949FF3FA074C0000000000000
      000000000000000000000000000000000000C5B1997EB6803DFFB47D3AFFB47D
      39FFB47D39FFB47D39FFB47D39FFB47D39FFB47D39FFB47D39FFB47D39FFB47D
      39FFB47D3AFFB6803DFFC5B1997EFFFFFF000000000000000000F1F1F10ECCCC
      CC336F79C6AA303FBFF92B3BBEFF2B3ABEFF2B3BBEFF303FBFF96F79C6AACCCC
      CC33F1F1F10E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008949FF0FE9ACFF00E2A1FF0FE9ACFF008949FF000000000000
      000000000000000000000000000000000000B67F3DFFFFF8E2FFFFF3DAFFFFF2
      D9FFFFF2D9FFFFF2D8FFFFF1D8FFFFF1D8FFFFF1D8FFFFF1D8FFFFF1D8FFFFF1
      D8FFFFF2D9FFFFF8E2FFB67F3DFFFFFFFF0000000000F1F1F10EA0A5C96B2B3B
      BEFF4A5BE2FF6175FCFF697DFFFF697CFFFF697DFFFF6175FCFF4A5BE2FF2B3B
      BEFFA0A5C96BF1F1F10E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008747FF20E4AFFF00D99BFF20E4AFFF008747FF000000000000
      000000000000000000000000000000000000B47D39FFFFF5DFFFFFEDD0FFFFEF
      D4FFFFEFD4FFFFECCFFFFFE9CCFFFFE9CBFFFFE9CBFFFFE9CBFFFFE9CBFFFFE9
      CBFFFFEACCFFFFF5DEFFB47D39FFFFFFFF0000000000A0A5C96B2F3FC2FF596D
      F6FF6276FFFF6074FEFF5F73FEFF5F73FDFF5F73FEFF6074FEFF6276FFFF596D
      F6FF2F3FC2FFA0A5C96B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008746FF31E2B5FF00D49AFF31E2B5FF008746FF000000000000
      000000000000000000000000000000000000B47C39FFFFF7E4FFFFF0D6FFAD73
      2CFFAE742EFFFFF1D8FFFFEBCFFFFFE9CCFFFFE8CBFFFFE8CBFFFFE8CBFFFFE8
      CBFFFFE9CDFFFFF6E3FFB47C39FFFFFFFF00E1E1E11E2C3CBFFF5669F4FF5D71
      FCFF5B6FFAFF5A6EF9FF5A6EF9FF5A6EF9FF5A6EF9FF5A6EF9FF5B6FFAFF5D71
      FCFF5669F4FF2C3CBFFFE1E1E11E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCDCDC23CCCCCC33CCCCCC33CCCC
      CC33CCCCCC33008744FF44E4BCFF00D098FF44E4BCFF008744FFCCCCCC33CCCC
      CC33CCCCCC33CCCCCC33DCDCDC2300000000B47C38FFFFF9E8FFFFF1D8FFAE74
      2DFFBB8747FFE2BE92FFFFF2DAFFFFEDD2FFFFEACEFFFFE9CDFFFFE9CDFFFFE9
      CDFFFFEACEFFFFF8E7FFB47C38FFFFFFFF00717AC6A94256DEFF576DFBFF5369
      F8FF5268F7FF5267F7FF5267F7FF5267F7FF5267F7FF5267F7FF5268F7FF5369
      F8FF576DFBFF4256DEFF717AC6A9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003FA073C0008A48FF008947FF0089
      47FF008846FF008340FF58E3C3FF00CD98FF58E3C3FF008340FF008846FF0089
      47FF008947FF008A48FF3FA073C000000000B47C37FFFFFBECFFFFEED4FFFFF3
      DCFFE2BF94FFD3AA77FFAF7630FFFFF7E0FFFFEED5FFFFEBD0FFFFEACFFFFFEA
      CFFFFFEBD0FFFFFAECFFB47C37FFFFFFFF003141BFF94E64F4FF4C63F7FF425A
      F4FF3E56F4FF3D55F4FF3D55F4FF3D55F4FF3D55F4FF3D55F4FF3E56F4FF425A
      F4FF4C63F7FF4E64F4FF3141BFF9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008947FF69EBD2FF00D0A0FF00D0
      A1FF00D0A1FF00CE9EFF00CB9AFF00CA99FF00CB9AFF00CE9EFF00D0A1FF00D0
      A1FF00D0A0FF69EBD2FF008947FF00000000B47C37FFFFFDF2FFFFEDD3FFFFEE
      D5FFFFF4DEFFAF762FFFB47D39FFB27934FFFFF8E3FFFFF0D7FFFFECD2FFFFEB
      D1FFFFECD2FFFFFDF2FFB47C37FFFFFFFF002C3CBFFF5369F8FF3E56F3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF3E56F3FF5369F8FF2C3CBFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008844FF75E8D3FF00C699FF00C6
      99FF00C699FF00C699FF00C699FF00C699FF00C699FF00C699FF00C699FF00C6
      99FF00C699FF75E8D3FF008844FF00000000B47C37FFFFFFF6FFFFEDD4FFFFEC
      D3FFFFF0D8FFFFF9E4FFB27933FFB57E3BFFB27934FFFFF9E6FFFFF1D9FFFFED
      D4FFFFEDD4FFFFFFF6FFB47C37FFFFFFFF002B3BBFFF6378F7FF334DF0FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF334DF0FF6378F7FF2B3BBFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008946FF8AEEDEFF8AEADAFF8BEA
      D9FF8BEAD9FF8BE8D7FF52D8BEFF00C296FF52D8BEFF8BE8D7FF8BEAD9FF8BEA
      D9FF8AEADAFF8AEEDEFF008946FF00000000B47C36FFFFFFFBFFFFEED6FFFFED
      D5FFFFEED6FFFFF1DBFFFFFAE7FFB27933FFB57E3AFFB27934FFFFFAE8FFFFF2
      DBFFFFEFD7FFFFFFFBFFB47C36FFFFFFFF002A39BFFF8696F8FF2F4BEEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2F4BEEFF8696F8FF2A39BFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004FB083B0008946FF008743FF0087
      43FF008642FF00813AFF97E9DCFF00BE95FF97E9DCFF00813AFF008642FF0087
      43FF008743FF008946FF109457EF00000000B47B36FFFFFFFFFFFFEFD7FFFFEE
      D7FFFFEED7FFFFEFD8FFFFF2DDFFFFFBEAFFB27933FFB57E3AFFB27933FFFFFB
      E8FFFFF3DCFFFFFFFFFFB47B36FFFFFFFF002E3EC0F8A1ACF4FF3852EDFF2D48
      ECFF2B46EBFF2A46EBFF2A46EBFF2A46EBFF2A46EBFF2A46EBFF2B46EBFF2D48
      ECFF3852EDFFA1ACF4FF2E3EC0F8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008641FF99EADEFF00BB95FF99EADEFF008641FF000000000000
      000000000000000000000000000000000000B47B36FFFFFFFFFFFFF1D9FFFFF0
      D9FFFFF0D9FFFFF0D9FFFFF1DAFFFFF5DFFFFFFEECFFB27832FFB47C38FFAE73
      2BFFFFF8E3FFFFFFFFFFB47B36FFFFFFFF00838CDA956F7CDDFF8494F5FF2E4A
      E9FF334DE9FF354FEAFF3650EAFF3650EAFF3650EAFF354FEAFF334DE9FF2E4A
      E9FF8494F5FF6F7CDDFF838CDA95000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008742FF98E9DEFF00B794FF98E9DEFF008742FF000000000000
      000000000000000000000000000000000000B47B35FFFFFFFFFFFFF2DBFFFFF1
      DAFFFFF1DBFFFFF1DBFFFFF1DBFFFFF2DCFFFFF6E1FFFFFEEDFFAE732BFFD0A6
      72FFFFF8E3FFFFFFFFFFB47B35FFFFFFFF00000000002737BFFF9AA7F0FF7F90
      F3FF324CE9FF2D49E7FF304CE8FF314CE8FF304CE8FF2D49E7FF324CE9FF7F90
      F3FF9AA7F0FF2737BFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008843FF97E7E0FF00B395FF97E7E0FF008843FF000000000000
      000000000000000000000000000000000000B47B36FFFFFFFFFFFFF4DDFFFFF3
      DDFFFFF3DDFFFFF3DDFFFFF3DDFFFFF3DDFFFFF4DEFFFFF7E2FFFFFAE6FFFFF9
      E5FFFFF6E1FFFFFFFFFFB47B36FFFFFFFF0000000000C5C9EE462F3FC3FF97A3
      EFFF9EACF7FF6075EDFF3E57E9FF2441E5FF3E57E9FF6075EDFF9EACF7FF97A3
      EFFF2F3FC3FFC5C9EE4600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008946FF9AE9E6FF96E6E1FF9AE9E6FF008946FF000000000000
      000000000000000000000000000000000000B67E39FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB67E39FFFFFFFF000000000000000000C5C9EE462737
      BFFF6A77DCFF9EA9F2FFAFBAF8FFAFBBF8FFAFBAF8FF9EA9F2FF6A77DCFF2737
      BFFFC5C9EE460000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004FB082B0008946FF008843FF008946FF109456EF000000000000
      000000000000000000000000000000000000E5D1B95EB67E39FFB47B35FFB47A
      34FFB47A34FFB47A34FFB47A34FFB47A34FFB47A34FFB47A34FFB47A34FFB47A
      34FFB47B35FFB67E39FFE5D1B95EFFFFFF000000000000000000000000000000
      0000828CDA952E3EC1F72737BFFF2737BFFF2737BFFF2E3EC1F7828CDA950000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F83F0000F01F0000F83F0000C0070000
      F83F000080030000F83F000080030000F83F0000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000F83F000000010000F83F000080030000F83F000080030000
      F83F0000C0070000F83F0000F01F000000000000000000000000000000000000
      000000000000}
  end
  object DataSource1: TDataSource
    Left = 504
    Top = 280
  end
end

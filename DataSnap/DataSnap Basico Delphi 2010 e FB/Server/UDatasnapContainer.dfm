object DatasnapContainer: TDatasnapContainer
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 340
  Width = 570
  object DatasapServer: TDSServer
    AutoStart = False
    HideDSAdmin = False
    Left = 56
    Top = 27
  end
  object DSTCPServerTransport1: TDSTCPServerTransport
    Port = 213
    PoolSize = 0
    Server = DatasapServer
    BufferKBSize = 32
    Filters = <>
    Left = 56
    Top = 81
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DatasapServer
    LifeCycle = 'Session'
    Left = 184
    Top = 27
  end
  object DSServerClassCadastro: TDSServerClass
    OnGetClass = DSServerClassCadastroGetClass
    Server = DatasapServer
    LifeCycle = 'Session'
    Left = 184
    Top = 88
  end
  object DSServerClassMovimento: TDSServerClass
    OnGetClass = DSServerClassMovimentoGetClass
    Server = DatasapServer
    LifeCycle = 'Session'
    Left = 184
    Top = 152
  end
  object DSServerClassRelatorio: TDSServerClass
    OnGetClass = DSServerClassRelatorioGetClass
    Server = DatasapServer
    LifeCycle = 'Session'
    Left = 184
    Top = 208
  end
end

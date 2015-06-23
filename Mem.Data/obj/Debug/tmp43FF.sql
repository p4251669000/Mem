CREATE TABLE [dbo].[__MigrationHistory2] (
    [MigrationId] [nvarchar](150) NOT NULL,
    [ContextKey] [nvarchar](300) NOT NULL,
    [Model] [varbinary](max) NOT NULL,
    [ProductVersion] [nvarchar](32) NOT NULL,
    CONSTRAINT [PK_dbo.__MigrationHistory2] PRIMARY KEY ([MigrationId], [ContextKey])
)
INSERT INTO [dbo].[__MigrationHistory2]
SELECT LEFT([MigrationId], 150), 'Mem.Data.DataContext', [Model], LEFT([ProductVersion], 32) FROM [dbo].[__MigrationHistory]
DROP TABLE [dbo].[__MigrationHistory]
EXECUTE sp_rename @objname = N'dbo.__MigrationHistory2', @newname = N'__MigrationHistory', @objtype = N'OBJECT'
ALTER TABLE [dbo].[Category] ADD [ThreeName] [nvarchar](max)
INSERT [dbo].[__MigrationHistory]([MigrationId], [ContextKey], [Model], [ProductVersion])
VALUES (N'201401061152155_MemoryHappy', N'Mem.Data.DataContext',  0x1F8B0800000000000400CD57DB6ED340107D47E21FAC7D8207B2BD08A9540EA8A42DAA206D5517DE37F62459B117B3BB2EC9B7F1C027F10BCCC6D7D8B9B6807889ECF1CC99CBCE99D9FCFAF1337C379322780063B9567D72D83B2001A858275C4DFA2473E35727E4DDDBE7CFC28B44CE822FA5DEB1D7434B65FB64EA5C7A4AA98DA72099ED491E1B6DF5D8F5622D294B343D3A3878430F0F29200441AC2008EF32E5B884C50BBE0EB48A21751913439D80B0851CBF440BD4E09A49B0298BA14F86207BE7CC31129C09CED07F04624C02A69476CC6174A79F2D44CE683589521430713F4F01F5C64C5828A23EADD5774DE0E0C827406BC347158054A9617217580437F7E12D12EC93017330D166DED442BD8F305F12A0E8D6E8148C9BDFC1B8B0BD4A484097ED68DBB0326BD878F7F8A4DCF11109AE3321D8484055AD465923A70D7C000506A34C6E99736094C780451A1DEF2D5FFEB7F486C783FD4582219B7D023571D33E798D0D75C9679094822280CF8A6337A28D3319AC0870B3D3FBEF7A8B5F7CDCC9F1163F60DDBF713435007FC15348EB66ECB628F2D3318E275F44E1F9E7653073AD56CDF52370CB1DCDC192A0F69093B657B5FBCA502AA7F534A0F93828C7065D3337C2214B53AC4A638E149220CA87C8E055B43F7D658E4163BB82C555B49527A40B9B40EB2BBAC6482FB9B1CE1771C4FCB90C12D951DBA1C4A5A74EA5DBC3A22E7C69E29F73B3729CF656CF9E66F12E311F89645FA4065518EBC656611CC54C30B362F00CB4C8A45A37BC3659E7FDDFB4CF25BB235473A1095209F7C0A978BF045449F740AA89BD04558BBB58216D9D4CFBE069E7E45B0BA2DD4B9B68D856A9BC57746CD12E2C28B07DA7773891AB90008BF4C013CF87686E5DD9AAD13731101CF3AD15864CF13196FD5E7F055C4A48D993D605E111CB9A5A9B88FF7563739FFED69DBCE7BE6C6E16F5C04C3C65A6B3A69FB6834BD81792CD5E36C11EB3679F06D6DEA57BA0EDB72FBB337FA7AD39DFB833738EF44932D298401EE893376A97B2216D5ED6C373B07C5243F8ABBB82D85F106BD052E74A8D7559734CAE1951A9D23A92213896608DCE8CE363163BFC1C83B58B1BCE17263254B9902348AED44DE6D2CC9D590B722496F20DE966FF8B6BC372CCE14DEADFEC9F4801C3E49802DCA8F719174915F765972BEB207CBB14A4C6A8F086E74F755E215D6BB5235051BE734841F991700F321508666F54C41E607D6CDB6BB85CB1F09CB38961D21618B5BDFFEF48FD9FC7B7BF01BD1D17E96E0E0000 , N'6.0.2-21211')


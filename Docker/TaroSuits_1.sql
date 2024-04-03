create table TaroSuits
(
    Id      int identity
        constraint TaroSuits_pk
            primary key,
    Title   nvarchar(50) not null,
    Postfix nvarchar(10)
)
go

INSERT INTO master.dbo.TaroSuits (Title, Postfix) VALUES (N'Старшие Арканы', null);
INSERT INTO master.dbo.TaroSuits (Title, Postfix) VALUES (N'Жезлы', N'Жезлов');
INSERT INTO master.dbo.TaroSuits (Title, Postfix) VALUES (N'Мечи', N'Мечей');
INSERT INTO master.dbo.TaroSuits (Title, Postfix) VALUES (N'Чаши', N'Чаш');
INSERT INTO master.dbo.TaroSuits (Title, Postfix) VALUES (N'Пентакли', N'Пентаклей');

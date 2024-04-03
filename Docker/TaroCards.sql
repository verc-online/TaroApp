create table TaroCards
(
    Id           int identity
        constraint TaroCards_pk
            primary key,
    Title        nvarchar(50) not null,
    ImageDesc    varchar(max),
    StraightDesc varchar(max),
    ReverseDesc  varchar(max),
    CardImage    varbinary(max),
    SuitId       int          not null
        constraint TaroCards___TaroSuits
            references TaroSuits
)
go

INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Шут', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Маг', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Верховная Жрица', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Император', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Императрица', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Иерофант', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Влюбленные', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Колесница', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Сила', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Отшельник', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Колесо Фортуны', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Правосудие', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Повешенный', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Смерть', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Умеренность', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Дьявол', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Башня', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Звезда', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Луна', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Солнце', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Суд', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Мир', null, null, null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Туз', null, null, null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Двойка', null, null, null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Тройка', null, null, null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Четверка', null, null, null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Пятерка', null, null, null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Шестерка', null, null, null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Семерка', null, null, null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Восьмерка', null, null, null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Девятка', null, null, null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Десятка', null, null, null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Паж', null, null, null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Рыцарь', null, null, null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Королева', null, null, null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Король', null, null, null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Туз', null, null, null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Двойка', null, null, null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Тройка', null, null, null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Четверка', null, null, null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Пятерка', null, null, null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Шестерка', null, null, null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Семерка', null, null, null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Восьмерка', null, null, null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Девятка', null, null, null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Десятка', null, null, null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Паж', null, null, null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Рыцарь', null, null, null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Королева', null, null, null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Король', null, null, null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Туз', null, null, null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Двойка', null, null, null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Тройка', null, null, null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Четверка', null, null, null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Пятерка', null, null, null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Шестерка', null, null, null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Семерка', null, null, null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Восьмерка', null, null, null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Девятка', null, null, null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Десятка', null, null, null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Паж', null, null, null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Рыцарь', null, null, null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Королева', null, null, null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Король', null, null, null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Туз', null, null, null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Двойка', null, null, null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Тройка', null, null, null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Четверка', null, null, null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Пятерка', null, null, null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Шестерка', null, null, null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Семерка', null, null, null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Восьмерка', null, null, null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Девятка', null, null, null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Десятка', null, null, null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Паж', null, null, null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Рыцарь', null, null, null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Королева', null, null, null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, StraightDesc, ReverseDesc, CardImage, SuitId) VALUES (N'Король', null, null, null, null, 5);

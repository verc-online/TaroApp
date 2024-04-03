create table TaroCards
(
    Id        int identity
        constraint TaroCards_pk
            primary key,
    Title     nvarchar(50) not null,
    ImageDesc varchar(max),
    CardImage varbinary(max),
    SuitId    int          not null
        constraint TaroCards___TaroSuits
            references TaroSuits
)
go

INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Шут', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Маг', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Верховная Жрица', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Император', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Императрица', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Иерофант', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Влюбленные', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Колесница', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Сила', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Отшельник', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Колесо Фортуны', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Правосудие', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Повешенный', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Смерть', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Умеренность', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Дьявол', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Башня', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Звезда', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Луна', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Солнце', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Суд', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Мир', null, null, 1);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Туз', null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Двойка', null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Тройка', null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Четверка', null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Пятерка', null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Шестерка', null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Семерка', null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Восьмерка', null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Девятка', null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Десятка', null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Паж', null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Рыцарь', null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Королева', null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Король', null, null, 2);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Туз', null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Двойка', null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Тройка', null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Четверка', null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Пятерка', null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Шестерка', null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Семерка', null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Восьмерка', null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Девятка', null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Десятка', null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Паж', null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Рыцарь', null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Королева', null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Король', null, null, 3);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Туз', null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Двойка', null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Тройка', null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Четверка', null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Пятерка', null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Шестерка', null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Семерка', null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Восьмерка', null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Девятка', null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Десятка', null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Паж', null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Рыцарь', null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Королева', null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Король', null, null, 4);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Туз', null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Двойка', null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Тройка', null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Четверка', null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Пятерка', null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Шестерка', null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Семерка', null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Восьмерка', null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Девятка', null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Десятка', null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Паж', null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Рыцарь', null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Королева', null, null, 5);
INSERT INTO master.dbo.TaroCards (Title, ImageDesc, CardImage, SuitId) VALUES (N'Король', null, null, 5);

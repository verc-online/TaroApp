create table CardMeanings
(
    Id       int identity
        constraint CardMeanings_pk
            primary key,
    CardId   int           not null
        constraint CardMeanings___TaroCards
            references TaroCards,
    Subject  nvarchar(50)  not null,
    Straight nvarchar(max) not null,
    Reverse  nvarchar(max) not null
)
go


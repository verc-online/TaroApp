create table CardMeanings
(
    Id       int identity
        constraint CardMeanings_pk
            primary key,
    CardId   int           not null
        constraint CardMeanings___TaroCards
            references TaroCards,
    Subject  nvarchar(50)  not null collate Latin1_General_100_CI_AS_SC_UTF8
        constraint CardMeanings_pk_2
            unique,
    Straight nvarchar(max) not null collate Latin1_General_100_CI_AS_SC_UTF8,
    Reverse  nvarchar(max) not null collate Latin1_General_100_CI_AS_SC_UTF8
)
go


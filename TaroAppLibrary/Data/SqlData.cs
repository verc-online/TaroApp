using TaroAppLibrary.Database;
using TaroAppLibrary.Models;

namespace TaroAppLibrary.Data;

public class SqlData : IDatabaseData
{
    private readonly ISqlDataAccess _db;
    private const string connectionStringName = "SqlDb";

    public SqlData(ISqlDataAccess db)
    {
        _db = db;
    }

    #region SuitsAndTaroCards

    public List<SuitModel> ReadAllSuitsWithCards()
    {
        string sqlStatement = "select Id, Title, ImageDesc, CardImage, SuitId from dbo.TaroCards;";
        List<TaroCardModelBase> cards =
            _db.LoadData<TaroCardModelBase, dynamic>(sqlStatement, new { }, connectionStringName);

        sqlStatement = "select Id, Title, Postfix from dbo.TaroSuits;";
        List<SuitModel> output = _db.LoadData<SuitModel, dynamic>(sqlStatement, new { }, connectionStringName);

        output.ForEach(s => s.Cards = cards.Where(c => c.SuitId == s.Id).ToList());

        return output;
    }

    public FullCardModel ReadCardDetails(int id)
    {
        string sql = @"SELECT Id, CardId, Subject, Straight, Reverse
                        FROM dbo.CardMeanings
                        WHERE CardId = @Id
                        ORDER BY Subject;";

        List<CardMeaningModel> meanings =
            _db.LoadData<CardMeaningModel, dynamic>(sql, new { Id = id }, connectionStringName);

        sql = @"SELECT T.Id, T.Title, T.ImageDesc, T.CardImage, T.SuitId, TS.Title as SuitTitle
                FROM dbo.TaroCards T 
                INNER JOIN dbo.TaroSuits TS on TS.Id = T.SuitId";
        FullCardModel output = _db.LoadData<FullCardModel, dynamic>(sql, new { Id = id }, connectionStringName)
            .First();

        output.Meanings = meanings;

        return output;
    }

    public void UpdateCardDetails(int cardId, string imageDesc, byte[] cardImage)
    {
        string sql = @"UPDATE TaroCards
                        SET ImageDesc = @ImageDesc,
                            CardImage = @CardImage
                        WHERE Id = @Id;";

        _db.SaveData(sql, new { id = cardId, imageDesc, cardImage }, connectionStringName);
    }

    #endregion

    #region CardMeanings

    public void CreateCardMeaning(int cardId, string subject, string straight, string reverse)
    {
        string sql = @"INSERT INTO CardMeanings (CardId, Subject, Straight, Reverse) 
                                    VALUES (@CardId, @Subject, @Straight, @Reverse);";
        try
        {
            _db.SaveData(sql, new { cardId, subject, straight, reverse }, connectionStringName);
        }
        catch (Microsoft.Data.SqlClient.SqlException e)
        {
            Console.WriteLine("Constraint error");
            // throw;
        }
    }

    public CardMeaningModel ReadCardMeaning(int id)
    {
        CardMeaningModel output;
        string sql = @"SELECT Id, CardId, Subject, Straight, Reverse
                        FROM CardMeanings
                        WHERE Id = @Id;";
        output = _db.LoadData<CardMeaningModel, dynamic>(sql, new { id }, connectionStringName).FirstOrDefault();
        return output;
    }

    public void UpdateCardMeaning(int id, string subject, string straight, string reverse)
    {
        string sql = @"UPDATE CardMeanings
                        SET Subject = @Subject, 
                            Straight = @Straight, 
                            Reverse = @Reverse 
                        WHERE Id = @Id;";
        _db.SaveData(sql, new { id, subject, straight, reverse }, connectionStringName);
    }

    public void DeleteCardMeaning(int id)
    {
        string sql = @"DELETE FROM CardMeanings
                        WHERE Id = @Id;";
        _db.SaveData(sql, new { id }, connectionStringName);
    }

    #endregion
}
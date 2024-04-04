using System.Net.Mime;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using TaroAppLibrary;
using TaroAppLibrary.Data;
using TaroAppLibrary.Database;
using TaroAppLibrary.Models;

namespace ConsoleTaroApp;

class Program
{
    static void Main(string[] args)
    {
        SqlData db = GetDb();
        string imagePath = Path.Combine(Environment.CurrentDirectory, "test.jpeg");
        
        // DropCardMeaning(db, 2);
        // CreateCardMeaning(db, 1, "Любовь", "Очень любит Полечку", "Не может не любить Полечку");
        // GetCardMeaningDetail(db, 3);
        // EditCardMeaning(db, 1, "Супер любовь", "Очень любит Полечку", "Очень любит всех!");

        UpdateCardDetails(db, 1, "Любит Полечку", imagePath);
        FullCardModel shut = ReadCardDetails(db, 1);
        // List<SuitModel> suitsWithCards = GetAllSuitsWithCards(db);
    }

    private static void DropCardMeaning(SqlData db, int id)
    {
        db.DeleteCardMeaning(id);
    }

    private static CardMeaningModel GetCardMeaningDetail(SqlData db, int id)
    {
        return db.ReadCardMeaning(id);
    }

    private static void EditCardMeaning(SqlData db, int id, string subject, string straight, string reverse)
    {
        db.UpdateCardMeaning(id, subject, straight, reverse);
    }

    private static void CreateCardMeaning(SqlData db, int cardId, string subject, string straight, string reverse)
    {
        db.CreateCardMeaning(cardId, subject, straight, reverse);
    }

    private static List<SuitModel> GetAllSuitsWithCards(SqlData db)
    {
        return db.ReadAllSuitsWithCards();
    }

    private static FullCardModel ReadCardDetails(SqlData db, int id)
    {
        return db.ReadCardDetails(id);
    }

    private static void UpdateCardDetails(SqlData db, int id, string imageDesc, string imagePath)
    {
        byte[] image = Helpers.ConvertFilePathToVarbinary(imagePath);
        db.UpdateCardDetails(id, imageDesc, image);
    }

    private static SqlData GetDb()
    {
        var builder = new ConfigurationBuilder()
            .SetBasePath(Directory.GetCurrentDirectory())
            .AddJsonFile("appsettings.json");

        IConfiguration configuration = builder.Build();
        SqlDataAccess sql = new SqlDataAccess(configuration);
        return new SqlData(sql);
    }
}
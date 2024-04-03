using TaroAppLibrary.Models;

namespace TaroAppLibrary.Data
{
    public interface IDatabaseData
    {
        void CreateCardMeaning(int cardId, string subject, string straight, string reverse);
        void DeleteCardMeaning(int id);
        List<SuitModel> ReadAllSuitsWithCards();
        FullCardModel ReadCardDetails(int id);
        CardMeaningModel ReadCardMeaning(int id);
        void UpdateCardDetails(int cardId, string imageDesc, byte[] cardImage);
        void UpdateCardMeaning(int id, string subject, string straight, string reverse);
    }
}
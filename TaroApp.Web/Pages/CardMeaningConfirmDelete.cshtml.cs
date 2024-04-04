using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using TaroAppLibrary.Data;
using TaroAppLibrary.Models;

namespace TaroApp.Web.Pages
{
    public class CardMeaningConfirmDeleteModel : PageModel
    {
        private readonly IDatabaseData _db;
        public CardMeaningModel Meaning { get; set; }

        public CardMeaningConfirmDeleteModel(IDatabaseData db)
        {
            _db = db;
        }

        public void OnGet(int meaningId)
        {
            Meaning = _db.ReadCardMeaning(meaningId);
        }

        public IActionResult OnPost(int meaningId, int cardId)
        {
            _db.DeleteCardMeaning(meaningId);
            return RedirectToPage("/TaroCard", new { cardId });
        }
    }
}
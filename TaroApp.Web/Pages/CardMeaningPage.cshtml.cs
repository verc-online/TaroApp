using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using TaroAppLibrary.Data;
using TaroAppLibrary.Models;

namespace TaroApp.Web.Pages
{
    public class CardMeaningPageModel : PageModel
    {
        private readonly IDatabaseData _db;
        public int CardId { get; set; }

        [Required] [BindProperty] public string Subject { get; set; }

        [Required] [BindProperty] public string Straight { get; set; }

        [Required] [BindProperty] public string Reverse { get; set; }

        public CardMeaningPageModel(IDatabaseData db)
        {
            _db = db;
        }


        public IActionResult OnPost(int cardId, int meaningId)
        {
            if (meaningId > 0)
            {
                _db.UpdateCardMeaning(meaningId, Subject, Straight, Reverse);
            }
            else
            {
                _db.CreateCardMeaning(cardId, Subject, Straight, Reverse);
            }

            return RedirectToPage("/TaroCard", new { cardId });

        }

        public void OnGet(int cardId, int meaningId)
        {
            if (meaningId > 0)
            {
                CardMeaningModel model = _db.ReadCardMeaning(meaningId);

                Subject = model.Subject;
                Straight = model.Straight;
                Reverse = model.Reverse;
            }

            CardId = cardId;
        }
    }
}
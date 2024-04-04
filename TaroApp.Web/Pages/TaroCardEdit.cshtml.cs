using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using TaroAppLibrary.Data;
using TaroAppLibrary.Models;
using IHostingEnvironment = Microsoft.AspNetCore.Hosting.IHostingEnvironment;

namespace TaroApp.Web.Pages
{
    public class TaroCardEditModel : PageModel
    {
        private readonly IDatabaseData _db;
        public FullCardModel Card { get; set; }
        [BindProperty] public string ImageDesc { get; set; }
        public byte[] CardImage { get; set; }

        [BindProperty] public IFormFile Upload { get; set; }

        public TaroCardEditModel(IDatabaseData db, IHostingEnvironment environment)
        {
            _db = db;
        }


        public void OnGet(int cardId)
        {
            Card = _db.ReadCardDetails(cardId);
            ImageDesc = Card.ImageDesc;
            CardImage = Card.CardImage;
        }

        public IActionResult OnPost(int cardId)
        {
            if (Upload is null)
            {
                Card = _db.ReadCardDetails(cardId);
                _db.UpdateCardDetails(cardId, ImageDesc, Card.CardImage);
                return RedirectToPage("/TaroCard", new { cardId });
            }

            long length = Upload.Length;
            if (length < 0)
            {
            }
            else
            {
                using var fileStream = Upload.OpenReadStream();
                byte[] bytes = new byte[length];
                fileStream.Read(bytes, 0, (int)Upload.Length);

                _db.UpdateCardDetails(cardId, ImageDesc, bytes);
            }

            return RedirectToPage("/TaroCard", new { cardId });
        }
    }
}
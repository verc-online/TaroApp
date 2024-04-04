using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using TaroAppLibrary.Data;
using TaroAppLibrary.Models;

namespace TaroApp.Web.Pages
{
    public class TaroCardModel : PageModel
    {
        private readonly IDatabaseData _db;
        public FullCardModel Card { get; set; }

        public TaroCardModel(IDatabaseData db)
        {
            _db = db;
        }
        public void OnGet(int cardId)
        {
            Card = _db.ReadCardDetails(cardId);
        }
        

    }
}

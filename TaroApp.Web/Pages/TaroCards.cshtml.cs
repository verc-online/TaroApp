using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using TaroAppLibrary.Data;
using TaroAppLibrary.Models;

namespace TaroApp.Web.Pages
{
    public class TaroCardsModel : PageModel
    {
        private readonly IDatabaseData _db;
        public List<SuitModel> SuitsWithCards { get; set; } = new();
        public TaroCardsModel(IDatabaseData db)
        {
            _db = db;
        }
        public void OnGet()
        {
            SuitsWithCards = _db.ReadAllSuitsWithCards();
        }
    }
}

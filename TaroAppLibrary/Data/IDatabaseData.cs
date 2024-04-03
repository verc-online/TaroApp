using TaroAppLibrary.Models;

namespace TaroAppLibrary.Data;

public interface IDatabaseData
{
    List<SuitModel> ReadAllSuitsWithCards();
}
namespace TaroAppLibrary.Models;

public class CardMeaningModel
{
    public int Id { get; set; }
    public int CardId { get; set; }
    public string Subject { get; set; }
    public string Straight { get; set; }
    public string Reverse { get; set; }
}
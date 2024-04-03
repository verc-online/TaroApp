namespace TaroAppLibrary.Models;

public class FullCardModel : TaroCardModelBase
{
    public string SuitTitle { get; set; }
    public List<CardMeaningModel> Meanings = new();
}
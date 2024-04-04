namespace TaroAppLibrary.Models;

public class FullCardModel : TaroCardModelBase
{
    public string SuitTitle { get; set; }
    public string Postfix { get; set; }
    public List<CardMeaningModel> Meanings = new();
}
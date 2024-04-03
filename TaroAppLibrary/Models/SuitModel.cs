namespace TaroAppLibrary.Models;

public class SuitModel
{
    public int Id { get; set; }
    public string Title { get; set; }
    public string Postfix { get; set; }
    public List<TaroCardModelBase> Cards { get; set; } = new();
}
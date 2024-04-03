namespace TaroAppLibrary.Models;

public class TaroCardModelBase
{
    public int Id { get; set; }
    public string Title { get; set; }
    public string ImageDesc { get; set; }
    public byte[] CardImage { get; set; }
    public int SuitId { get; set; }
}

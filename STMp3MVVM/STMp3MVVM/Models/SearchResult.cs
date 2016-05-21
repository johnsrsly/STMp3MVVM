using System;

namespace STMp3MVVM.Models
{
    public class SearchResult
    {
        public string Title { get; set; }
        public string VideoId { get; set; }
        public TimeSpan Duration { get; set; }

        public override string ToString()
        {
            return Title + Environment.NewLine + Duration.ToString("mm\\:ss");
        }
    }
}

using System;

namespace STMp3MVVM.Models
{
    public class Track
    {
        public string SongAndArtists
        { get
            {
                if (string.IsNullOrEmpty(Artists))
                    return "Dra en låt hit.";
                return Artists + " - " + Name;
            }
        }
        public string Name { get; set; }
        public string Artists { get; set; }
        public string Album { get; set; }
        public string ImageUrl { get; set; }
        public TimeSpan Duration { get; set; }
    }
}

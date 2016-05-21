using Newtonsoft.Json;
using BLL.Models;
using System;
using System.Configuration;
using System.IO;
using System.Net;
using System.Text;

namespace BLL.Helpers
{
    public class TrackFinder
    {
        public Track GetTrackInfo(string uri)
        {
            try
            {
                var spotifyUrl = ConfigurationManager.AppSettings["SpotifyTrackURL"];
                var spotifyApiUrl = ConfigurationManager.AppSettings["SpotifyApiTrackURL"];
                var apiUri = uri.Replace(spotifyUrl, spotifyApiUrl);

                using (var client = new WebClient())
                {
                    client.Encoding = Encoding.UTF8;
                    var jsonString = client.DownloadString(apiUri);
                    dynamic json = JsonConvert.DeserializeObject(jsonString);

                    var trackInfo = new Track
                    {
                        Name = json.name,
                        ImageUrl = json.album.images[1].url,
                        Duration = TimeSpan.FromMilliseconds(Double.Parse(json.duration_ms.ToString()))
                    };

                    foreach (var artist in json.artists)
                    {
                        if (artist != json.artists[json.artists.Count - 1])
                            trackInfo.Artists += artist.name + ", ";
                        else
                            trackInfo.Artists += artist.name;
                    }
                    return trackInfo;
                }
            }
            catch (Exception e)
            {
                using (var sw = new StreamWriter("ExceptionLog.txt", true))
                {
                    sw.WriteLine(DateTime.Now);
                    sw.WriteLine(e.ToString());
                    sw.WriteLine();
                    sw.Flush();
                    sw.Close();
                }
                return null;
            }
        }
    }
}

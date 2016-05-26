using System;
using System.Configuration;
using System.IO;
using System.Net;
using System.Text;
using log4net;
using Newtonsoft.Json;
using STMp3MVVM.Models;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace STMp3MVVM.Helpers
{
    public class TrackFinder
    {
        private static readonly ILog Log = LogHelper.GetLogger();

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
                Log.Error("Fel när information om låten skulle hämtas.", e);
                return null;
            }
        }

        public ObservableCollection<Track> GetTracksFromSearch(string searchStr)
        {
            using (var client = new WebClient { Encoding = Encoding.UTF8 })
            {
                var jsonString = client.DownloadString("https://api.spotify.com/v1/search?q=" + searchStr + "&type=track");
                dynamic json = JsonConvert.DeserializeObject(jsonString);
                var ret = new ObservableCollection<Track>();

                foreach (var track in json.tracks.items)
                {
                    var trackInfo = new Track
                    {
                        Name = track.name,
                        ImageUrl = track.album.images[1].url,
                        Album = track.album.name,
                        Duration = TimeSpan.FromMilliseconds(Double.Parse(track.duration_ms.ToString()))
                    };

                    foreach (var artist in track.artists)
                    {
                        if (artist != track.artists[track.artists.Count - 1])
                            trackInfo.Artists += artist.name + ", ";
                        else
                            trackInfo.Artists += artist.name;
                    }
                    ret.Add(trackInfo);
                }
                return ret;
            }
        }
    }
}

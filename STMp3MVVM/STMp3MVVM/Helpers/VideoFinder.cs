using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Threading.Tasks;
using System.Xml;
using Google.Apis.Services;
using Google.Apis.YouTube.v3;
using log4net;
using STMp3MVVM.Extensions;
using STMp3MVVM.Models;

namespace STMp3MVVM.Helpers
{
    public class VideoFinder
    {
        public List<SearchResult> SearchResultList;
        private static readonly ILog Log = LogHelper.GetLogger();

        public VideoFinder()
        {
            SearchResultList = new List<SearchResult>();
        }

        public async Task<string> GetMatchingVideoId(Track track)
        {
            try
            {
                var searchString = (track.Artists + " " + track.Name.TrimTrackName()).Replace(',', ' ');

                var youtubeService = new YouTubeService(new BaseClientService.Initializer()
                {
                    ApiKey = ConfigurationManager.AppSettings["ApiKey"]
                });

                var searchListRequest = youtubeService.Search.List("snippet");
                searchListRequest.Q = searchString;
                searchListRequest.MaxResults = 6;
                searchListRequest.Type = "video";
                var searchListResponse = await searchListRequest.ExecuteAsync();

                if (SearchResultList != null)
                    SearchResultList.Clear();

                foreach (var item in searchListResponse.Items)
                {
                    var videoListRequest = youtubeService.Videos.List("contentDetails");
                    videoListRequest.Id = item.Id.VideoId;
                    var videoListResponse = await videoListRequest.ExecuteAsync();
                    var duration = XmlConvert.ToTimeSpan(videoListResponse.Items[0].ContentDetails.Duration);

                    SearchResultList.Add(new SearchResult
                    {
                        Title = item.Snippet.Title,
                        VideoId = item.Id.VideoId,
                        Duration = duration
                    });
                }

                foreach (var item in SearchResultList)
                {
                    if (DoesSearchMatch(track, item.Title, item.Duration))
                        return item.VideoId;
                }

                return null;
            }
            catch (Exception e)
            {
                Log.Error("", e);
                SearchResultList.Clear();
                return null;
            }
        }

        public bool DoesSearchMatch(Track track, string resultStr, TimeSpan resultDuration)
        {
            var song = track.Name.ToLower().TrimTrackName().RemoveAmpersand();
            var artist = track.Artists.ToLower().Replace(',', ' ');
            var result = resultStr.ToLower().RemoveAmpersand();
            var trackSeconds = track.Duration.TotalSeconds;
            var resultSeconds = resultDuration.TotalSeconds;

            return (!(result.Contains("live")) 
                        && result.Contains(artist) 
                        && result.Contains(song) 
                        && resultSeconds >= trackSeconds - 30 
                        && resultSeconds <= trackSeconds + 30);
        }
    }
}

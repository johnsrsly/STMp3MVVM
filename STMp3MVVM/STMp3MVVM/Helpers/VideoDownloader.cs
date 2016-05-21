using System;
using System.Configuration;
using System.IO;
using System.Threading.Tasks;
using log4net;
using VideoLibrary;

namespace STMp3MVVM.Helpers
{
    public class VideoDownloader
    {
        private static readonly ILog Log = LogHelper.GetLogger();

        public async Task<string> GetVideo(string videoId, string savePath)
        {
            try
            {
                var youTube = new YouTube();
                var youtubeUrl = ConfigurationManager.AppSettings["MainYoutubeURL"];
                var url = youtubeUrl + videoId;
                var video = await youTube.GetVideoAsync(url);
                var bytes = await video.GetBytesAsync();
                Directory.CreateDirectory(Path.Combine(savePath, "SpotifyToMp3"));
                var fullPath = Path.Combine(savePath, "SpotifyToMp3", video.FullName);
                File.WriteAllBytes(fullPath, bytes);
                return fullPath;
            }
            catch (Exception e)
            {
                Log.Error("Fel när en video skulle laddas ner.", e);
                return null;
            }
        }
    }
}

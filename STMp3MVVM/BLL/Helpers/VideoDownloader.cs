using System;
using System.Configuration;
using System.IO;
using System.Threading.Tasks;
using VideoLibrary;

namespace BLL.Helpers
{
    public class VideoDownloader
    {
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

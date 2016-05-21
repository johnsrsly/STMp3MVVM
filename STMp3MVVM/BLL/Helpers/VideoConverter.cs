using System;
using NReco.VideoConverter;
using System.IO;

namespace BLL.Helpers
{
    public class VideoConverter
    {
        private readonly FFMpegConverter _converter;
        public delegate void VideoEventHandler(object sender, VideoEventArgs args);
        public event VideoEventHandler VideoConvertEvent;

        public VideoConverter()
        {
            _converter = new FFMpegConverter();
        }

        public string ConvertVideoToMp3(string path)
        {
            try
            {
                var newFile = Path.ChangeExtension(path, "mp3");
                _converter.ConvertProgress += (s, e) =>
                {
                    var progress = e.Processed.Ticks / (double)e.TotalDuration.Ticks * 100;
                    VideoConvertEvent(s, new VideoEventArgs { ConvertProgress = progress });
                };
                _converter.ConvertMedia(path, newFile, "mp3");
                File.Delete(path);
                return path;
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

using System;
using System.IO;
using log4net;
using NReco.VideoConverter;


namespace STMp3MVVM.Helpers
{
    public class VideoConverter
    {
        private static readonly ILog Log = LogHelper.GetLogger();
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
                Log.Error("Fel när en video skulle göras om till mp3.", e);
                return null;
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using STMp3MVVM.Commands;
using STMp3MVVM.Helpers;
using STMp3MVVM.Models;
using STMp3MVVM.Properties;

namespace STMp3MVVM.ViewModels
{
    public class MainViewModel : ViewModelBase
    {
        private readonly TrackFinder _trackFinder = new TrackFinder();
        public List<SearchResult> YoutubeSearchResults { get; set; }
        private ObservableCollection<Track> _spotifySearchResults;

        public ICommand SetTrackCommand { get; private set; }
        public ICommand SearchCommand { get; private set; }
        public ICommand ChangeSavePathCommand { get; private set; }
        public ICommand SettingsCommand { get; private set; }
        public ICommand OpenFolderCommand { get; private set; }
        public ICommand DownloadCommand { get; private set; }
        public bool CanDownload => !string.IsNullOrEmpty(Track.Artists);
        public bool CanSearch => !string.IsNullOrEmpty(SearchStr);

        public event EventHandler NoMatchEvent;
        public event EventHandler OpenSettingsEvent;

        private readonly StringBuilder _downloadStatus = new StringBuilder();
        private Track _track = new Track();
        private double _progressbarValue;
        private string _searchStr= "Sök efter en låt här!";

        public MainViewModel()
        {
            DownloadCommand = new TrackDownloadCommand(this);
            OpenFolderCommand = new OpenFolderCommand(this);
            SettingsCommand = new OpenSettingsCommand(this);
            ChangeSavePathCommand = new ChangeSavePathCommand(this);
            SearchCommand = new SearchCommand(this);
            SetTrackCommand = new SetTrackCommand(this);
        }

        public ObservableCollection<Track> SpotifySearchResults
        {
            get { return _spotifySearchResults; }
            set
            {
                _spotifySearchResults = value;
                OnPropertyChanged("SpotifySearchResults");
            }
        }

        public string SearchStr
        {
            get { return _searchStr; }
            set
            {
                _searchStr = value;
                OnPropertyChanged("SearchStr");
            }
        }

        public string DownloadStatus
        {
            get { return _downloadStatus.ToString(); }
            set
            {
                _downloadStatus.AppendLine(value.ToString());
                OnPropertyChanged("DownloadStatus");
            }
        }

        public Track Track
        {
            get { return _track; }
            set
            {
                _track = value;
                OnPropertyChanged("Track");
            }
        }

        public double ProgressbarValue
        {
            get { return _progressbarValue; }
            set
            {
                _progressbarValue = value;
                OnPropertyChanged("ProgressbarValue");
            }
        }

        public string SavePath
        {
            get { return string.IsNullOrEmpty(Settings.Default.SavePath) ? Environment.GetFolderPath(Environment.SpecialFolder.MyMusic) : Settings.Default.SavePath; }
            set
            {
                Settings.Default.SavePath = value;
                Settings.Default.Save();
                OnPropertyChanged("SavePath");
            }
        }

        public void OpenSettingsWindow()
        {
            OpenSettingsEvent(this, EventArgs.Empty);
        }

        public void OpenDownloadFolder()
        {
            Directory.CreateDirectory(Path.Combine(SavePath, "SpotifyToMp3"));
            Process.Start(Path.Combine(SavePath, "SpotifyToMp3\\"));
        }

        public void SetTrack(string uri)
        {
            var returnedTrack = _trackFinder.GetTrackInfo(uri);
            ProgressbarValue = 0;
            _downloadStatus.Clear();

            if (returnedTrack != null)
                Track = returnedTrack;
            else
            {
                DownloadStatus = "Ett problem uppstod när information om låten skulle hämtas. Prova med en annan låt.";
                Track = new Track();
            }
        }

        public async void FindVideo()
        {
            _downloadStatus.Clear();
            var videoFinder = new VideoFinder();

            DownloadStatus = "Letar efter matchning.";
            var videoId = await videoFinder.GetMatchingVideoId(Track);
            if (videoId != null)
            {
                DownloadVideo(videoId);
            }
            else if (videoFinder.SearchResultList.Count > 0)
            {
                YoutubeSearchResults = videoFinder.SearchResultList;
                NoMatchEvent(this, EventArgs.Empty);
            }
            else
                DownloadStatus = "Det gick inte att hitta någon matchande video för låten. Försök med en annan låt.";
        }

        public async void DownloadVideo(string VideoID)
        {
            var videoDownloader = new VideoDownloader();

            DownloadStatus = "Hämtar video.";
            var videoPath = await videoDownloader.GetVideo(VideoID, SavePath);

            if (videoPath != null)
                ConvertVideo(videoPath);
            else
                DownloadStatus = "Ett problem uppstod när videon skulle hämtas. Försök med en annan låt.";
        }

        public async void ConvertVideo(string VideoPath)
        {
            var videoConverter = new VideoConverter();
            videoConverter.VideoConvertEvent += (s, e) =>
            {
                ProgressbarValue = e.ConvertProgress;
            };

            DownloadStatus = "Gör om video till mp3.";
            var savePath = await Task.Run(() => videoConverter.ConvertVideoToMp3(VideoPath));

            DownloadStatus = savePath != null ? "Nedladdning slutförd." : "Ett problem uppstod när videon skulle göras om till mp3.";
        }

        public void Search(string searchStr)
        {
            SpotifySearchResults = _trackFinder.GetTracksFromSearch(searchStr);
        }


    }
}

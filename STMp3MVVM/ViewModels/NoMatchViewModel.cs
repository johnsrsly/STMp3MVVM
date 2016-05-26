using System.Collections.Generic;
using System.Windows.Input;
using STMp3MVVM.Commands;
using STMp3MVVM.Models;

namespace STMp3MVVM.ViewModels
{
    public class NoMatchViewModel : ViewModelBase
    {
        public List<SearchResult> SearchResultList { get; set; }
        public ICommand DownloadSelectedTrackCommand { get; private set; }
        private readonly MainViewModel _mainViewModel;

        public NoMatchViewModel(MainViewModel mainViewModel)
        {
            this._mainViewModel = mainViewModel;
            SearchResultList = mainViewModel.YoutubeSearchResults;
            DownloadSelectedTrackCommand = new SelectedTrackDownloadCommand(this);
        }

        public void DownloadSelectedTrack(string videoId)
        {
            _mainViewModel.DownloadVideo(videoId);
        }
    }
}

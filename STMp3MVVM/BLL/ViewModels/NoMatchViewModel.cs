using BLL.Commands;
using BLL.Models;
using System.Collections.Generic;
using System.Windows.Input;
using BLL.Models;

namespace BLL.ViewModels
{
    public class NoMatchViewModel : ViewModelBase
    {
        public List<SearchResult> SearchResultList { get; set; }
        public ICommand DownloadSelectedTrackCommand { get; private set; }
        private readonly MainViewModel _mainViewModel;

        public NoMatchViewModel(MainViewModel mainViewModel)
        {
            this._mainViewModel = mainViewModel;
            SearchResultList = mainViewModel.SearchResults;
            DownloadSelectedTrackCommand = new SelectedTrackDownloadCommand(this);
        }

        public void DownloadSelectedTrack(string videoId)
        {
            _mainViewModel.DownloadVideo(videoId);
        }
    }
}

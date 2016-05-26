using BLL.ViewModels;
using System;
using System.Windows.Input;

namespace BLL.Commands
{
    public class TrackDownloadCommand : ICommand
    {
        private readonly MainViewModel _mainWindowViewModel;
        public TrackDownloadCommand(MainViewModel mainWindowViewModel)
        {
            _mainWindowViewModel = mainWindowViewModel;
        }

        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public bool CanExecute(object parameter)
        {
            return _mainWindowViewModel.CanDownload;
        }

        public void Execute(object parameter)
        {
            _mainWindowViewModel.FindVideo();
        }
    }
}

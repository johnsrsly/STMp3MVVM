using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using STMp3MVVM.Models;
using STMp3MVVM.ViewModels;

namespace STMp3MVVM.Commands
{
    public class SetTrackCommand : ICommand
    {
        private readonly MainViewModel _mainViewModel;

        public SetTrackCommand(MainViewModel mainViewModel)
        {
            _mainViewModel = mainViewModel;
        }

        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public bool CanExecute(object parameter)
        {
            return true;
        }

        public void Execute(object parameter)
        {
            _mainViewModel.Track = (Track) parameter;
        }
    }
}

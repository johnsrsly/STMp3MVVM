using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using STMp3MVVM.ViewModels;

namespace STMp3MVVM.Commands
{
    public class SearchCommand : ICommand
    {
        private readonly MainViewModel _mainViewModel;

        public SearchCommand(MainViewModel mainViewModel)
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
            return _mainViewModel.CanSearch;
        }

        public void Execute(object parameter)
        {
            _mainViewModel.Search(parameter.ToString());
        }
    }
}

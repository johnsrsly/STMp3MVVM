using System;
using System.Windows.Input;
using STMp3MVVM.ViewModels;

namespace STMp3MVVM.Commands
{
    public class ChangeSavePathCommand : ICommand
    {
        private readonly MainViewModel _mainViewModel;

        public ChangeSavePathCommand(MainViewModel mainViewModel)
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
            _mainViewModel.SavePath = parameter.ToString();
        }
    }
}

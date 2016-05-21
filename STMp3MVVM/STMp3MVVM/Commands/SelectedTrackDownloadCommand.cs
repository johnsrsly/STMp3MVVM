﻿using System;
using System.Windows.Input;
using STMp3MVVM.ViewModels;

namespace STMp3MVVM.Commands
{
    public class SelectedTrackDownloadCommand : ICommand
    {
        private readonly NoMatchViewModel _noMatchViewModel;
        public SelectedTrackDownloadCommand(NoMatchViewModel noMatchViewModel)
        {
            _noMatchViewModel = noMatchViewModel;
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
            _noMatchViewModel.DownloadSelectedTrack(parameter.ToString());
        }
    }
}

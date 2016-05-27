﻿using STMp3MVVM.Models;
using STMp3MVVM.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace STMp3MVVM.Commands
{
    public class DownloadDownloadListCommand : ICommand
    {
        private readonly MainViewModel _mainViewModel;

        public DownloadDownloadListCommand(MainViewModel mainViewModel)
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
            return _mainViewModel.DownloadList.Count > 0;
        }

        public void Execute(object parameter)
        {
            _mainViewModel.DownloadDownloadList();
        }
    }
}

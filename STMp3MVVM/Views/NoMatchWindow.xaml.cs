using System.Windows;
using STMp3MVVM.ViewModels;

namespace STMp3MVVM.Views
{
    /// <summary>
    /// Interaction logic for NoMatchWindow.xaml
    /// </summary>
    public partial class NoMatchWindow : Window
    {
        public NoMatchWindow(MainViewModel viewModel)
        {
            InitializeComponent();
            DataContext = new NoMatchViewModel(viewModel);
            WindowStartupLocation = WindowStartupLocation.CenterOwner;
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void btnDownload_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}

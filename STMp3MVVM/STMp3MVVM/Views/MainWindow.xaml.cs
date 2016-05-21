using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using STMp3MVVM.ViewModels;

namespace STMp3MVVM.Views
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            var viewModel = new MainViewModel();
            DataContext = viewModel;
            viewModel.NoMatchEvent += (s, e) => NoMatch();
            viewModel.OpenSettingsEvent += (s, e) => OpenSettings();
        }

        private void Border_Drop(object sender, DragEventArgs e)
        {
            ((MainViewModel)DataContext).SetTrack(e.Data.GetData(DataFormats.StringFormat).ToString());
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                DragMove();
        }

        private void tbProgress_TextChanged(object sender, TextChangedEventArgs e)
        {
            tbProgress.ScrollToEnd();
        }

        private void NoMatch()
        {
            var noMatchWindow = new NoMatchWindow(((MainViewModel) DataContext)) {Owner = this};
            noMatchWindow.Show();
        }

        private void OpenSettings()
        {
            var settingsWindow = new SettingsWindow(((MainViewModel) DataContext)) {Owner = this};
            settingsWindow.Show();
        }
    }
}

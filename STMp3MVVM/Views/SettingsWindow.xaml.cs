using System.Windows;
using STMp3MVVM.ViewModels;
using WinForms = System.Windows.Forms;

namespace STMp3MVVM.Views
{
    /// <summary>
    /// Interaction logic for SettingsWindow.xaml
    /// </summary>
    public partial class SettingsWindow : Window
    {
        public SettingsWindow(MainViewModel mainViewModel)
        {
            InitializeComponent();
            DataContext = mainViewModel;
            WindowStartupLocation = WindowStartupLocation.CenterOwner;
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void btnChooseFolder_Click(object sender, RoutedEventArgs e)
        {
            var dialog = new WinForms.FolderBrowserDialog();
            var result = dialog.ShowDialog();
            if (result.ToString().Equals("OK"))
            {
                tbDownloadPath.Text = dialog.SelectedPath;
            }
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}

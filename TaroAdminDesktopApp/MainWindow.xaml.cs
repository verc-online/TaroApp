using Microsoft.Extensions.DependencyInjection;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using TaroAppLibrary.Data;
using TaroAppLibrary.Models;

namespace TaroAdminDesktopApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly IDatabaseData _db;

        public MainWindow(IDatabaseData db)
        {
            InitializeComponent();
            _db = db;
        }

        private void listAllCards_Click(object sender, RoutedEventArgs e)
        {
            
            var taroCardsForm = App.serviceProvider.GetService<TaroCardsForm>();
            taroCardsForm.Show();
        }
    }
}
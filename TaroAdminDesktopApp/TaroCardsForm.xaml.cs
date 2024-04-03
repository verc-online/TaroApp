using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using TaroAppLibrary.Data;
using TaroAppLibrary.Models;

namespace TaroAdminDesktopApp
{
    /// <summary>
    /// Interaction logic for TaroCardsForm.xaml
    /// </summary>
    public partial class TaroCardsForm : Window
    {
        private readonly IDatabaseData _db;

        public TaroCardsForm(IDatabaseData db)
        {
            _db = db;
            List<SuitModel> suitsWithCards = _db.ReadAllSuitsWithCards();
            InitializeComponent();
            taroCardsList.ItemsSource = suitsWithCards;
        }

        private void TaroCardEdit_Click(object sender, RoutedEventArgs e)
        {
            var taroCardDetailsForm = App.serviceProvider.GetService<TaroCardDetailsForm>();
            var card = (TaroCardModelBase)((Button)e.Source).DataContext;
            taroCardDetailsForm.PopulateTaroCardDetails(card);
            taroCardDetailsForm.Show();
        }
    }
}

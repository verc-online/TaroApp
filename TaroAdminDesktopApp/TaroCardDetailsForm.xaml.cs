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
    /// Interaction logic for TaroCardDetailsForm.xaml
    /// </summary>
    public partial class TaroCardDetailsForm : Window
    {
        private readonly IDatabaseData _db;
        private FullCardModel _data = null;
        public TaroCardDetailsForm(IDatabaseData db)
        {
            InitializeComponent();
            _db = db;
        }

        public void PopulateTaroCardDetails(TaroCardModelBase data)
        {
            _data = _db.ReadCardDetails(data.Id);
        }
    }
}

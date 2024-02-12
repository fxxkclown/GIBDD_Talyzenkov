using GIBDD_Talyzenkov.ApplicationData;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GIBDD_Talyzenkov.Pages
{
    /// <summary>
    /// Логика взаимодействия для MainPage.xaml
    /// </summary>
    public partial class MainPage : Page
    {
        public MainPage()
        {
            InitializeComponent();
            DataContext = Manager.currentUser;
            DrgLb.ItemsSource = Talyzenkov_GIBDDEntities3.GetContext().Shtraf_Protokol.Where(x => x.id_Owner == Manager.currentUser.id_Owner).ToList();
            Drg.ItemsSource = Talyzenkov_GIBDDEntities3.GetContext().Cars.Where(x => x.id_Owner == Manager.currentUser.id_Owner).ToList();

        }

        private void C_Click(object sender, RoutedEventArgs e)
        {
            Ctrax.Visibility = Visibility.Visible;
            KASKO.Visibility = Visibility.Hidden;
            Osago.Visibility = Visibility.Hidden;
            PR.Visibility = Visibility.Hidden;
        }

        private void ПР_Click(object sender, RoutedEventArgs e)
        {
            Ctrax.Visibility = Visibility.Hidden;
            KASKO.Visibility = Visibility.Hidden;
            Osago.Visibility = Visibility.Hidden;
            PR.Visibility = Visibility.Visible;
        }

        private void Каско_Click(object sender, RoutedEventArgs e)
        {
            Ctrax.Visibility = Visibility.Hidden;
            KASKO.Visibility = Visibility.Visible;
            Osago.Visibility = Visibility.Hidden;
            PR.Visibility = Visibility.Hidden;
        }

        private void Осаго_Click(object sender, RoutedEventArgs e)
        {
            Ctrax.Visibility = Visibility.Hidden;
            KASKO.Visibility = Visibility.Hidden;
            Osago.Visibility = Visibility.Visible;
            PR.Visibility = Visibility.Hidden;
        }
       

    }
}

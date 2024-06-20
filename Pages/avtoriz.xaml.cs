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
    /// Логика взаимодействия для avtoriz.xaml
    /// </summary>
    public partial class avtoriz : Page
    {
        public avtoriz()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Owner userObj = Talyzenkov_GIBDDEntities3.GetContext().Owner.FirstOrDefault(x => x.login == Login.Text && x.Password == Password.Password);

            try // оброботчик для входа в систему, обращение к базе данным sql USER
            {
                if (userObj == null)
                {
                    MessageBox.Show("Такого пользователя нет!", "Ошибка авторизации!", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                else
                {
                    Manager.currentUser = userObj;
                    switch (userObj.id_Role)
                    {
                        case 1:
                            MessageBox.Show("Здравствуйте, Администратор  " + userObj.Name + "!", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
                            Manager.MainFrame.Navigate(new MainPage());
                            break;
                        case 2:
                            MessageBox.Show("Здравствуйте, Менеджер " + userObj.Name + "!", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
                            Manager.MainFrame.Navigate(new MainPage());
                            Manager.currentUser = userObj;
                            break;

                        case 3:
                            MessageBox.Show("Здравствуйте, Диспетчер " + userObj.Name + "!", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
                            Manager.MainFrame.Navigate(new MainPage());
                            break;
                        case 4:
                            MessageBox.Show("Здравствуйте, Пользователь " + userObj.Name + "!", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
                            Manager.MainFrame.Navigate(new MainPage());
                            
                            break;
                        default:
                            MessageBox.Show("Данные не обнаружены!");
                            break;
                    }
                }
            }
            catch (Exception Ex)
            {
                MessageBox.Show("Ошибка" + Ex.Message.ToString() + "Критическая ошибка приложения!", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Warning);

            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Здравствуйте! Для регистрации в приложении вам следует обратиться в любое отделение ГИБДД в вашем городе. При себе нужно иметь Паспорт, страховые свидетельства и документы на машину для внесения их в базу сотрудников. После предъявления всех вышеперечисленных документов вам будет выдан логин и пароль для входа в личный аккаунт.\r\nЕсли остались вопросы, обратитесь по номеру: 7 (42142) 24830.");
        }
    }
}

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
using System.Data.SqlClient;

namespace SchoolProject
{
    public partial class Withdraw : Page
    {

        DataBase dataBase = new DataBase();

        public Withdraw()
        {
            InitializeComponent();
            UrNotLoggedIn.Opacity = 0;
        }

        private void RefillBtn_Click(object sender, RoutedEventArgs e)
        {
            if(IsLoggedIn())
            {
                if (IsNum())
                {
                    string main_money = ((MainWindow)Application.Current.MainWindow).UserMoney.Text;
                    int main_money_int = Convert.ToInt32(main_money);
                    int new_money = main_money_int - Convert.ToInt32(WithdrawMon.Text);
                    string new_money_string = Convert.ToString(new_money);
                    ((MainWindow)Application.Current.MainWindow).UserMoney.Text = new_money_string;


                    string querystring = $"UPDATE SchoolProject_users SET money = '{new_money}' WHERE username = '{((MainWindow)Application.Current.MainWindow).usernameField.Text}'";
                    SqlCommand command = new SqlCommand(querystring, dataBase.GetConnection());

                    dataBase.OpenConnection();
                    command.ExecuteNonQuery();
                    dataBase.CloseConnection();
                }
                else
                {
                    UrNotLoggedIn.Opacity = 100;
                    UrNotLoggedIn.FontSize = 20;
                    UrNotLoggedIn.Text = "Пожалуйста, вводите ТОЛЬКО целые числа";
                }
            }
            else UrNotLoggedIn.Opacity = 100;
        }
        public bool IsLoggedIn()
        {
            if (((MainWindow)Application.Current.MainWindow).usernameField.Text != "")
                return true;
            else return false;
        }

        public bool IsNum()
        {
            if (WithdrawMon.Text.All(char.IsDigit)) return true;
            else return false;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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

namespace SchoolProject
{
    /// <summary>
    /// Логика взаимодействия для RegOrLog.xaml
    /// </summary>
    public partial class RegOrLog : Window
    {
        DataBase dataBase = new DataBase();

        public RegOrLog()
        {
            InitializeComponent();
            LogMessage.Opacity = 0;
            RegMessage.Opacity = 0;
        }

        //          <!--Кнопка входа-->
        private void LogBtn_Click(object sender, RoutedEventArgs e)
        {
            //  Создаём адаптер и таблицу
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataTable table = new DataTable();

            string querystring = $"select id, username, password from SchoolProject_users where username = '{LogLoginBox.Text}' and password = '{LogPasswordBox.Text}'";    //  Создаём строку SQL-запроса и записываем её в string
            SqlCommand command = new SqlCommand(querystring, dataBase.GetConnection());     // Создаём команду которую передадим в адаптер
            adapter.SelectCommand = command;    //  Даём адаптеру команду искать по нашему запросу
            adapter.Fill(table);    //  Заполняем ЗДЕШНЮЮ таблицу полученными после поиска значениями


            //  Смотрим если в ЗДЕШНЕЙ таблице нужные значения в количестве одной штуки
            if (table.Rows.Count == 1)
            {
                //  Успешный вход
                LogMessage.Opacity = 100;
                LogMessage.Text = "Проснитесь и пойте, мистер Фримен!" + "\n *вы успешно вошли*";
                ((MainWindow)Application.Current.MainWindow).usernameField.Text = LogLoginBox.Text;

                //  Достаём значение money из вошедшего человека
                using (SqlConnection connection = new SqlConnection("Data Source=localhost;Initial Catalog=SchoolProjectDB;Integrated Security=True"))
                {
                    SqlCommand com =
                    new SqlCommand($"select * from SchoolProject_users WHERE username = '{LogLoginBox.Text}' and password = '{LogPasswordBox.Text}'", connection);
                    connection.Open();

                    SqlDataReader read = com.ExecuteReader();

                    while (read.Read())
                    {
                        ((MainWindow)Application.Current.MainWindow).UserMoney.Text = read["money"].ToString();
                    }
                    read.Close();
                }
            }
            else
            {
                //  Не успешный вход
                LogMessage.Opacity = 100;
                LogMessage.Text = "Такого аккаунта не существует!";
            }
        }

        //          <!--Кнопка регистрации-->
        private void RegBtn_Click(object sender, RoutedEventArgs e)
        {   
            if (CheckUser())    //  Проверяем есть ли такой пользователь (своя функции, описана чуть ниже)
            {
                return;
            }

            string querystring = $"insert into SchoolProject_users(username, password, money) values('{RegLoginBox.Text}', '{RegPasswordBox.Text}', 0)";    //  Создаём строку SQL-запроса и записываем её в string
            SqlCommand command = new SqlCommand(querystring, dataBase.GetConnection());

            dataBase.OpenConnection();

            if (command.ExecuteNonQuery() == 1)
            {
                // Успешная регистрация
                RegMessage.Opacity = 100;
            }
            else
            {
                // Не успешная регистрация
                RegMessage.Opacity = 100;
                RegMessage.Text = "Зарегистрироваться не получилось. ватафак мазафак";
            }

            dataBase.CloseConnection();
        }

        private bool CheckUser()
        {
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataTable table = new DataTable();

            string querystring = $"select id, username, password from SchoolProject_users where username = '{RegLoginBox.Text}' and password = '{RegPasswordBox.Text}'";
            SqlCommand command = new SqlCommand(querystring, dataBase.GetConnection());

            adapter.SelectCommand = command;
            adapter.Fill(table);

            if (table.Rows.Count > 0)
            {
                RegMessage.Opacity = 100;
                RegMessage.Text = "Эх, походу такой логин уже занят :(";
                return true;
            }
            else return false;
        }

        private void QuitBtn_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}

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
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Collections.ObjectModel;

namespace SchoolProject
{
    public partial class MainWindow : Window
    {
        DataBase dataBase = new DataBase();

        public MainWindow()
        {
            InitializeComponent();
            Start start = new Start();
            MainFrame.Content = start;
        }

        private void RefillBtn_Click(object sender, RoutedEventArgs e)
        {
            Refill Refill = new Refill();
            MainFrame.Content = Refill;
        }

        private void WithdrawBtn_Click(object sender, RoutedEventArgs e)
        {
            Withdraw Withdraw = new Withdraw();
            MainFrame.Content = Withdraw;
        }

        private void AuthBtn_Click(object sender, RoutedEventArgs e)
        {
            RegOrLog RegOrLog = new RegOrLog();
            RegOrLog.Show();
        }

        private void QuitBtn_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void TitleText_MouseDown(object sender, MouseButtonEventArgs e)
        {
        }
    }
}
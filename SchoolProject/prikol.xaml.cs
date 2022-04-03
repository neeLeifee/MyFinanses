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
using System.Media;

namespace SchoolProject
{
    public partial class prikol : Window
    {
        int count;

        public prikol()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            SoundPlayer[] players = {
                new SoundPlayer(@"..\..\sounds\beat.wav"),
                new SoundPlayer(@"..\..\sounds\boi_what_the_hell.wav"),
                new SoundPlayer(@"..\..\sounds\boom.wav"),
                new SoundPlayer(@"..\..\sounds\bounce.wav"),
                new SoundPlayer(@"..\..\sounds\cartoon_alarm.wav"),
                new SoundPlayer(@"..\..\sounds\cartoon_running.wav"),
                new SoundPlayer(@"..\..\sounds\oi.wav"),
                new SoundPlayer(@"..\..\sounds\omg_bruh_man.wav"),
                new SoundPlayer(@"..\..\sounds\Samsung.wav"),
                new SoundPlayer(@"..\..\sounds\spring.wav"),
                new SoundPlayer(@"..\..\sounds\whistle.wav"),
            };

            Random rand = new Random();
            int num = rand.Next(10);
            for(int i = 0; i < num; i++)
            {
                players[i].Play();
            }
            count++;
            if (count >= 5)
            {
                yep.Opacity = 100;
            }
        }

        private void QuitBtn_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}

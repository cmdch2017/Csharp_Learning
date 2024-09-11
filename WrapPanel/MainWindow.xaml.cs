using System;
using System.Configuration;
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

namespace WrapPanel
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            List<ProductType> products = new List<ProductType>();
            products.Add(new ProductType { TypeId = 1, TypeName = "电脑" });
            products.Add(new ProductType{TypeId = 1, TypeName = "手机"});
            foreach(var item in products)
            {
                Button btn = new Button();
                btn.Content = item.TypeName;
                btn.Width = 100;
                btn.Margin=new Thickness(10,2,10,2);
                this.wpList.Children.Add(btn);
            }
        }

    }
}
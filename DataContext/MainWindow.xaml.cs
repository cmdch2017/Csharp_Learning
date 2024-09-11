using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace DataContext
{
    public partial class MainWindow : Window
    {
        // 用于存放产品列表
        public ObservableCollection<Product> list = new ObservableCollection<Product>
        {
            new Product { ProductNo = "001", ProductName = "产品A", Price = 10.0, Number = 100, CreateTime = DateTime.Now },
            new Product { ProductNo = "002", ProductName = "产品B", Price = 20.0, Number = 200, CreateTime = DateTime.Now }
        };

        // 用于存放选中的信息
        private List<Product> chkList = new List<Product>();

        public MainWindow()
        {
            InitializeComponent();
            this.DataContext = this;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            this.lvProducts.ItemsSource = list;
        }

        // 全选逻辑
        private void chkAll_Click(object sender, RoutedEventArgs e)
        {
            CheckBox chk = (CheckBox)sender;
            bool isChecked = chk.IsChecked ?? false;

            // 如果全选，直接将所有产品加入到 chkList 中
            if (isChecked)
            {
                chkList = new List<Product>(list); // 将 list 中的所有产品复制到 chkList
            }
            else
            {
                chkList.Clear(); // 如果取消全选，清空 chkList
            }

        }


        // 单选逻辑
        private void chkData_Click(object sender, RoutedEventArgs e)
        {
            var chk = (CheckBox)sender;
            Product product = (Product)chk.DataContext;

            if (chk.IsChecked == true)
            {
                chkList.Add(product);
            }
            else
            {
                chkList.Remove(product);
            }
        }

        // 添加产品
        private void miAdd_Click(object sender, RoutedEventArgs e)
        {
            ProductEditWindow productEditWindow = new ProductEditWindow();
            productEditWindow.UpdataData += ProductEditWindow_UpdateData;
            productEditWindow.Show();
        }

        // 回调方法
        private void ProductEditWindow_UpdateData(Product obj)
        {
            list.Add(obj);
        }

        // 更新产品
        private void miUpdate_Click(object sender, RoutedEventArgs e)
        {
            // 更新选中的产品
            Product product = (Product)this.lvProducts.SelectedItem;
            ProductEditWindow productEditWindow = new ProductEditWindow(product);
            productEditWindow.Show();
        }

        // 删除产品
        private void miDelete_Click(object sender, RoutedEventArgs e)
        {
            if (chkList.Count > 0)
            {
                // 删除所有被选中复选框的产品
                foreach (var product in chkList)
                {
                    list.Remove(product);
                }
                chkList.Clear(); // 清空已删除的选中项列表
            }
            else
            {
                MessageBox.Show("没有选择任何产品进行删除。", "提示", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }
    }
}

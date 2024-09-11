using System.Windows;

namespace DataContext
{
    /// <summary>
    /// Window1.xaml 的交互逻辑
    /// </summary>
    public partial class ProductEditWindow : Window
    {
        ProductViewModel? productVM;
        public ProductEditWindow()
        {
            InitializeComponent();
            this.DataContext = productVM = new ProductViewModel();
        }
        public ProductEditWindow(Product product)
        {
            InitializeComponent();
            this.DataContext = productVM = new ProductViewModel(product);
        }
        public event Action<Product>? UpdataData;//声明定义
        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            this.productVM!.Product!.CreateTime = DateTime.Now;
            if (UpdataData != null)
            {
                UpdataData(this.productVM.Product);
            }
        }

    }
}

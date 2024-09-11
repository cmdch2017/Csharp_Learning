using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows;

namespace DataContext
{
    public class ProductViewModel : INotifyPropertyChanged
    {
        private Product? product;
        
        //新增逻辑
        public ProductViewModel() => product = new Product();

        public ProductViewModel(Product product) => this.product = product;

        public Product? Product
        {
            get => product;
            set
            {
                product = value;
                OnPropertyChanged(nameof(Product));
            }
        }

        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}

   M S B A M L   `   `   `  ����F  BDataContext, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:DataContextDataContext  5   	   #    DataContext.ProductEditWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:DataContext     5   	     � Title$  ProductEditWindow��5   	   $	��450��6#   $	��800��60   .��5	      � .+�5
   
   �� $��产品编号��6   $
��Left=�6   $��194,104,0,0q�6:   $	��Top=�6O   �� 5   
   $��Center=�6   $��	0,109,0,0q�6/    �� TextWrapping$
 Wrap=�6B   $	��Top=�6�   $��24��6�   $	��164��6�   ��6V   �� *Product.ProductNo+ �� Mode$ TwoWay=�6�   �� 5   
   $��产品名称��6   $
��Left=�6   $��194,155,0,0q�6:   $	��Top=�6O   �� 5   
   $��Center=�6   $��	0,160,0,0q�6/   $
 Wrap=�6B   $	��Top=�6{   $��24��6�   $	��164��6�   ��6V   �� *Product.ProductName+6�   �� 5   
   $��单价��6   $
��Left=�6   $��224,207,0,0q�68   $	��Top=�6M   �� 5   
   $��Center=�6   $��	0,210,0,0q�6/   $
 Wrap=�6B   $	��Top=�6u   $��24��6�   $	��164��6�   ��6V   �� *Product.Price+6�   �� 5   
   $��数量��6   $
��Left=�6   $��224,250,0,0q�68   $	��Top=�6M   �� 5   
   $��Center=�6   $��	0,253,0,0q�6/   $
 Wrap=�6B   $	��Top=�6v   $��24��6�   $	��164��6�   ��6V   �� *Product.Number+6�   �� 5   
   -   5         ��Name$ btnSave��5      $��保存��6   $
��Left=�6E   $��194,322,0,0q�6`   $	��Top=�6u   $��33��6�   $��81��6�   �� 5   
   -   5        $ 	btnCancel��5      $��取消��6   $
��Left=�61   $��320,322,0,0q�6L   $	��Top=�6a   $��33��6y   $��80��6�   5      5      
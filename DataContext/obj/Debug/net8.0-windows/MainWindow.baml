   M S B A M L   `   `   `  ����F  BDataContext, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:DataContextDataContext  5   	       DataContext.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:DataContext     5   	   -   5          � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �� -   5         ��Name$ 
lvProducts��5	      ��6#   �� *list+ �� View 5
   
   �� 5      .P�5      �� ��5      �� 5      -   5         ��Name$ chkAll��5   #   6J    �� CellTemplate 5      �� 5      .R�5      �� $ chkData��6'   -   5        
 � Tag 5   N   ��  �� Path$ 	ProductNo� d� 	IsChecked 5   '   �� $ 	IsChecked� �� ElementName$ chkAll��	 �� Mode$	 OneWay=�5      5      �� 5      $��产品编号��6!   
 �� DisplayMemberBinding
 6/   �� $ 	ProductNo� �� UpdateSourceTrigger$ PropertyChanged=��� 5      $��产品名称��6!    �� Width$	 150��6/   
 6;   �� $ ProductName�$ PropertyChanged=��� 5      $��单位��6!   
 6-   �� $ Price�$ PropertyChanged=��� 5      $��数量��6!   
 6-   �� $ Number�$ PropertyChanged=��� 5      $��创建时间��6!   
 6/   �� $ 
CreateTime�$ PropertyChanged=�5       � ContextMenu 5   
   �� 5       .@�5!      m� -   5         m�Name$ miAdd��5!   '   $��添加��6   6L   m� 5"      -   5        $ miUpdate��5"   '   $��修改��6   6R   m� 5#      -   5        $ miDelete��5#   '   $��删除��6   6R   m� 5$      $��产品管理��6   .@�5%      m� $��产品列表��6   6/   m� 5&      $��产品详情��6   6/   5'      5(      5*      5+      
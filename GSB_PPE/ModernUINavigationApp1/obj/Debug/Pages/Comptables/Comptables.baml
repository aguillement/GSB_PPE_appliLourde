   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5      ) %System.Windows.Controls.Input.ToolkitpTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.ToolkitSystem.Windows.Controls 5       ModernUINavigationApp18   2ModernUINavigationApp1.Pages.Comptables.Comptables   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      6sys&clr-namespace:System;assembly=mscorlib     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Z VFirstFloor.ModernUI, Version=1.0.9.0, Culture=neutral, PublicKeyToken=bc9b0c37bf06c6a90mui&http://firstfloorsoftware.com/ModernUI  5      btoolkitTclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Input.Toolkit  5      .��5      �    ContentRoot#��[  6   .+�5   
   �� .��5      �� $	��200��6   .+�5      �� $��
Comptables��6     Heading2#��[ 6.   �� 5      -   5          ��Name$  txtboxSelectDate��5      $��Selectionner une date :��66   6W   (  "System.Windows.Controls.DatePicker  5      -   5          Name$ calendarPicker��5      $
��Left=�65   �� 5      -   5        $  	textBlock��5      $��Selectionner un visiteur��6/   6Q   �� 5      -   5         ��Name$ 
cboVisitor��5       �� DisplayMemberPath$ 	full_name��5       �� SelectedValuePath$ id��5      $
��Left=�5      $	��Top=�5      $	��159��5       �� IsTextSearchEnabled .  �� 
IsEditable . ��5      ��  �� Path$ listVisitor�5      �� 5       -   5         ��Name$ 	btnFilter��5       $��
Rechercher��6D   $
��Left=�6Y   $	��Top=�6t   �� 5"      -   5        $ 
btnRefresh��5"      $��Recharger le tableau��6F   $
��Left=�6e   6�   &   System.Windows.Controls.DataGrid  5#      -   5        	  Name$	 datagridExpense��5#      
   AutoGenerateColumns
 .  $
��Left=�6h   $	��Top=�6�      CanUserAddRows .  ��64   ��    Columns 5$      4  .System.Windows.Controls.DataGridTemplateColumn  5%         CellTemplate 5&      �� 5'   "   .R�5(   &   ��  �� Orientation$ Vertical=�61   .+�5)   *   �� -   5        
���   �
���  ��.��5)   m   	Supprimer6x   �� 5*   *   -	   5        
���   �
�������.��5*   o   
Modifier6y   5+   '   5,   #   5.      0  *System.Windows.Controls.DataGridTextColumn  5/      ,  &System.Windows.Controls.DataGridColumn   Header$ id��6-   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *id+  50      $
 Type��6-    6;   �� *type+  51      $	 Nom��6-    6:   �� *name+  52      $
 Date��6-    6;   �� *expense_date+  53      $ Montant��6-    6>   �� *amount+  54      $ Expense Report��6-    6E   �� *expense_report_id+56      57      58      59      5:      
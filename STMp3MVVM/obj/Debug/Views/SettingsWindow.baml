   M S B A M L   `   `   `  ����  	STMp3MVVM$    STMp3MVVM.Views.SettingsWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	     � Title$  SettingsWindow��5   	   $��118.919��6    $��358.559��61    � WindowStyle$
 None=�6A   ���	#FF2E2E2E � 
ResizeMode$ NoResize=�6k   ���	#FF3E3E3E$��1q�6�    � 	Resources 5       �� Source�� 5	   
   $ StyleResources.xaml?�6   %    .��5      � $��0,0,0,-2q�6   .+�5   
   �� -   5         ��Name$ btnSave��5   }   $��Spara��6�   ���	#FFEAEAEA$
��Left=�6�   $��	10,87,0,0q�6�   $	��Top=�6�   $��75��6�   $��20��6  
���������6   �� *ChangeSavePathCommand+��6;   ��  �� ElementName$ tbDownloadPath�� �� Path$
 Text�6(  �� 5   
   -   5        $ btnChooseFolder��5      $	��...��6*   ���	#FFEAEAEA$
��Left=�6O   $��
295,41,0,0q�6j   $	��Top=�6~   $��52��6�   $��23��6�   
�������6�   �� 5   
   -   5        $ 	btnCancel��5      $��Avbryt��6$   ���	#FFEAEAEA$
��Left=�6L   $��	90,87,0,0q�6g   $	��Top=�6z   $��75��6�   $��20��6�   
�������6�   �� 5   
   -   5         ��Name$ lblChooseDownloadPath��5      $��Välj nedladdningsmapp��6/   $
��Left=�6O   $��	10,10,0,0q�6j   $	��Top=�6}   ���	#FFEAEAEA6�   �� 5   
   ���	#FF5D5D5D$��1q�6)   	 �� CornerRadius$	 3��6=   ���	#FF232323$
��Left=�6e   $��23��6�   $��	10,41,0,0q�6�   $	��Top=�6�   $	��280��6�   ._�5      �� -   5        
 ��Name$
 tbDownloadPath��5   0   $��0q�6H    �� TextWrapping$
 Wrap=�6S    �� 
IsReadOnly . ���	#FFEAEAEA��6   �� *
SavePath+ �� SelectionBrush 6g   Z� ��6�   Z� ��6�   Z� 6�   5      5      5      
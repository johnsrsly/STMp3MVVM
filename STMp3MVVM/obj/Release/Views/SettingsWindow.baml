   M S B A M L   `   `   `  ���� D  @STMp3MVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:STMp3MVVM.ViewsSTMp3MVVM.Views  $    STMp3MVVM.Views.SettingsWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:STMp3MVVM.Views       � Title$  SettingsWindow��$��118.919��$��358.559�� � WindowStyle$
 None=����	#FF2E2E2E � 
ResizeMode$ NoResize=����	#FF3E3E3E$��1q� � 	Resources  �� Source�� $ StyleResources.xaml?�%    .��� $��0,0,0,-2q�.+��� -    ��Name$ btnSave��$��Spara�����	#FFEAEAEA$
��Left=�$��	10,87,0,0q�$	��Top=�$��75��$��20��
����������� *ChangeSavePathCommand+����  �� ElementName$ tbDownloadPath�� �� Path$
 Text��� -   $ btnChooseFolder��$	��...�����	#FFEAEAEA$
��Left=�$��
295,41,0,0q�$	��Top=�$��52��$��23��
��������� -   $ 	btnCancel��$��Avbryt�����	#FFEAEAEA$
��Left=�$��	90,87,0,0q�$	��Top=�$��75��$��20��
��������� -    ��Name$ lblChooseDownloadPath��$��Välj nedladdningsmapp��$
��Left=�$��	10,10,0,0q�$	��Top=����	#FFEAEAEA�� ���	#FF5D5D5D$��1q�	 �� CornerRadius$	 3�����	#FF232323$
��Left=�$��23��$��	10,41,0,0q�$	��Top=�$	��280��._��� -   
 ��Name$
 tbDownloadPath��$��0q� �� TextWrapping$
 Wrap=� �� 
IsReadOnly . ���	#FFEAEAEA���� *
SavePath+ �� SelectionBrush Z� ��Z� ��Z� 
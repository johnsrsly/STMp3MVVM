   M S B A M L   `   `   `  ���� D  @STMp3MVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:STMp3MVVM	STMp3MVVM      STMp3MVVM.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:STMp3MVVM     Hi:http://schemas.microsoft.com/expression/2010/interactivity       � Title$  SpotifyToMp3��$��310.307��$	��508�� � WindowStyle$
 None=����	#FF2E2E2E � 
ResizeMode$ CanMinimize=����	#FF3E3E3E$��1q� � 	Resources  �� Source�� $ StyleResources.xaml?�%    .��� $	��310��$	��Top=�$��0,0,0,-2q� � ColumnDefinitions �� �� $��0* �.+��� -    ��Name$ btnDownload��$��	Ladda ner��$
��Left=�$��
423,91,0,0q�$	��Top=�$��73�����	#FF5D5D5D$��20��
���   ����	#FFEAEAEA���� *DownloadCommand+�� -   $ btnClose��   btnNoBorder#���   $��X��$
��Left=�$��	463,2,0,0q�$	��Top=�$��41��$��28�����	#FF2E2E2E���	#FFEAEAEA$��17.333(�$��Medium"���Z� �� -   $ btnMinimize��#���   $��-��$��	423,2,0,0q�$	��Top=�$��28�����	#FF2E2E2E$
��Left=�$��40�����	#FFEAEAEA$��24(�$��Medium"���Z� �� -    ��Name$ 	borderTop��$��1q�$��Center=�$��29��$	��Top=�$	��418��$��0,0,88,0q�._��� -    ��Name$ lblWindowName��$�� SpotifyToMp3��$��
25,0,-1,-1q�$
��Left=�$��28��$	��Top=����	#FFEAEAEA$	��392������ 	 �� Color$	 	#FF404040��
 �� Opacity$
 0Q��� -   $��1q�$
��Left=�$��29��$��	10,57,0,0q�$	��Top=�$	��486�� �� CornerRadius$ 3�����	#FF5D5D5D J� 	AllowDrop . ���	#FF232323._��� -   $ lblDrop�� . $��-1q�$��Center=�$��Center=����	#FFEAEAEA���� *Track.SongAndArtists+��Z� �� -   $ lblProgressBorder��$��1q�$��231,116,10,0q�$ 3��$	��182��$	��Top=����	#FF5D5D5D���	#FF232323._��� -	    ��Name$ 
tbProgress�� �� TextWrapping$
 Wrap=�$��0q�$��13.333(� �� 
IsReadOnly .  �� IsUndoEnabled . " �� VerticalScrollBarVisibility$
 Auto=�$ �� HorizontalScrollBarVisibility$
 Auto=����	#FFEAEAEA���� *DownloadStatus+ �� SelectionBrush Z� ��Z� ��Z� �� -
   $ pbBorder��$��1q�$ 3��$
��Left=�$��20��$��
231,91,0,0q�$	��Top=�$	��187�����	#FF5D5D5D���	#FF232323._�� -    �Name$ pb��$	��0.5q� J� RenderTransformOrigin$ 0.5,0.5&����	#FF264622  ProgressBarRoundedCorners#���   � Value �� *ProgressbarValue+��Z� ��Z� �� $ 3��$��Center=�$��Center=�$��10,91,280,12q�$	��216��$	��207��._�� $��0q�.+��� -   $
��mask�����	#FF2E2E2E$ 5����  J� OpacityMask !�  !� Visual ��  �� ElementName$
 mask��.+��� -    ��Name$ imgAlbum��$	��206��$��UniformToFill=����� *Track.ImageURL+�� $��6��$��0,30,0,0q�$	��Top=�$
��Left=�$	��506�����	#FF3E3E3E�� -   $ image��$
��Left=�$��25��$	��Top=�$��25��$��	3,3.5,0,0q�$/��)/STMp3MVVM;component/logo_1948848_web.ico��o� -    o�Name$
 menu��$
��Left=�$��18��$��0,34,0,0q�$	��Top=���Z� .@�m� ���	#FFEAEAEA$��
Alternativ��.@�m� -    m�Name$ 
miSettings��$��Inställningar�����	#FF2E2E2E m� Command �� *SettingsCommand+m� -   $ miOpenFolder�����	#FF2E2E2E$��Öppna mapp�� �� *OpenFolderCommand+
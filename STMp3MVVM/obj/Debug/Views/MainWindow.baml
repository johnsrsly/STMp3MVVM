   M S B A M L   `   `   `  ����  	STMp3MVVM     STMp3MVVM.Views.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	     � Title$  SpotifyToMp3��5   	   $��735.706��6   $	��857��6/    � WindowStyle$
 None=�6;   ���	#FF2E2E2E � 
ResizeMode$ CanMinimize=�6e   ���	#FF3E3E3E$��1q�6�    � 	Resources 5	       �� Source�� 5
   
   $ StyleResources.xaml?�6   %    .��5      � $	��738��6   $	��Top=�6   $
��Left=�60   $	��857��6K   $��0,0,-2,0q�6W    � ColumnDefinitions 5   
   �� 5      �� 5      $��0* �6   .+�5   
   �� -   5         ��Name$ btnDownload��5      $��	Ladda ner��6J   $
��Left=�6^   $��
423,91,0,0q�6y   $	��Top=�6�   $��73��6�   ���	#FF5D5D5D$��20��6�   
���   ����	#FFEAEAEA��6&   �� *DownloadCommand+6�   �� 5   
   -   5        $ btnClose��5         BtnNoBorder#���   6#   $��X��6U   $
��Left=�6a   $��	813,1,0,0q�6|   $	��Top=�6�   $��41��6�   $��28��6�   ���	#FF2E2E2E���	#FFEAEAEA$��17.333(�6  $��Medium"�6,  ��6�   Z� 6,  �� 5   
   -   5        $ btnMinimize��5      #���   6&   $��-��6X   $��	773,1,0,0q�6d   $	��Top=�6w   $��28��6�   ���	#FF2E2E2E$
��Left=�6�   $��40��6�   ���	#FFEAEAEA$��24(�6  $��Medium"�6  ��6�   Z� 6(  �� 5   
   -   5         ��Name$ 	borderTop��5      $��1q�6$   $��Center=�68   $��29��6U   $	��Top=�6a   $	��383��6y   $��
33,0,441,0q�6�   ._�5      �� -   5         ��Name$ lblWindowName��5      $�� SpotifyToMp3��6+   $��	-1,-1,0,0q�6C   $��28��6V   $	��Top=�6b   ���	#FFEAEAEA$��Center=�6�   ��5      �� 5      	 �� Color$	 	#FF404040��6&   
 �� Opacity$
 0Q�68   5      5      �� 5   
   -   5        $��1q�5      $
��Left=�6%   $��29��6@   $��	10,57,0,0q�6L   $	��Top=�6_   $	��486��6w    �� CornerRadius$ 3��6�   ���	#FF5D5D5D J� 	AllowDrop . ���	#FF232323._�5      �� -   5        $ lblDrop��5       . $��-1q�6_   $��Center=�6k   $��Center=�6�   ���	#FFEAEAEA��66   �� *Track.SongAndArtists+��6�   Z� 6�   5      �� 5   
   -   5        $ lblProgressBorder��5      $��1q�6,   $��231,116,0,0q�6@   $ 3��6U   $	��182��6f   $	��Top=�6s   ���	#FF5D5D5D���	#FF232323$
��Left=�6�   $	��265��6�   ._�5       �� -	   5         ��Name$ 
tbProgress��5    6    �� TextWrapping$
 Wrap=�6J   $��0q�6^   $��13.333(�6i    �� 
IsReadOnly .  �� IsUndoEnabled . " �� VerticalScrollBarVisibility$
 Auto=�6�   $ �� HorizontalScrollBarVisibility$
 Auto=�6  ���	#FFEAEAEA��6   �� *DownloadStatus+ �� SelectionBrush 6{   Z� ��6�   Z� ��6�   Z� 6V  5!      �� 5"   
   -
   5        $ pbBorder��5"      $��1q�6#   $ 3��67   $
��Left=�6H   $��20��6c   $��
231,91,0,0q�6o   $	��Top=�6�   $	��187��6�   ���	#FF5D5D5D���	#FF232323._�5#      � -   5         �Name$ pb��5#   =   $��1q�6I    J� RenderTransformOrigin$ 0.5,0.5&�6T   ���	#FF264622  ProgressBarRoundedCorners#���  6�    � Value 6   �� *ProgressbarValue+��6t   Z� ��6�   Z� 6�   5$      �� 5%   
   $ 3��6   $
��Left=�6#   $	��Top=�6>   $��	10,91,0,0q�6V   $	��216��6i   $	��207��6u   ._�5&      � $��0q�6   .+�5'      �� -   5        $
��mask��5'      ���	#FF2E2E2E$ 5��6<   �� 5(       J� OpacityMask 5)      !� 5*       !� Visual 6&   ��  �� ElementName$
 mask��.+�5,      �� -   5         ��Name$ imgAlbum��5,      $	��206��6P   $��UniformToFill=�6]   ��6.   �� *Track.ImageUrl+6]   5-      5.      5/      �� 50   
   $��6��6   $��0,30,0,0q�6   $	��Top=�61   $
��Left=�6I   $	��855��6d   ���	#FF3E3E3E6p   �� 51   
   -   5        $ image��51      $
��Left=�6   $��25��6:   $	��Top=�6F   $��25��6^   $��	3,3.5,0,0q�6i   $/��)/STMp3MVVM;component/logo_1948848_web.ico��6|   o� 52   
   -   5         o�Name$
 menu��52      $
��Left=�6   $��18��68   $��0,34,0,0q�6D   $	��Top=�6V   ��6n   Z� .@�53      m� ���	#FFEAEAEA$��
Alternativ��6.   .@�54      m� -   5         m�Name$ 
miSettings��54   ?   $��Inställningar��6S   ���	#FF2E2E2E m� Command 6   �� *SettingsCommand+6j   m� 55      -   5        $ miOpenFolder��55   A   ���	#FF2E2E2E$��Öppna mapp��6n    6   �� *OpenFolderCommand+6n   56      57      �� 58   
   -   5        $ tbSearchBorder��58      $��1q�6)   $ 3��6=   $
��Left=�6N   $��31��6i   $��
10,303,0,0q�6u   $	��Top=�6�   $	��406��6�   ���	#FF5D5D5D���	#FF232323._�59      �� -   5        $ tbSearch��59      $��2q�6(   $
 Wrap=�63   ���	#FFEAEAEA$��18(�6�   ��6G   �� *	SearchStr+ �� UpdateSourceTrigger$ PropertyChanged=� 6�   Z� 6�   5:      �� 5;   
   -   5        $ lwSearchResultsBorder��5;      $��1q�60   $��
10,339,0,0q�6D   $ 3��6X   $	��341��6i   $	��Top=�6v   ���	#FF5D5D5D���	#FF232323$
��Left=�6�   $	��486��6�   ._�5<      �� -   5         ��Name$ lwSearchResults��5<      $��	1,-1,-1,1q�6]   ���	#FFEAEAEA  �� SelectionMode$  Single=�6�   ��60   �� *SpotifySearchResults+��6p   Z� ��6�   Z� .  (System.Windows.Interactivity.Interaction!   Triggers! 5=      /  )System.Windows.Interactivity.EventTrigger  5>      "   	EventName$" SelectionChanged��6%   .  (System.Windows.Interactivity.TriggerBase#   Actions.# 5?      6  0System.Windows.Interactivity.InvokeCommandAction  $   Command$ 60   �� *SetTrackCommand+%   CommandParameter% 6T   �� $ lwSearchResults��& �� Path$& SelectedItem�5@      ' �� View' 5B      �� 5C      .P�5D      �� $
��Låt��6)   ( �� Width$	( 162��6\   ) �� DisplayMemberBinding) 66   �� *Name+6\   �� 5E      $��Artists��6)   $	( 162��6c   ) 6:   �� *	Artists+6c   �� 5F      $��Album��6)   $	( 162��6_   ) 68   �� *Album+6_   5G      5I      5J      �� 5K   
   -   5        $ 	searchBtn��5K      $
��Sök��6�   $
��Left=�6�   $��421,303,0,0q�6�   $	��Top=�6  $��75��6  $��31��6'  ���	#FFEAEAEA��6$   �� *SearchCommand+��6F   �� $ tbSearch��$
& Text�* �� 	IsDefault* 6�   �� $ tbSearch��$& IsKeyboardFocused�63  �� 5L   
   -   5        $ lwDownloadListBorder��5L      $��1q�6/   $��
501,57,0,0q�6C   $ 3��6W   $	��277��6h   $	��Top=�6u   ���	#FF5D5D5D���	#FF232323$
��Left=�6�   $	��331��6�   ._�5M      �� -   5        $ lwDownloadList��5M      $��0q�6U   ���	#FFEAEAEA��6/   �� *DownloadList+��6`   Z� ��6v   Z� ' 5N      �� 5O      .P�5P      �� $
��Låt��6)   $	( 162��6\   ) 66   �� *Name+6\   �� 5Q      $��Artists��6)   $	( 162��6c   ) 6:   �� *	Artists+6c   5R      5T      5U      �� 5V   
   -   5        $ btnAddToDownloadList��5V      $$��Lägg till i nedladdningslista��6�   $
��Left=�6�   $��42��6�   $��10,685,0,-37q�6�   $	��Top=�6  $	��486��6%  ���	#FFEAEAEA��6/   �� *AddToDownloadListCommand+��6\   �� $ lwSearchResults��$& SelectedItem�61  �� 5W   
   -   5        $ btnDownloadListDownload��5W      $��Download from list��6b   $
��Left=�6   $��501,341,0,0q�6�   $	��Top=�6�   $	��129��6�   ���	#FFEAEAEA$��29��6�   ��62   �� *DownloadDownloadListCommand+6�   5X      5Y      
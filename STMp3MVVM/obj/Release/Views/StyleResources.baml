   M S B A M L   `   `   `  ���� D  @STMp3MVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:STMp3MVVM.ViewsSTMp3MVVM.Views  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   ScrollBarThumb  �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius  ScrollBarLineButton �� Path �� RelativeSource �� Triggers P� Property	 P� Value
 �� 
TargetName  VerticalScrollBar � RowDefinitions ]� Thumb �� Triggers ��Name  btnNoBorder  ProgressBar.Progress �� Color  ProgressBar.Background  ProgressBar.Border  ProgressBarRoundedCorners �Name'   !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� RepeatBehavior �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value8  2System.Windows.Media.Animation.EasingPointKeyFrame $� KeyTime $� Value ��Name �� RadiusX �� RadiusY J� RenderTransformOrigin �� Angle  �� Padding! J� SnapsToDevicePixels" �� ContentStringFormat# �� ContentStringFormat$ ]� 
Conditions% �� Property& �� Value' C� ResourceKey( m� IsSubmenuOpen) � AllowsTransparency* K� IsItemsHost-  'System.Windows.Input.KeyboardNavigation+   DirectionalNavigation, P� 
SourceName- � ColumnDefinitions. z� SharedSizeGroup/ ��Name0 m� InputGestureText 1 m� TopLevelHeaderTemplateKey2 m� TopLevelItemTemplateKey3 m� SubmenuItemTemplateKey�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     'localclr-namespace:STMp3MVVM.Views  %�  &	        &	 �     &	 R    7  7   7  '�� �    7  '�� �    '�� o    &	 �    &	 �    &	 �    &	 �    &	 �    7  7  7  '�� �    (�� �    *$"MenuItem.TopLevelHeaderTemplateKey+)(��     *" MenuItem.TopLevelItemTemplateKey+)(�� �    *!MenuItem.SubmenuItemTemplateKey+)'m� Y    71 72 73 �� "  n�.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  � �� .  ��  � |� .  ��  � �� �� " n�.R��� $ 2��#��z��#��z��$��2q��� "  ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  � |� .  ��  � �� �� " ��.R��� $��Border��$��1q�$ 2�����	#FF5D5D5D���	#FF2E2E2E$��2q�._�F� $��Center=�$��Center=����	#FF2E2E2E���� $ Content� �� *TemplatedParent+ P�  � ��	 . . ��� $
 Border�� � �� �	#FF4D4D4D�� " ��.R��  �� $��18���� $��0.00001* ��� $��18��.+��� $��3��$ 2�����	#FF5D5D5D�� $��0��8��  $��18��$��ScrollBar.LineUpCommand��$��M 0 4 L 8 4 L 4 0 Z��]� $��
PART_Track��$��1����.  n� 8�� $��1,0,1,0q����	#FF5D5D5D���	#FF2E2E2E�� $��3��8�� $��18��$��ScrollBar.LineDownCommand��$��M 0 0 L 4 4 L 8 0 Z���� "  ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle .  P�  �@��Orientation$	 Vertical=�. ���  � ��$ 18����  � ��$
 Auto����  � ��8   �� "  ��.���  �@�OverridesDefaultStyle . ��  �@�FocusVisualStyle Z� ��  �@�Cursor$ Arrow����  � �� �� " ��.R��� $��Border��._��� $ PART_ContentHost��$��0q��� "  ��.���  �@�OverridesDefaultStyle . ��  � ��$ 2q���  � �� �� " ��.R��� $��border�����	#FF5D5D5D$��1q�$ 3�����	#FF232323._��� $��Center=�$��Center=� P�  �@J�IsMouseOver	 . . ��� $
 border�� � �� �	#FF5D5D5D�� "  ��.���  �@�OverridesDefaultStyle . ��  � ��$ 2q���  � �� �� " ��.R��� $��border��$ 3��#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver	 . . ��� $
 border�� � �� �	#FF212121�� $ 	#FF06B025���� $ 	#FFE6E6E6���� $ 	#FFBCBCBC���� "  �.���  � ��8   ��  � ��8  ��  � ��8  ��  � ��$ 1q���  � �� �� " �.R�� $ TemplateRoot��   CommonStates��.   Determinate��  Indeterminate��. �� $ Forever��.��U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ 	Animation��.\�  $ 0��$
 0.25Q�  $ 0:0:1��$
 0.25Q�  $ 0:0:2��$
 0.25Q�*� $' !(UIElement.RenderTransformOrigin)�$ 	Animation��.'�  $ 0��$ -0.5,0.5&�  $ 0:0:1��$ 0.5,0.5&�  $ 0:0:2��$ 1.5,0.5&�.+��� #��z��#��z��#��z���� $ 
PART_Track��� $ PART_Indicator��}�. $
��Left=�.+��� $ 	Indicator��#��z��$ 3��$ 3���� $ 	Animation��#��z��$ 0.5,0.5&�$ 3��$ 3��z�V� .~��� �� �� T�  P�  �@�Orientation$	 Vertical=�. ��� $
 TemplateRoot�� �@�LayoutTransform �� $	 -90Q�P�  �@�IsIndeterminate	 . . ��� $
 	Indicator�� � y�$ 	Collapsed=��� "  ��.���  � �� �� " ��.R��� $��Bd��#��z��#  z��#��z��#��z��$ 3��! . ._��� #��z��#��z��## z" #��z��#��z��#! z!  ]� $ �� % �@��IsSelectionActive& .  �� % �@��
IsSelected& . ./��� $
 Bd�� � �� �	#FF264622]� $ �� % �@��IsSelectionActive& . �� % �@��
IsSelected& . ./��� $
 Bd�� � �� �	#FF264622P�  �@J�IsMouseOver	 . . ��� $
 Bd�� � �� �	#FF264622P�  � {�	 .  . ��� $
 Bd�� � �� C� #' Z���� " m�.R��� $��Border��._�� .+��� $��3,1,3,1q�$��Header����. � $��Popup��$��Bottom=�#��z( ) . |�.  $
��Fade=�.���� $��SubmenuBorder��! . ���	#FF2E2E2E���	#FF5D5D5D$��1q�._��� * . $+ Cycle=� P� " �@m�IsSuspendingPopupAnimation	 . . ��� $
 Popup�� � ��$
 None=�P�  �@m�IsHighlighted	 . . ��� $
 Border�� � �� �	#FF5D5D5D�� $
 Border�� � ��
 ���� P� $, Popup�� �@�AllowsTransparency	 . . ��� $
 SubmenuBorder�� �@��CornerRadius$ 2,2,2,2���� " m�.R��� $��Border��._�� .+��� $��6,3,6,3q�$��Header����.  P�  �@m�IsHighlighted	 . . ��� $
 Border�� � ��
 �   ��� $
 Border�� � ��
 ���� �� " m�.R��� $��Border��._�� - �� $
��Auto �$
. Icon���� $��* ��� $
��Auto �$. Shortcut���� $
��Auto �.+��� $
��Icon��$��2,0,2,0q�$��Center=�$
��Icon���� $��
HeaderHost��$��1��$��Header����. �� $/ InputGestureText��$��2��#��z0 $��5,2,0,2q�$��Right=� P�  �@m�IsHighlighted	 . . ��� $
 Border�� � �� �	#FF5D5D5D�� "  m�.���  �@�OverridesDefaultStyle .  P�  �@m�Role$	 TopLevelHeader=�. ���  � ��8   ��  �@�IsSharedSizeScope . P�  �@m�Role$	 TopLevelItem=�. ���  � ��8  P�  �@m�Role$	 SubmenuItem=�. ���  � ��8  
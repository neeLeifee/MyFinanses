   M S B A M L   `   `   `  ����H  DSchoolProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:SchoolProjectSchoolProject  5   	       SchoolProject.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:SchoolProject     5   	     � Title$  
MainWindow��5   	   $	��550��6   $	��800��6)    � WindowStyle$
 None=�65    � AllowsTransparency . 
������  � 
ResizeMode$ NoResize=�6{   '  !System.Windows.Shell.WindowChrome   WindowChrome 5        5   
      CaptionHeight$ 45Q�6   6,   .��5      ��  �� CornerRadius$ 25��6   $��1q�6   ���#444���#333._�5   
   � $��
5, 5, 5, 2q�6   .+�5      ��    IsHitTestVisibleInChrome . $��45��6F   $	��Top=�6R    �� Orientation$ 
Horizontal=�6j   .+�5      �� -   5        	 ��Name$	 QuitBtn��5      $��40��6@   $��40��6K   $��10q�6W   $��	730,2,0,3q�6d   .��5      �� $��Images/close.png��6   68   5      5       � 5      -   5        
  �Name$
 	MainFrame��5      $
��Left=�6'   $	��461��6B   $��
171,50,0,0q�6O   $	��Top=�6c   $	��584��6{     � NavigationUIVisibility$ Hidden=�6�   �� 5      -   5         ��Name$ 	TitleText��5      $
��Left=�6+   $��	10,10,0,0q�6F   $
��Wrap=�6Y   $��МоиФинансы��6m   $	��Top=�6   $��30��6�   $	��162��6�   $��25(�6�   
�������$%��VCR OSD Mono [RUS by Daymarius])�6�   6�   �� 5      $
��Left=�6   $��
220,10,0,0q�63   $
��Wrap=�6G   $ ��Пользователь: ��6[   $	��Top=�6q   $��30��6�   $	��193��6�   $��25(�6�   
�������$%��VCR OSD Mono [RUS by Daymarius])�6�   �� 5      -   5        $ usernameField��5      $
��Left=�6/   $��
418,10,0,0q�6J   $
��Wrap=�6^   $�� ��6r   $	��Top=�6z   $��30��6�   $	��293��6�   $��25(�6�   
�������$%��VCR OSD Mono [RUS by Daymarius])�6�   � 5       $
��Left=�6   $	��461��6.   $��	10,50,0,0q�6;   $	��Top=�6N   $	��161��6f   .+�5!      �� -   5        $	 	RefillBtn��5!      $��Положить��6,   $
��Left=�6?   $	��Top=�6Z   $	��161��6r   $��63��6~   
������ 
�������$%��VCR OSD Mono [RUS by Daymarius])�6�   $��30(�6�   6�   �� 5"      -   5        $	 WithdrawBtn��5"      $��
Снять��6.   $
��Left=�6>   $	��Top=�6Y   $	��161��6q   $��63��6}   $��0,63,0,0q�6�   
������ 
�������$%��VCR OSD Mono [RUS by Daymarius])�6�   $��30(�6�   6  �� 5#      -   5        $	 AuthBtn��5#      $��Войти
Выйти��6*   $
��Left=�6I   $	��Top=�6d   $	��161��6|   $��63��6�   $��	0,398,0,0q�6�   
������ 
�������$%��VCR OSD Mono [RUS by Daymarius])�6�   $��25(�6   6  �� 5$      $��Баланс:��6   
�������$
��Left=�6>   $��
10,188,0,0q�6Y   $
��Wrap=�6m   $	��Top=�6�   $��30��6�   $	��141��6�   
������ $%��VCR OSD Mono [RUS by Daymarius])�6�   $��25(�6�   �� 5%      -   5        $ 	UserMoney��5%       J� Opacity$	 100Q�6/   $�� ��6=   
�������$
��Left=�6X   $��
10,218,0,0q�6s   $
��Wrap=�6�   $	��Top=�6�   $	��175��6�   $	��141��6�   
������ $%��VCR OSD Mono [RUS by Daymarius])�6�   $��25(�6  5&      5(      5*      5-      
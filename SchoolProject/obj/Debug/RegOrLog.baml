   M S B A M L   `   `   `  ����H  DSchoolProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:SchoolProjectSchoolProject  5          SchoolProject.RegOrLog   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:SchoolProject     5        � Title$  RegOrLog��5      $	��550��6   $	��800��6%    � WindowStyle$
 None=�61    � AllowsTransparency . 
������  � 
ResizeMode$ NoResize=�6w   '  !System.Windows.Shell.WindowChrome   WindowChrome 5
        5   
      CaptionHeight$ 45Q�6   6,   .��5      ��  �� CornerRadius$ 25��6   $��1q�6   ���#444���#333._�5   
   � .+�5      ��    IsHitTestVisibleInChrome . $��45��6F   $	��Top=�6R    �� Orientation$ 
Horizontal=�6j   .+�5      �� -   5        	 ��Name$	 QuitBtn��5      $��40��6@   $��40��6K   $��
10,0,0,-10q�6W   .��5      �� $��Images/close.png��6   5      5      �� 5      -   5        
 ��Name$
 LogLoginBox��5      $��10,99,426,382q�6+    �� TextWrapping$
 Wrap=�6B   $��
Логин��6V    �� TextAlignment$ Center=�6c   $%��VCR OSD Mono [RUS by Daymarius])�6z   $��15(�6�   $��22q�6�    �� SelectionBrush �	#FFD7007F6�   �� 5      -   5        $
 LogPasswordBox��5      $��10,186,426,257q�6.   $
 Wrap=�6F   $��Пароль��6Z   $ Center=�6h   $%��VCR OSD Mono [RUS by Daymarius])�6   $��15(�6�   $��22q�6�    �	#FFD7007F6�   �� 5      -   5        $
 RegLoginBox��5      $��426,99,10,382q�6+   $
 Wrap=�6B   $��
Логин��6V   $ Center=�6c   $%��VCR OSD Mono [RUS by Daymarius])�6z   $��15(�6�   $��22q�6�    �	#FFD7007F6�   �� 5      -   5        $
 RegPasswordBox��5      $��426,186,10,257q�6.   $
 Wrap=�6F   $��Пароль��6Z   $ Center=�6h   $%��VCR OSD Mono [RUS by Daymarius])�6   $��15(�6�   $��22q�6�    �	#FFD7007F6�   �� 5      -   5        $	 LogBtn��5      $��
Войти��6%   $��10,436,426,32q�65   
������ 
�������$%��VCR OSD Mono [RUS by Daymarius])�6x   $��20(�6�   6�   �� 5      -   5        $	 RegBtn��5      $*��$Зарегистрироваться��6%   $��424,436,10,32q�6B   
������ 
�������$%��VCR OSD Mono [RUS by Daymarius])�6�   $��20(�6�   6�   �� 5      $
��Left=�6   $��	50,14,0,0q�63   $
��Wrap=�6F   $��
Войти��6Z   $	��Top=�6g   $	��282��6   $��46��6�   
������� �� TextAlignment$ Center=�6�   $%��VCR OSD Mono [RUS by Daymarius])�6�   $��35(�6�   �� 5      $
��Left=�6   $��
424,14,0,0q�63   $
��Wrap=�6G   $*��$Зарегистрироваться��6[   $	��Top=�6u   $	��364��6�   $��46��6�   
�������$ Center=�6�   $%��VCR OSD Mono [RUS by Daymarius])�6�   $��35(�6�   �� 5      -   5         ��Name$ 
RegMessage��5      $��426,316,10,0q�6,   $
��Wrap=�6B   $	��Top=�6V   $��59��6n   
�������$ Center=�6�   $%��VCR OSD Mono [RUS by Daymarius])�6�   $��14(�6�   �� 6�   $0�*Вы зарегистрировались.��6�   �� 6  �� 6  $)�#Самое время ВоЙтИ...��6  63  �� 5      -	   5        $ 
LogMessage��5      $��10,316,426,0q�6,   $
��Wrap=�6B   $	��Top=�6V   $��59��6n   
�������$ Center=�6�   $%��VCR OSD Mono [RUS by Daymarius])�6�   $��14(�6�   $5��/Введённые данные не верны��6�   5       5#      5$      
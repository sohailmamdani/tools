FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � � NOTE - the 4-second delay after each command has proven to be useful, as without those delays, there process below occasionally fails.     � 	 	   N O T E   -   t h e   4 - s e c o n d   d e l a y   a f t e r   e a c h   c o m m a n d   h a s   p r o v e n   t o   b e   u s e f u l ,   a s   w i t h o u t   t h o s e   d e l a y s ,   t h e r e   p r o c e s s   b e l o w   o c c a s i o n a l l y   f a i l s .   
  
 l     ��  ��    � ~ Set the varialble wifi_name to the output of a shell command. This should output the hardware port name of the Wi-Fi network.     �   �   S e t   t h e   v a r i a l b l e   w i f i _ n a m e   t o   t h e   o u t p u t   o f   a   s h e l l   c o m m a n d .   T h i s   s h o u l d   o u t p u t   t h e   h a r d w a r e   p o r t   n a m e   o f   t h e   W i - F i   n e t w o r k .      l     ����  r         I    �� ��
�� .sysoexecTEXT���     TEXT  m        �   � n e t w o r k s e t u p   - l i s t a l l h a r d w a r e p o r t s   |   g r e p   - A   1   W i - F i   |   s e d   - e   ' / H a r d w a r e   P o r t :   W i - F i / d '   - e   ' s / D e v i c e :   / / g '��    o      ���� 0 	wifi_name  ��  ��        l     ��  ��    + % Turn Wi-Fi off, then wait 4 seconds.     �   J   T u r n   W i - F i   o f f ,   t h e n   w a i t   4   s e c o n d s .      l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  b       !   b     " # " m    	 $ $ � % % < n e t w o r k s e t u p   - s e t a i r p o r t p o w e r   # o   	 
���� 0 	wifi_name   ! m     & & � ' '    o f f��  ��  ��     ( ) ( l    *���� * I   �� +��
�� .sysodelanull��� ��� nmbr + m    ���� ��  ��  ��   )  , - , l     �� . /��   . E ? Remove the preferred wireless network from Network Preferences    / � 0 0 ~   R e m o v e   t h e   p r e f e r r e d   w i r e l e s s   n e t w o r k   f r o m   N e t w o r k   P r e f e r e n c e s -  1 2 1 l   ! 3���� 3 I   !�� 4��
�� .sysoexecTEXT���     TEXT 4 b     5 6 5 b     7 8 7 m     9 9 � : : Z n e t w o r k s e t u p   - r e m o v e p r e f e r r e d w i r e l e s s n e t w o r k   8 o    ���� 0 	wifi_name   6 m     ; ; � < <    < W I F I N A M E >��  ��  ��   2  = > = l  " ' ?���� ? I  " '�� @��
�� .sysodelanull��� ��� nmbr @ m   " #���� ��  ��  ��   >  A B A l     �� C D��   C � | Turn off all network interfaces, because really, why not? (Kidding - I do this so that 802.1x over wired also disconnects.)    D � E E �   T u r n   o f f   a l l   n e t w o r k   i n t e r f a c e s ,   b e c a u s e   r e a l l y ,   w h y   n o t ?   ( K i d d i n g   -   I   d o   t h i s   s o   t h a t   8 0 2 . 1 x   o v e r   w i r e d   a l s o   d i s c o n n e c t s . ) B  F G F l  ( / H���� H I  ( /�� I J
�� .sysoexecTEXT���     TEXT I m   ( ) K K � L L n f o r   i   i n   $ ( i f c o n f i g   - l ) ;   d o   s u d o   i f c o n f i g   $ i   d o w n ;   d o n e J �� M��
�� 
badm M m   * +��
�� boovtrue��  ��  ��   G  N O N l  0 5 P���� P I  0 5�� Q��
�� .sysodelanull��� ��� nmbr Q m   0 1���� ��  ��  ��   O  R S R l     �� T U��   T � � Delete the password for 802.1X from Keychain. WARNING: THIS WILL DELETE ALL 802.1X PASSWORDS FROM YOUR KEYCHAIN (which may not be a bad thing).    U � V V    D e l e t e   t h e   p a s s w o r d   f o r   8 0 2 . 1 X   f r o m   K e y c h a i n .   W A R N I N G :   T H I S   W I L L   D E L E T E   A L L   8 0 2 . 1 X   P A S S W O R D S   F R O M   Y O U R   K E Y C H A I N   ( w h i c h   m a y   n o t   b e   a   b a d   t h i n g ) . S  W X W l  6 ; Y���� Y I  6 ;�� Z��
�� .sysoexecTEXT���     TEXT Z m   6 7 [ [ � \ \ j s e c u r i t y   d e l e t e - g e n e r i c - p a s s w o r d   - D   " 8 0 2 . 1 X   P a s s w o r d "��  ��  ��   X  ] ^ ] l  < A _���� _ I  < A�� `��
�� .sysodelanull��� ��� nmbr ` m   < =���� ��  ��  ��   ^  a b a l     �� c d��   c 3 - Bring all the networking interfaces back up.    d � e e Z   B r i n g   a l l   t h e   n e t w o r k i n g   i n t e r f a c e s   b a c k   u p . b  f g f l  B I h���� h I  B I�� i j
�� .sysoexecTEXT���     TEXT i m   B C k k � l l j f o r   i   i n   $ ( i f c o n f i g   - l ) ;   d o   s u d o   i f c o n f i g   $ i   u p ;   d o n e j �� m��
�� 
badm m m   D E��
�� boovtrue��  ��  ��   g  n o n l  J O p���� p I  J O�� q��
�� .sysodelanull��� ��� nmbr q m   J K���� ��  ��  ��   o  r s r l     �� t u��   t   Restart Airport    u � v v     R e s t a r t   A i r p o r t s  w x w l  P Y y���� y I  P Y�� z��
�� .sysoexecTEXT���     TEXT z b   P U { | { b   P S } ~ } m   P Q   � � � < n e t w o r k s e t u p   - s e t a i r p o r t p o w e r   ~ o   Q R���� 0 	wifi_name   | m   S T � � � � �    o n��  ��  ��   x  � � � l  Z _ ����� � I  Z _�� ���
�� .sysodelanull��� ��� nmbr � m   Z [���� ��  ��  ��   �  � � � l     �� � ���   � G A Display an alert letting the user know that the process is done.    � � � � �   D i s p l a y   a n   a l e r t   l e t t i n g   t h e   u s e r   k n o w   t h a t   t h e   p r o c e s s   i s   d o n e . �  ��� � l  ` s ����� � I  ` s�� � �
�� .sysodisAaleR        TEXT � m   ` c � � � � � 6 < C O M P A N Y N A M E >   N e t w o r k   R e s e t � �� � �
�� 
mesS � m   f i � � � � � Y o u r   n e t w o r k   s e t t i n g s   h a v e   b e e n   r e s e t .   Y o u   w i l l   n e e d   t o   r e - s e l e c t   t h e   K I X E Y E   w i r e l e s s   n e t w o r k   f r o m   t h e   W i - F i   m e n u   i n   y o u r   t o o l b a r   a n d   r e - e n t e r   y o u r   c r e d e n t i a l s .   Y o u   w i l l   a l s o   n e e d   t o   u n p l u g   a n d   p l u g   i n   y o u r   e t h e r n e t   c a b l e   i f   y o u   a r e   c o n n e c t e d   p h y s i c a l l y   t o   t h e   n e t w o r k . � �� ���
�� 
btns � m   l o � � � � �  O k��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     s � �   � �   � �  ( � �  1 � �  = � �  F � �  N � �  W � �  ] � �  f � �  n � �  w � �  � � �  �����  ��  ��   �   �  ���� $ &���� 9 ; K���� [ k  � ��� ��� ���
�� .sysoexecTEXT���     TEXT�� 0 	wifi_name  �� 
�� .sysodelanull��� ��� nmbr
�� 
badm�� 
�� 
mesS
�� 
btns
�� .sysodisAaleR        TEXT�� t�j E�O��%�%j O�j O��%�%j O�j O��el O�j O�j O�j O��el O�j O��%�%j O�j Oa a a a a � ascr  ��ޭ
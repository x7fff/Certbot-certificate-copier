FasdUAS 1.101.10   ��   ��    k             l        	  x     �� 
 ��   
 1      ��
�� 
ascr  �� ��
�� 
minv  m         �    2 . 4��       Yosemite (10.10) or later    	 �   4   Y o s e m i t e   ( 1 0 . 1 0 )   o r   l a t e r      x    �� ����    2  	 ��
�� 
osax��        l     ��������  ��  ��        l      ��  ��   �� 
	Some useful references 
	��https://developer.apple.com/library/content/documentation/AppleScript/Conceptual/AppleScriptLangGuide/conceptual/ASLR_about_handlers.html	� https://stackoverflow.com/questions/33035959/optional-parameters-in-applescript-handlers	� https://discussions.apple.com/docs/DOC-6681
		Files we're looking for, if site name is example.com
	��/etc/letsencrypt/live/example.com/cert.pem	��/etc/letsencrypt/live/example.com/privkey.pem
	��@TODO are they always .pem's?     �  �   
 	 S o m e   u s e f u l   r e f e r e n c e s   
 	 " � h t t p s : / / d e v e l o p e r . a p p l e . c o m / l i b r a r y / c o n t e n t / d o c u m e n t a t i o n / A p p l e S c r i p t / C o n c e p t u a l / A p p l e S c r i p t L a n g G u i d e / c o n c e p t u a l / A S L R _ a b o u t _ h a n d l e r s . h t m l  	 "   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 3 3 0 3 5 9 5 9 / o p t i o n a l - p a r a m e t e r s - i n - a p p l e s c r i p t - h a n d l e r s  	 "   h t t p s : / / d i s c u s s i o n s . a p p l e . c o m / d o c s / D O C - 6 6 8 1 
 	  	 F i l e s   w e ' r e   l o o k i n g   f o r ,   i f   s i t e   n a m e   i s   e x a m p l e . c o m 
 	 " � / e t c / l e t s e n c r y p t / l i v e / e x a m p l e . c o m / c e r t . p e m  	 " � / e t c / l e t s e n c r y p t / l i v e / e x a m p l e . c o m / p r i v k e y . p e m 
 	 " � @ T O D O   a r e   t h e y   a l w a y s   . p e m ' s ?       l     ��������  ��  ��        j    �� ��  0 certfolderbase certFolderBase  m       �     , / e t c / l e t s e n c r y p t / l i v e /   ! " ! j    �� #�� *0 filenamecertificate fileNameCertificate # m     $ $ � % %  c e r t . p e m "  & ' & j    �� (�� (0 filenameprivatekey fileNamePrivateKey ( m     ) ) � * *  p r i v k e y . p e m '  + , + l     ��������  ��  ��   ,  - . - j    &�� /��  0 msgpleasecheck msgPleaseCheck / b    % 0 1 0 b    # 2 3 2 b    ! 4 5 4 b     6 7 6 o    ��
�� 
ret  7 o    ��
�� 
ret  5 m      8 8 � 9 9 f C h e c k   t h e   v a l i d i t y   o f   t h e   s i t e  s   s u b - f o l d e r   u n d e r    3 o   ! "����  0 certfolderbase certFolderBase 1 m   # $ : : � ; ;   . .  < = < j   ' +�� >�� "0 msgnositesfound msgNoSitesFound > b   ' * ? @ ? m   ' ( A A � B B : N o   e l i g i b l e   s i t e s   w e r e   f o u n d . @ o   ( )����  0 msgpleasecheck msgPleaseCheck =  C D C l     ��������  ��  ��   D  E F E j   , 0�� G�� (0 msggotcertificate0 msgGotCertificate0 G m   , / H H � I I F T h e   s e c u r i t y   c e r t i f i c a t e   f o r   s i t e    F  J K J j   1 =�� L�� (0 msggotcertificate1 msgGotCertificate1 L b   1 < M N M b   1 8 O P O b   1 6 Q R Q m   1 4 S S � T T 4    i s   n o w   o n   t h e   c l i p b o a r d . R o   4 5��
�� 
ret  P o   6 7��
�� 
ret  N l 	 8 ; U���� U m   8 ; V V � W W � A f t e r   y o u   h a v e   d e a l t   w i t h   t h a t ,   p r e s s    C o n t i n u e    t o   c o p y   t h e   p r i v a t e   k e y   t o   t h e   c l i p b o a r d .��  ��   K  X Y X l     ��������  ��  ��   Y  Z [ Z j   > D�� \�� .0 msgmissingcertificate msgMissingCertificate \ b   > C ] ^ ] m   > A _ _ � ` ` P T h e   c e r t i f i c a t e   f i l e   c o u l d   n o t   b e   f o u n d . ^ o   A B����  0 msgpleasecheck msgPleaseCheck [  a b a j   E I�� c�� 80 msgcertificateformatfailed msgCertificateFormatFailed c m   E H d d � e e b T h e   c e r t i f i c a t e   f i l e   i s   n o t   i n   t h e   p r o p e r   f o r m a t . b  f g f l     ��������  ��  ��   g  h i h j   J N�� j�� $0 msggotprivatekey msgGotPrivateKey j m   J M k k � l l ^ T h e   s i t e  s   p r i v a t e   k e y   i s   n o w   o n   t h e   c l i p b o a r d . i  m n m j   O U�� o�� ,0 msgmissingprivatekey msgMissingPrivateKey o b   O T p q p m   O R r r � s s P T h e   p r i v a t e   k e y   f i l e   c o u l d   n o t   b e   f o u n d . q o   R S����  0 msgpleasecheck msgPleaseCheck n  t u t j   V Z�� v�� 60 msgprivatekeyformatfailed msgPrivateKeyFormatFailed v m   V Y w w � x x b T h e   p r i v a t e   k e y   f i l e   i s   n o t   i n   t h e   p r o p e r   f o r m a t . u  y z y l     ��������  ��  ��   z  { | { l     ��������  ��  ��   |  } ~ } i   [ ^  �  I     ������
�� .aevtoappnull  �   � ****��  ��   � k    � � �  � � � r      � � � m     ��
�� boovfals � o      ���� 0 
bcancelled 
bCancelled �  � � � l   ��������  ��  ��   �  � � � r     � � � I    	��������  0 getsitefolders getSiteFolders��  ��   � o      ���� 0 sitefolders siteFolders �  ��� � Z   � � ����� � >    � � � o    ���� 0 sitefolders siteFolders � m    ��
�� boovfals � k   � � �  � � � Z    [ � � � � � l    ����� � =    � � � n     � � � 1    ��
�� 
leng � o    ���� 0 sitefolders siteFolders � m    ����  ��  ��   � k    - � �  � � � O   ) � � � I    (�� ����� 0 quitmessage_ quitMessage_ �  ��� � o    $���� "0 msgnositesfound msgNoSitesFound��  ��   �  f     �  ��� � r   * - � � � m   * +��
�� boovtrue � o      ���� 0 
bcancelled 
bCancelled��   �  � � � l  0 5 ����� � =  0 5 � � � n   0 3 � � � 1   1 3��
�� 
leng � o   0 1���� 0 sitefolders siteFolders � m   3 4���� ��  ��   �  ��� � r   8 > � � � n   8 < � � � 4   9 <�� �
�� 
cobj � m   : ;����  � o   8 9���� 0 sitefolders siteFolders � o      ���� 0 site  ��   � k   A [ � �  � � � I  A H�� � �
�� .gtqpchltns    @   @ ns   � o   A B���� 0 sitefolders siteFolders � �� ���
�� 
prmp � m   C D � � � � �  C h o o s e   t h e   s i t e��   �  ��� � Z   I [ � ��� � � >  I L � � � l  I J ����� � 1   I J��
�� 
rslt��  ��   � m   J K��
�� boovfals � r   O U � � � n   O S � � � 4   P S�� �
�� 
cobj � m   Q R����  � l  O P ����� � 1   O P��
�� 
rslt��  ��   � o      ���� 0 site  ��   � r   X [ � � � m   X Y��
�� boovtrue � o      ���� 0 
bcancelled 
bCancelled��   �  � � � l  \ \��������  ��  ��   �  ��� � Z   \� � ����� � H   \ ^ � � o   \ ]���� 0 
bcancelled 
bCancelled � k   a� � �  � � � r   a l � � � b   a j � � � b   a h � � � o   a f����  0 certfolderbase certFolderBase � o   f g���� 0 site   � m   h i � � � � �  / � o      ���� 0 
certfolder 
certFolder �  � � � l  m m��������  ��  ��   �  � � � l  m m�� � ���   � &   try to get the site certificate    � � � � @   t r y   t o   g e t   t h e   s i t e   c e r t i f i c a t e �  � � � r   m | � � � I  m z���� ��� "0 getfilecontents getFileContents��   � � ��~
� 
for  � b   o v � � � o   o p�}�} 0 
certfolder 
certFolder � o   p u�|�| *0 filenamecertificate fileNameCertificate�~   � o      �{�{ 0 filecontents fileContents �  � � � l  } }�z�y�x�z  �y  �x   �  ��w � Z   }� � � � � � =  } � � � � o   } ~�v�v 0 filecontents fileContents � m   ~ �u
�u boovfals � O  � � � � � I   � ��t ��s�t 0 quitmessage_ quitMessage_ �  ��r � o   � ��q�q .0 msgmissingcertificate msgMissingCertificate�r  �s   �  f   � � �  � � � G   � � � � � =  � � � � � l  � � ��p�o � n   � � �  � 1   � ��n
�n 
leng  o   � ��m�m 0 filecontents fileContents�p  �o   � m   � ��l�l   � H   � � E   � � l  � ��k�j n   � � 4  � ��i
�i 
cpar m   � ��h�h  o   � ��g�g 0 filecontents fileContents�k  �j   m   � � �		 " B E G I N   C E R T I F I C A T E � 
�f
 O  � � I   � ��e�d�e 0 quitmessage_ quitMessage_ �c o   � ��b�b 80 msgcertificateformatfailed msgCertificateFormatFailed�c  �d    f   � ��f   � k   ��  I  � ��a�`
�a .JonspClpnull���     **** o   � ��_�_ 0 filecontents fileContents�`    I  � ��^
�^ .sysodlogaskr        TEXT b   � � b   � � o   � ��]�] (0 msggotcertificate0 msgGotCertificate0 o   � ��\�\ 0 site   o   � ��[�[ (0 msggotcertificate1 msgGotCertificate1 �Z
�Z 
disp m   � ��Y
�Y stic    �X
�X 
btns J   � �  !  m   � �"" �##  C a n c e l! $�W$ m   � �%% �&&  C o n t i n u e�W   �V'�U
�V 
dflt' m   � �(( �))  C o n t i n u e�U   *+* l  � ��T�S�R�T  �S  �R  + ,-, l  � ��Q./�Q  . !  now do the Private Key				   / �00 6   n o w   d o   t h e   P r i v a t e   K e y 	 	 	 	- 121 r   �343 I  � ��P�O5�P "0 getfilecontents getFileContents�O  5 �N6�M
�N 
for 6 b   � �787 o   � ��L�L 0 
certfolder 
certFolder8 o   � ��K�K (0 filenameprivatekey fileNamePrivateKey�M  4 o      �J�J 0 filecontents fileContents2 9:9 l �I�H�G�I  �H  �G  : ;�F; Z  �<=>?< = @A@ o  �E�E 0 filecontents fileContentsA m  �D
�D boovfals= O BCB I  �CD�B�C 0 quitmessage_ quitMessage_D E�AE o  �@�@ ,0 msgmissingprivatekey msgMissingPrivateKey�A  �B  C  f  	> FGF G  1HIH = JKJ l L�?�>L n  MNM 1  �=
�= 
lengN o  �<�< 0 filecontents fileContents�?  �>  K m  �;�;  I H  "-OO E  ",PQP l "(R�:�9R n  "(STS 4 #(�8U
�8 
cparU m  &'�7�7 T o  "#�6�6 0 filecontents fileContents�:  �9  Q m  (+VV �WW " B E G I N   P R I V A T E   K E YG X�5X O 4CYZY I  8B�4[�3�4 0 quitmessage_ quitMessage_[ \�2\ o  9>�1�1 60 msgprivatekeyformatfailed msgPrivateKeyFormatFailed�2  �3  Z  f  45�5  ? k  F�]] ^_^ I FK�0`�/
�0 .JonspClpnull���     ****` o  FG�.�. 0 filecontents fileContents�/  _ aba I Ln�-cd
�- .sysodlogaskr        TEXTc o  LQ�,�, $0 msggotprivatekey msgGotPrivateKeyd �+ef
�+ 
dispe m  TW�*
�* stic   f �)gh
�) 
btnsg J  Zbii jkj m  Z]ll �mm 0 C l e a r   C l i p b o a r d   a n d   Q u i tk n�(n m  ]`oo �pp  Q u i t�(  h �'q�&
�' 
dfltq m  ehrr �ss  Q u i t�&  b t�%t Z  o�uv�$�#u > oxwxw n  otyzy 1  pt�"
�" 
bhitz l op{�!� { 1  op�
� 
rslt�!  �   x m  tw|| �}}  Q u i tv I {��~�
� .JonspClpnull���     ****~ m  {~ ���  �  �$  �#  �%  �F  �w  ��  ��  ��  ��  ��  ��   ~ ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i   _ b��� I      ���� 40 onebuttonmessage_button_ oneButtonMessage_button_� ��� o      �� 0 msg  � ��� o      �� 0 btn  �  �  � I    ���
� .sysodlogaskr        TEXT� o     �� 0 msg  � ���
� 
disp� m    �
� stic   � ���
� 
btns� o    �� 0 btn  � ���

� 
dflt� m    �	�	 �
  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i   c f��� I      ���� 0 quitmessage_ quitMessage_� �� � o      ���� 0 msg  �   �  � O    ��� I    ������� 40 onebuttonmessage_button_ oneButtonMessage_button_� ��� o    ���� 0 msg  � ���� m    �� ���  Q u i t��  ��  �  f     � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � v p @return - false if they cancelled the authentication dialogue, else a list of zero or more site (folder) names   � ��� �   @ r e t u r n   -   f a l s e   i f   t h e y   c a n c e l l e d   t h e   a u t h e n t i c a t i o n   d i a l o g u e ,   e l s e   a   l i s t   o f   z e r o   o r   m o r e   s i t e   ( f o l d e r )   n a m e s � ��� i  g j��� I      ��������  0 getsitefolders getSiteFolders��  ��  � k     /�� ��� r     ��� m     ��
�� boovfals� o      ���� 0 rtn  � ��� r    ��� I   ������� 0 sudocommand sudoCommand��  � �����
�� 
for � b    ��� m    �� ���  l s  � o    ����  0 certfolderbase certFolderBase��  � o      ���� 0 
dirlisting 
dirListing� ��� I   �����
�� .ascrcmnt****      � ****� J    �� ��� m    �� ���  " d i r L i s t i n g "� ���� o    ���� 0 
dirlisting 
dirListing��  ��  � ��� l   ��������  ��  ��  � ��� Z    ,������� >    ��� o    ���� 0 
dirlisting 
dirListing� m    ��
�� boovfals� l  # (���� r   # (��� n   # &��� 2   $ &��
�� 
cpar� o   # $���� 0 
dirlisting 
dirListing� o      ���� 0 rtn  �   convert to a list   � ��� $   c o n v e r t   t o   a   l i s t��  ��  � ��� l  - -��������  ��  ��  � ���� L   - /�� o   - .���� 0 rtn  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i  k n��� I      ������� "0 getfilecontents getFileContents��  � �����
�� 
for � o      ���� 0 filepath filePath��  � L     
�� I    	������� 0 sudocommand sudoCommand��  � �����
�� 
for � b    ��� m    �� ���  c a t  � o    ���� 0 filepath filePath��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � � @return - false if there was an error (not the shell�s error code), otherwise the output of the command as provided by do shell script   � ���   @ r e t u r n   -   f a l s e   i f   t h e r e   w a s   a n   e r r o r   ( n o t   t h e   s h e l l  s   e r r o r   c o d e ) ,   o t h e r w i s e   t h e   o u t p u t   o f   t h e   c o m m a n d   a s   p r o v i d e d   b y   d o   s h e l l   s c r i p t � ��� i  o r��� I      ������� 0 sudocommand sudoCommand��  � �����
�� 
for � o      ���� 0 
thecommand 
theCommand��  � k     ?��    r      m     ��
�� boovfals o      ���� 0 shellresult shellResult  Q    < t    	
	 r   	  I  	 ��
�� .sysoexecTEXT���     TEXT l 
 	 
���� o   	 
���� 0 
thecommand 
theCommand��  ��   ��
�� 
prmp m     � � A n   a d m i n i s t r a t o r   p a s s w o r d   i s   r e q u i r e d   t o   a c c e s s   t h e   C e r t b o t   s i t e   c e r t i f i c a t e ( s ) . ����
�� 
badm m    ��
�� boovtrue��   o      ���� 0 shellresult shellResult
 m    ����  R      ��
�� .ascrerr ****      � **** o      ���� 0 errmsg errMsg ����
�� 
errn o      ���� 0 	errnumber 	errNumber��   Z    <���� >     o    ���� 0 	errnumber 	errNumber m    ������ l  # 8 I  # 8�� 
�� .sysodlogaskr        TEXT b   # .!"! b   # ,#$# b   # *%&% b   # ('(' b   # &)*) m   # $++ �,, D A   u n e x p e c t e d   e r r o r   h a s   o c c u r r e d .   (* o   $ %���� 0 	errnumber 	errNumber( m   & '-- �..  )& o   ( )��
�� 
ret $ o   * +��
�� 
ret " o   , -���� 0 errmsg errMsg  ��/0
�� 
btns/ J   / 211 2��2 m   / 033 �44  O k a y��  0 ��5��
�� 
dflt5 m   3 466 �77  O k a y��     userCanceledErr    �88     u s e r C a n c e l e d E r r��  ��   9:9 l  = =��������  ��  ��  : ;��; L   = ?<< o   = >���� 0 shellresult shellResult��  � =��= l     ��������  ��  ��  ��       ��>?  $ )@A HBC d kD wEFGHIJ��  > �������������������������������������
�� 
pimr��  0 certfolderbase certFolderBase�� *0 filenamecertificate fileNameCertificate�� (0 filenameprivatekey fileNamePrivateKey��  0 msgpleasecheck msgPleaseCheck�� "0 msgnositesfound msgNoSitesFound�� (0 msggotcertificate0 msgGotCertificate0�� (0 msggotcertificate1 msgGotCertificate1�� .0 msgmissingcertificate msgMissingCertificate�� 80 msgcertificateformatfailed msgCertificateFormatFailed�� $0 msggotprivatekey msgGotPrivateKey�� ,0 msgmissingprivatekey msgMissingPrivateKey�� 60 msgprivatekeyformatfailed msgPrivateKeyFormatFailed
�� .aevtoappnull  �   � ****�� 40 onebuttonmessage_button_ oneButtonMessage_button_�� 0 quitmessage_ quitMessage_��  0 getsitefolders getSiteFolders�� "0 getfilecontents getFileContents� 0 sudocommand sudoCommand? �~K�~ K  LML �} �|
�} 
vers�|  M �{N�z
�{ 
cobjN OO   �y
�y 
osax�z  @ �PP �   C h e c k   t h e   v a l i d i t y   o f   t h e   s i t e  s   s u b - f o l d e r   u n d e r    / e t c / l e t s e n c r y p t / l i v e /  .A �QQ � N o   e l i g i b l e   s i t e s   w e r e   f o u n d .   C h e c k   t h e   v a l i d i t y   o f   t h e   s i t e  s   s u b - f o l d e r   u n d e r    / e t c / l e t s e n c r y p t / l i v e /  .B �RR �    i s   n o w   o n   t h e   c l i p b o a r d .   A f t e r   y o u   h a v e   d e a l t   w i t h   t h a t ,   p r e s s    C o n t i n u e    t o   c o p y   t h e   p r i v a t e   k e y   t o   t h e   c l i p b o a r d .C �SS � T h e   c e r t i f i c a t e   f i l e   c o u l d   n o t   b e   f o u n d .   C h e c k   t h e   v a l i d i t y   o f   t h e   s i t e  s   s u b - f o l d e r   u n d e r    / e t c / l e t s e n c r y p t / l i v e /  .D �TT � T h e   p r i v a t e   k e y   f i l e   c o u l d   n o t   b e   f o u n d .   C h e c k   t h e   v a l i d i t y   o f   t h e   s i t e  s   s u b - f o l d e r   u n d e r    / e t c / l e t s e n c r y p t / l i v e /  .E �x ��w�vUV�u
�x .aevtoappnull  �   � ****�w  �v  U  V $�t�s�r�q�p�o�n�m ��l�k ��j�i�h�g�f�e�d�c�b�a"%�`(�_�^Vlor�]|�t 0 
bcancelled 
bCancelled�s  0 getsitefolders getSiteFolders�r 0 sitefolders siteFolders
�q 
leng�p 0 quitmessage_ quitMessage_
�o 
cobj�n 0 site  
�m 
prmp
�l .gtqpchltns    @   @ ns  
�k 
rslt�j 0 
certfolder 
certFolder
�i 
for �h "0 getfilecontents getFileContents�g 0 filecontents fileContents
�f 
cpar
�e 
bool
�d .JonspClpnull���     ****
�c 
disp
�b stic   
�a 
btns
�` 
dflt�_ 
�^ .sysodlogaskr        TEXT
�] 
bhit�u�fE�O*j+ E�O�f}��,j  ) *b  k+ UOeE�Y -��,k  ��k/E�Y ���l 	O�f ��k/E�Y eE�O�*b  �%�%E�O*��b  %l E�O�f  ) *b  k+ UY ���,j 
 �a k/a a & ) *b  	k+ UY ��j Ob  �%b  %a a a a a lva a a  O*��b  %l E�O�f  ) *b  k+ UY n��,j 
 �a k/a a & ) *b  k+ UY B�j Ob  
a a a a a lva a  a  O�a !,a " a #j Y hY hY hF �\��[�ZWX�Y�\ 40 onebuttonmessage_button_ oneButtonMessage_button_�[ �XY�X Y  �W�V�W 0 msg  �V 0 btn  �Z  W �U�T�U 0 msg  �T 0 btn  X �S�R�Q�P�O�N
�S 
disp
�R stic   
�Q 
btns
�P 
dflt�O 
�N .sysodlogaskr        TEXT�Y �����k� G �M��L�KZ[�J�M 0 quitmessage_ quitMessage_�L �I\�I \  �H�H 0 msg  �K  Z �G�G 0 msg  [ ��F�F 40 onebuttonmessage_button_ oneButtonMessage_button_�J ) 	*��l+ UH �E��D�C]^�B�E  0 getsitefolders getSiteFolders�D  �C  ] �A�@�A 0 rtn  �@ 0 
dirlisting 
dirListing^ �?��>��=�<
�? 
for �> 0 sudocommand sudoCommand
�= .ascrcmnt****      � ****
�< 
cpar�B 0fE�O*��b  %l E�O�lvj O�f 
��-E�Y hO�I �;��:�9_`�8�; "0 getfilecontents getFileContents�:  �9 �7�6�5
�7 
for �6 0 filepath filePath�5  _ �4�4 0 filepath filePath` �3��2
�3 
for �2 0 sudocommand sudoCommand�8 *��%l J �1��0�/ab�.�1 0 sudocommand sudoCommand�0  �/ �-�,�+
�- 
for �, 0 
thecommand 
theCommand�+  a �*�)�(�'�* 0 
thecommand 
theCommand�) 0 shellresult shellResult�( 0 errmsg errMsg�' 0 	errnumber 	errNumberb �&�%�$�#�"�!c� +-��3�6��& 
�% 
prmp
�$ 
badm�# 
�" .sysoexecTEXT���     TEXT�! 0 errmsg errMsgc ���
� 
errn� 0 	errnumber 	errNumber�  � ��
� 
ret 
� 
btns
� 
dflt
� .sysodlogaskr        TEXT�. @fE�O �n����e� E�oW &X  �� �%�%�%�%�%��kv��� Y hO�ascr  ��ޭ
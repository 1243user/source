@echo off
mode con cols=80 lines=8
title -����-
set a=��&set b=69&set c=%% 
set space= 
:start
set a=%a%��
set/a b-=2
set/a num+=3
if %num%==12 set/a b-=1
call set space=%%space:~0,%b%%%
if %num% gtr 100 set num=�������&&set c=
echo.
echo.
color 1f
echo                        ���ݸ�����,����΢�ȴ�һ��......
echo  ������������������������������������������������������������������������������
echo  ��%a%%space%%num%%c%��
echo  ������������������������������������������������������������������������������
if "%num%" neq "�������" cls&goto start
cls


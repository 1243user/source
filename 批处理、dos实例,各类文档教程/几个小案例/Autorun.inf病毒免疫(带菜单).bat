@echo off
color 2f
title AutoRun.inf ��������/������� Сͷ�ְ�����      E-mail: sdytfhzqd@126.com 

:start   
cls
echo.
echo �Զ�����(AutoRun.inf)�������߹���
echo.
echo.
echo [1] �����д��̽�������
echo [2] ȡ�����д��̵�����
echo [3] �ֶ�ѡ����̣����в�������
echo [0] �˳�
echo.

set /p choice= ��ѡ��(1/2/3/0):
if "%choice%"=="1" goto menuall
if "%choice%"=="2" goto menudel
if "%choice%"=="3" goto select
if "%choice%"=="0" exit
goto exit

:menuall
cls
echo ���ڽ���autorun���ߡ���
for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do md %%a:\autorun.inf & md %%a:\autorun.inf\�����ļ���..\ & attrib +h +r +s +a %%a:\autorun.inf 
pause>nul
goto start

:menudel
cls
echo ���autorun���ߡ���
for %%a in (c d e f g h i j k l m n) do rd %%a:\autorun.inf\�����ļ���..\ & attrib -h -r -s -a %%a:\autorun.inf & rd %%a:\autorun.inf
pause>nul
goto start

:select
cls
:restart
set /p pan= ��ѡ���̷�(C-Z)����������̷���������,�˳���0:
if "%pan%"=="0" exit
md %pan%:\autorun.inf
md %pan%:\autorun.inf\�����ļ���..\
attrib +s +h +r %pan%:\autorun.inf
echo.
goto restart

:exit

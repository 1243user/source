@echo off 
title ���www.deepin.org��Ʒ
color f2
mode con: cols=45 lines=25 

:start 
cls 
echo. 
ECHO    # �����ļ�ϵͳ���Ժ��������������� # 
echo. 
ECHO               newstayking����

echo. 
echo. 
ECHO ��ѡ��Ҫ���еĲ�����Ȼ�󰴻س�����ʼ!

echo.
echo   �����ļ����ļ���ϵͳ���������ԡ�������1 
echo. 
echo   ȥ���ļ����ļ���ϵͳ���������ԡ�������2 
echo. 
echo   �˳�����������������������������������3 

echo. 
@set /p UserSelection=ѡ�� ( 1 , 2 ) 
if %UserSelection% LEQ 3 if %UserSelection% GEQ 1 goto selection 
goto start 

:selection 
@if "%UserSelection%"=="1" set selection=����
@if "%UserSelection%"=="2" set selection=ȥ��
@if "%UserSelection%"=="3" goto endall 


:name 
cls 
echo. 
ECHO    # ����ļ�ϵͳ���Ժ��������������� # 
echo. 
ECHO               newstayking����
echo. 
echo. 
echo ͬĿ¼�������ļ����ļ���%selection%���ԡ������س��� 
echo. 
echo �˳���������������������������������������Q 
echo. 
echo ������Ҫ%selection%���Ե��ļ�ȫ����������չ�������������ͬĿ¼������������·���� 
set /p name= 
if "%name%"=="q" goto endall 
if not exist %name% goto none 
if "%UserSelection%"=="1" goto add 
if "%UserSelection%"=="2" goto minus 



:none 
cls 
echo. 
echo. 
echo �Ҳ���%name%�ļ�,��ȷ���ļ�������·����ȷ 
echo. 
echo. 
pause 
goto name 


:add 
attrib -s -h %name% /d /s
attrib +s +h %name% /d /s
goto end 


:minus 
attrib -s -h * /d /s

:end 
echo. 
echo ����Ϊ�����ļ��޸����ԡ�������y 
echo. 

@set /p UserSelection2=����Ϊ�����ļ��޸����ԣ��� y ��n�� 
@if "%UserSelection2%"=="y" goto start 

:endall 
cls 
echo. 
echo. 
echo. 
echo. 

echo �밴������˳��� 
pause>nul
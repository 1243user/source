@echo off
mode con cols=45 lines=10
echo.
title ���ܻ����CMD
echo           [1] �� 1 ������CMD����
echo           [2] �� 2 ����CMD����
echo           [Q] ������������˳�
echo.
SET verybat=
SET /P verybat=      ��ѡ��Ҫ���еĲ�����  
IF /I "%verybat:~0,1%"=="1" GOTO 1
IF /I "%verybat:~0,1%"=="2" GOTO 2
exit
:1
echo @echo off>%SystemRoot%\system32\verybat.bat
echo set /p pass=���������룺>>%SystemRoot%\system32\verybat.bat
echo if %%pass%%==jb51 goto ok>>%SystemRoot%\system32\verybat.bat
echo exit>>%SystemRoot%\system32\verybat.bat
echo   : ok>>%SystemRoot%\system32\verybat.bat
reg add "HKLM\SOFTWARE\Microsoft\Command Processor" /v AutoRun /t reg_sz /d %SystemRoot%\system32\verybat.bat /f >nul 2>nul
cls
echo.&echo       ��лʹ�ã��ѳɹ����ܡ�
pause >nul
exit
:2
reg delete "HKLM\SOFTWARE\Microsoft\Command Processor" /v AutoRun /f >nul 2>nul
reg add "HKLM\SOFTWARE\Microsoft\Command Processor" /v AutoRun /t reg_sz /f
del /q %SystemRoot%\system32\verybat.bat >nul 2>nul
cls
echo.&echo       ��лʹ�ã��ѳɹ����ܡ�
pause >nul
exit
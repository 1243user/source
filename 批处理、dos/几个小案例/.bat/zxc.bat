@echo off
title �ǳ�����������̳ר��-��-��-��-1.0��
color B2
mode con: cols=50 lines=20
:hi
cls
echo.
echo       =========================
echo.
echo.             1.��д����
echo.
echo              2.�鿴����
echo.
echo              3.ɾ������
echo.
echo              4.�˳�����
echo.
echo       =========================
echo.
SET /P INPUT="   ���������������ֲ��س���"
IF /I "%INPUT%"=="1" ( goto a )
IF /I "%INPUT%"=="2" ( goto b )
IF /I "%INPUT%"=="3" ( goto c )
IF /I "%INPUT%"=="4" ( exit )
:a
cls
echo.
echo  %date% %time%
SET /P ly=����������:
echo %date% %time% ������ >>���Ա�.bat
echo.%ly% >>���Ա�.bat
start ���Ա�.bat
pause
goto hi
:b
cls
type ���Ա�.bat
pause
goto hi
:c
del ���Ա�.bat
goto hi

@echo off
title �̷���ӱ���ͼ
echo ******************************************************************************
echo *                                                  *
echo *              ��ӭʹ�� �����ơ� ������            *
echo *                                                  *
echo ******************************************************************************
echo.
color 0A
echo ˵��:
echo.
echo ����Ʒ��ȫ�������������ṩ������д��
echo.
echo ��Ҫ�Ƿ�����ʹ��
echo.
echo ����Ҫ�ǽ�����������..�ҵ������ɸ�
echo.
echo ϣ������ܹ�ϲ��~
echo.
echo ���� QQ:251835075
echo.
echo �밴�س���
pause>nul
cls
echo *****************************************************************************
echo *                                                  *
echo *            ѡ �� �� �� �� �� ʽ                  *
echo *                                                  *
echo *****************************************************************************
echo.
echo.
echo ���� 1 �󰴻س���, ����̷�����ͼ
echo ���� 2 �󰴻س���, ����̷�����ͼ
echo ���� 3 �󰴻س���, �˳�
echo.
@set /p start=��ѡ�� (1��2��3��=�˳�) �󰴻س���: 
if "%start%"=="1" goto 1
if "%start%"=="2" goto 2 
if "%start%"=="3" goto 3 

:1
set /p sky=��ѡ������ļ��б���ͼλ�ӣ�
set /p cn=����ѡ�񱳾�ͼ��λ�ӣ�
echo [ExtShellFolderViews] >%sky%:\desktop.ini
echo {BE098140-A513-11D0-A3A4-00C04FD706EC}={BE098140-A513-11D0-A3A4-00C04FD706EC} >>%sky%:\desktop.ini
echo [{BE098140-A513-11D0-A3A4-00C04FD706EC}] >>%sky%:\desktop.ini
echo Attributes=1 >>%sky%:\desktop.ini
echo IconArea_Image=%cn%.jpg >>%sky%:\desktop.ini
echo [.ShellClassInfo] >>%sky%:\desktop.ini
echo ConfirmFileOp=0 >>%sky%:\desktop.ini
start %sky%:\
attrib %sky%:\desktop.ini +r +s +h
echo �����������
pause>nul
exit

:2
set /p sky=������Ҫɾ������ͼ��λ�ӣ�
del %sky%:\desktop.ini /f/q/a
echo �Ѿ��ɹ�ɾ��
echo ��������˳�
pause>nul
exit

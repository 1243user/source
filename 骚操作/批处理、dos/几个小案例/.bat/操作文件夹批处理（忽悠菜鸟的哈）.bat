@echo off
title ���ߺ��ˣ���������
color 1a
set times=3
for /F "tokens=* " %%i in (c:\b) do set Pwd=%%i
set abc=%Pwd:~0,11% 
set Pwd="%Pwd:~-3%"
echo ���ߺ��ˣ���������
set /p ming=
if %ming%==������ goto again
if %ming%==�𱣻� goto again
if %ming%==�Ժ�ϼ goto again
echo ������֤ʧ��ʱ��:%date% %time%>>c:\123.log
echo ��������ֿ���:%ming%>>c:\123.log
echo %ming% ��û��˵����������أ��������� 
timeout -t 1 >nul
shutdown -s -t 10 
timeout -t 5 >nul 
exit
:again
cls
echo %date% %time% %ming% ���롣>>c:\123.log
set /p User=���
set User="%User:"=%"
if %User%==%Pwd% goto ok
set /a times=%times%-1
echo %ming% ��֤ʧ��ʱ��:%date% %time%>>c:\123.log
echo %ming% ����Ŀ���:%User%>>c:\123.log
echo %ming% �˿�״̬��Ϣ:>>c:\123.log
netstat -an|findstr "ESTABLISHED" >>c:\123.log
echo. >>c:\123.log
if %times%==0 goto end
echo %ming% ��������Ŀ������������ԣ�������%times%������Ļ��ᣡ
pause 
cls
goto again
:end
echo %ming% �����ο���ȫ����Ĳ����ѱ���¼��
pause
exit
:ok
set /a abc= 3-%times%+1
echo %ming% ��֤������ȷʱ��:%date% %time%>>c:\123.log
echo %ming% ��֤ %abc% �κ�������ȷ >>c:\123.log
echo. >>c:\123.log
cls
:zhu
cls
title ���˵�
echo �q�������������r
echo ��1.���ļ��Щ�
echo ��2.ɾ���ļ��Щ�
echo ��3.��      ����
echo �t�������������s
echo.
set /p xuan=��ѡ��
if %xuan%==1 goto open
if %xuan%==2 goto del
if %xuan%==3 goto bye
echo �޷�ʶ�� %xuan% �����������롣
echo %ming% ���Ʊ��ļ�ʱ�����ļ�%date% %time% �޷�ʶ�� %xuan% >>c:\123.log
echo �����������
pause>nul
goto zhu
:open
start d:\123..\ && echo �򿪳ɹ�����ʾ�����ļ���Ҫ���������ط��ſ��Դ򿪰��� && echo %ming% %date% %time% ���ļ��С�>>c:\123.log
echo �����������
pause>nul
goto zhu
:del
set /p del=���Ҫɾ����y/n����
if %del%==y goto y
echo ����������ء�
pause>nul
goto ok
:y
echo %ming% %date% %time% ��ͼɾ���ļ���>>c:\123.log
set /p d=Ϊ�˱����ļ��а�ȫ��֤�����ݣ�
if %d%==%abc% goto shan
echo %ming% %date% %time% ��ͼɾ�ļ��У����ǲ�֪������������������ %d% >>c:\123.log
echo %ming% ����֪�����ﻹҪɾ���ļ����������
shutdown -s -t 10
pause>nul
exit
:shan
cls
echo ����ɾ��
echo %ming% %date% %time% ɾ�����ļ���>>c:\123.log
timeout -t 2 >nul
cls
rd d:\123..\
echo ɾ���ɹ�
echo �������ɾ��������
pause>nul
del %0
exit
:bye
echo %ming% %date% %time% �ر��˳���>>c:\123.log
echo %ming% ����ӭ�´�����ʹ�ã��ټ�!
timeout -t 2 >nul
exit
























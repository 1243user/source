@ECHO off
cls
color f0
echo.
echo.
ECHO                �������ļ�(.bat .cmd)���ܹ���
echo.
echo.
echo ˵��: ������������Ҫ���ܵ��������ļ���
echo.
echo       ���ڴ��ļ���ͬĿ¼��ֱ�����롰�ļ���.bat������
echo.
echo       Ҳ���Դ�·��ָ������BAT
echo.
echo       ������ɺ����ͬĿ¼�����ɡ����ܳ�Ʒ.bat���ļ�
echo.
echo.
echo.
echo.
set /p file=��������Ҫ���ܵ��������(��+��׺)���س���(Q=�˳�):
if "%file%"=="q" goto quit
echo %file%|findstr /i "\.bat$">nul && goto go
echo %file%|findstr /i "\.cmd$">nul && goto go
cls
echo ==============
echo ����ȷ����!
echo ==============
echo.
echo.
echo ���������������......
pause>nul
goto start
:go
if not exist "%file%" goto newly
if exist encrypt.bat copy encrypt.bat encryptbak.bat
echo %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a %%%%a >"%tmp%\encrypt.tmp"
echo cls>>"%tmp%\encrypt.tmp"
type "%file%">>"%tmp%\encrypt.tmp"
setlocal enabledelayedexpansion
for %%i in ("%tmp%\encrypt.tmp") do (
     echo %%~zi >nul 2>nul
     set size=%%~zi
     set num=!size:~-1!
     set /a mod=!num!%%2
     if !mod! equ 0 (goto even) else (goto odd)
)
:even
copy "%tmp%\encrypt.tmp" ���ܳ�Ʒ.bat
del "%tmp%\encrypt.tmp"
cls
echo         ===============================
echo          ��ϲ, ��������ܳɹ�!
echo         ===============================
echo.
echo.
echo ��������˳�......
pause>nul
goto quit
:odd
echo. >>"%tmp%\encrypt.tmp"
copy "%tmp%\encrypt.tmp" ���ܳ�Ʒ.bat
del "%tmp%\encrypt.tmp"
cls
echo         ===============================
echo          ��ϲ, ��������ܳɹ�!
echo         ===============================
echo.
echo.
echo ��������˳�......
pause>nul
goto quit
:newly
cls
echo ================================
echo �Ҳ����������ļ�, ����������!
echo ================================
echo.
echo.
echo ���������ʼ......
pause>nul
goto start
:quit
exit
@echo off
title ������������\���� ** �����������  by:Ye - *
::~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
::��������::::::::::::::::::::::::::::::
::������ʽ%x%����������,ֻ������һ��
::0 mp3;1 rm;2 wma;3 asf;4 ram;5 mid;6 flash;7 mpg;8 avi;9 mpeg;10 rmvb;11 ra
set "x=2"
::��ȡ���ص�ַ�ĸ���%down_n%,��������һ�����ص�ַʧЧʱ���ǿ����ڱ�ĵ�ַ���ص�
set "down_n=2"
::�������ͬʱ����0 ;ֻ���ظ��1
set "q+c=0"
::��������0 ;����������1(����������+���ص�ʱ��������Ȼ���ٿ�ʼ����)
set "t=1"
::~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cls
if %t%*==0* if not exist mplayer.exe (
      echo ȱ���ļ�mplayer.exe
      echo �뵽http://www1.mplayerhq.hu/MPlayer/releases/win32/MPlayer-mingw32-1.0pre8.zip
      echo ��http://yx127.com/mplayer.exe����,��С7.65M
      pause>nul&goto :eof)

::~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cls
::�����ļ�����
Assoc .lrc=lrc
Ftype lrc=C:\WINDOWS\system32\notepad.exe %1
::��������::::::::::::::::::::::::::::::
echo %~p0|find /i "Rar$">nul &&(echo ��ѱ������ѹ���ļ�����ʹ��&pause>nul&goto :eof)
if not exist wget.exe (echo ȱ���ļ�wget.exe&pause>nul&goto :eof)
if not exist sed.exe (echo ȱ���ļ�sed.exe&pause>nul&goto :eof)
if not exist music.txt (
      echo ȱ���ļ�music.txt,���ֶ�д��
      echo.
      echo -----music.txt��ʽ����-------------------
      echo ����ͻ���
      echo ���ò���
      echo ......
      echo -----------------------------------------
      pause>nul&goto :eof
                        )
echo %x%|findstr "[0-9]">nul||call :xxxx
if not %x%==0 if %x:~0,1%==0 call :xxxx
if 11 lss %x% call :xxxx
echo %q+c%|findstr "[0-9]">nul||call :xxxx
if not %q+c%==0 if %q+c:~0,1%==0 call :xxxx
if 1 lss %q+c% call :xxxx
echo %t%|findstr "[0-9]">nul||call :xxxx
if not %t%==0 if %t:~0,1%==0 call :xxxx
if 1 lss %t% call :xxxx
ping -n 1 mp3.baidu.com>nul||(echo ���ȼ������,ping��ͨhttp://mp3.baidu.com&pause>nul&goto :eof)
findstr . music.txt>nul||(echo music.txt��û���κθ���&pause>nul&goto :eof)
::����%x%�Զ����ø�����ʽ%n_%
::0 mp3;1 rm;2 wma;3 asf;4 ram;5 mid;6 flash;7 mpg;8 avi;9 mpeg;10 rmvb;11 ra
if %x%==0 set x_=mp3
if %x%==1 set x_=rm
if %x%==2 set x_=wma
if %x%==3 set x_=asf
if %x%==4 set x_=ram
if %x%==5 set x_=mid
if %x%==6 set x_=flash
if %x%==7 set x_=mpg
if %x%==8 set x_=avi
if %x%==9 set x_=mpeg
if %x%==10 set x_=rmvb
if %x%==11 set x_=ra
goto test_ok
:xxxx
echo �������ô���&pause>nul&goto :eof
::~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:test_ok
cd.>xxxx.txt
::��ʼ����::::::::::::::::::::::::::::::
cls
echo ---------------------------------------------------------- 
echo �������ʼ�������и���,����������music.txt���
echo ---------------------------------------------------------- 
more<music.txt
echo ---------------------------------------------------------- 
for /f "tokens=*" %%? in ('sed "s/ //g" music.txt') do call :start "%%?"
del /q/f temp_.txt&del /q/f index.txt
cls
findstr . xxxx.txt>nul||(del /q/f xxxx.txt&echo ���и����������&pause>nul&goto :eof)
echo ���漸������û�����ص�&type xxxx.txt&del /q/f xxxx.txt&pause>nul&goto :eof

:start
cls
set "p1=http://mp3.baidu.com/m?f=ms^&tn=baidump3^&ct=134217728^&lf=^&rn=^&word="
set "p2=^&lm="
set "n=%~1"
::url_a��ֱ��baidu����������ҳ��
set "url_a=%p1%%n%%p2%%x%"
call :wget.bat "%url_a%" index.txt
find "��Ǹ��û���ҵ���" index.txt>nul &&(echo ��Ǹ,û���ҵ���"%n%"��ص�MP3����&>>xxxx.txt echo %n%&ping -n 1 127.1>nul&goto :eof)

:���ظ��
if not exist %n%.lrc (
for /f "tokens=2 delims=��" %%? in ('sed -n "/<td width=10px valign=top>1<\/td>/{n;n;n;n;n;n;n;p;}" index.txt ^|sed "s/\x22/��/g"') do (call :wget.bat "%%?" temp_.txt)
  sed -n "/<div class=\x22pad10L\x22>/{n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;p;}" temp_.txt |sed  "s/<font style=color:#e10900>//g" |sed "s/<\/font>//g" |sed "s/<br>/,/g">>%n%.lrc
  echo ����%n%.%x_%�ĸ���������
                     ) else (echo ����%n%.%x_%�ĸ���Ѿ�����)
ping -n 1 127.1>nul

if "%q+c%"=="1" (if "%t%"=="1" goto end_2)
:���ظ���
::url_b?���и������ص�ַ��ҳ��
for /l %%~ in (1,1,%down_n%) do (
     if exist %n%.%x_% goto end_2
     for /f "tokens=2 delims=��" %%? in ('sed -n "/<td width=10px valign=top>%%~<\/td>/{n;n;p;}" index.txt ^|sed "s/\x22/��/g"') do (
      set "url_b%%~=%%?"
      call :wget.bat "%%?" temp_.txt
                     )
for /f "tokens=6 delims=��" %%! in ('sed -n "/����������/{n;p;}" temp_.txt ^|sed "s/\x22/��/g"') do (
           if %t%*==0* call :mplayer.bat "%%!"
           if %q+c%*==1* goto end_2
           echo �������ظ���%n%.%x_%......
           ::�ظ�����3��,����������(��ʾ���ؽ���,Ҫ�밲�����ؼ���-q����)
           wget --output-document=%n%.%x_% --tries=3 -q "%%!"
           echo ����%n%.%x_%�������
                                                                                                       )
                                 )
:end_2
ping -n 1 127.1>nul

goto :eof

::~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
::call *.bat::::::::::::::::::::::::::::::
:wget.bat
cd.>%2
wget --output-document=%2 -q "%~1"
goto :eof

:mplayer.bat
cls
title mplayer����%~1
echo.
echo ------���ſ���-----------------------------------------------------------------
echo                  �� or ��         ���� or ��� 10 seconds
echo                  �� or ��         ���� or ��� 1  minute
echo              pgdown or pgup       ���� or ��� 10 minutes
echo                   p or �ո�       ��ͣ/���� (pause movie^)
echo            q or ESC or �س�       ����/��һ�� (stop playing and quit program^)
echo                   9 or 0          ����/��������
echo                   [ or ]          ����/���ٲ����ٶ�
echo --------------------------------------------------------------------------------
echo.
echo ------���----------------------------------------------------------------------
type %n%.lrc
echo --------------------------------------------------------------------------------
mplayer "%~1">nul
goto :eof

@echo off
title ������֮���ٳ��� ���ߣ�Ӣ�� E-mail��bizhuang0917@126.com
setlocal enabledelayedexpansion
mode con cols=40 lines=5
color 2f
echo.
set /p slt1=    ��ȷ��Ҫ��Ӣ�ۼ�����ս��(y/n)
cls
if /i not "%slt1%"=="y" goto def
:whofirst
echo.

echo             1����ս������
echo             2��Ӣ�ۼ�������
set /p slt2=
if not "%slt2%" equ "1" if not "%slt2%" equ "2" cls&echo             ����ȷ���룡��&pause&cls&goto whofirst
cls
mode con cols=45 lines=10
:people
echo                 ��ѡ������
echo.
echo            ����Խ��˼��ʱ��Խ��
echo.
echo 1������                      ����--9������
echo 2��Сʦ�� ����               ����--9~7��
echo 3����ʦ�� �ͻ�               ����--6~4��
echo 4����ʦ�� ����               ����--3~1��
echo 5����ʦ�� Ӣ��               ����--9��
set /p slt3=
cls
if %slt3%==5 echo �Բ���Ӣ������ٻؼ��չ������ˣ����½�~~��&pause&cls&goto people
if not "%slt3%" equ "1" if not "%slt3%" equ "2" if not "%slt3%" equ "3" if not "%slt3%" equ "4" (
cls
echo            ��������ȷ��������ţ�
pause
cls
goto people
)
::::::::::::::::::::::::::::::::::::::::::::::::
::���¶���һЩ����������ͼ�ν����е�Ԫ��
::::::::::::::::::::::::::::::::::::::::::::::::
:def
set ����=B C D E F G H I J K L M N
for %%i in (a %����% o) do (
    set /a bridge+=1
    set ctoi%%i=!bridge!
)
set bridge=
for %%i in (a %����% o) do (
    set /a bridge+=1
    set itoc!bridge!=%%i
)
:start
for %%i in (a %����% o) do (
    for /l %%j in (1,1,15) do (
    set my%%i%%j=*
    )
)
set A1=��
set A15=��
set O1=��
set O15=��
for /l %%i in (2,1,14) do set a%%i=��
for /l %%i in (2,1,14) do set o%%i=��
for %%i in (%����%) do set %%i1=��&set %%i15=��
for %%i in (%����%) do (
    for /l %%j in (2,1,14) do (
    set %%i%%j=��
    )
)
set round=1
set preinput=
mode con cols=61 lines=40
:::::::::::::::::::::::::::::::::::::::::::::::
::����Ϊ��������ģ��
:::::::::::::::::::::::::::::::::::::::::::::::
call:graph
:play
:blackinput
if %round% geq 100 goto nowin
if /i "%slt1%"=="y" if "%slt2%"=="2" call:ai �� b&goto whiteinput
set /p input=��%round%�֣���ڷ�����
if /i "%input%"=="restart" goto start
if "!my%input%!"=="*" (
set %input%=��
set my%input%=b
set /a round+=1
) else (
echo �����������������룡
goto blackinput)
call:graph
call:judge %input%
:whiteinput
if %round% geq 100 goto nowin
if /i "%slt1%"=="y" if "%slt2%"=="1" call:ai �� w&goto play
set /p input=��%round%�֣���׷�����
if /i "%input%"=="restart" goto start
if "!my%input%!"=="*" (
set %input%=��
set my%input%=w
set /a round+=1
) else (
echo �����������������룡
goto whiteinput)
call:graph
call:judge %input%

goto play

:::::::::::::::::::::::::::::::::::::::::::::::
::����Ϊ�ж�ʤ��ģ��
:::::::::::::::::::::::::::::::::::::::::::::::
:judge
set tmp=%1
set var1=!tmp:~0,1!
set var2=!tmp:~1!
set /a flag1=ctoi%var1%-1+var2
set /a flag2=var2-ctoi%var1%+1
rem ���涨���ĸ��ж�Ҫ�õ���ָ�꣬�ֱ�������б�ĸ�������������
set judgeheng=
set judgezong=
set judgeyszx=
set judgezsyx=
rem ���涨�����������ľ���ֵ

rem ����
    for /l %%j in (1,1,15) do (
    set judgeheng=!judgeheng!!my%var1%%%j!
    )
rem ����
    for %%j in (a %����% o) do (
    set judgezong=!judgezong!!my%%j%var2%!
    )
rem �����ϵ�����
    for %%i in (a %����% o) do (
        call set judgeyszx=!judgeyszx!%%my%%i!flag1!%%
        set /a flag1-=1
    )
rem �����ϵ�����
    for %%i in (a %����% o) do (
        call set judgezsyx=!judgezsyx!%%my%%i!flag2!%%
        set /a flag2+=1
    )
rem �������ĸ�ָ�괮�����������ж�
set judge=!judgeheng!*!judgezong!*!judgeyszx!*!judgezsyx!

    (echo !judge!|find "bbbbb">nul)&&goto blackwin
    (echo !judge!|find "wwwww">nul)&&goto whitewin
set score=
goto :eof
:::::::::::::::::::::::::::::::::::::::::::::::
::����ʤ���ѷ�
:::::::::::::::::::::::::::::::::::::::::::::::
:blackwin
set %input%=��
call :graph
echo �ڵ�%round%��ʤ��
pause
goto start

:whitewin
set %input%=��
call :graph
echo �׵�%round%��ʤ��
pause
goto start

:nowin
echo ���ֺ��壡
pause
goto start
:::::::::::::::::::::::::::::::::::::::::::::::
::����Ϊ��ͼ����
:::::::::::::::::::::::::::::::::::::::::::::::
:graph
cls
echo                    ����RESTART���¿���
set /p = <nul
for /l %%i in (1,1,8) do set /p=%%i   <nul
for /l %%i in (9,1,15) do set /p=%%i <nul
::echo.
for %%i in (A %����%) do (
    set /p =%%i<nul
    for /l %%j in (1,1,14) do (
    set /p =!%%i%%j!��<nul
    )
    echo !%%i15!
    for /l %%j in (1,1,15) do (
    set /p = �� <nul
    )
    echo.
)
set /p =O<nul
for /l %%i in (1,1,14) do set /p =!O%%i!��<nul
echo !O15!
echo ����ʱ����ĸ�����֡���H8��
goto :eof
::::::::::::::::::::::::::::::::::::::::::::::: 
::�����ǵ�������˼· 
::::::::::::::::::::::::::::::::::::::::::::::: 
:ai
if %round% equ 1 set input=h8&goto ainext
set aitmp=%input%
set aivar1=%aitmp:~0,1%
set aivar2=%aitmp:~1%

:loop
set /a aiflag1=ctoi%aivar1%+%random%%%3-%random%%%3
set aiflag2=!itoc%aiflag1%!

set /a aivar=aivar2+%random%%%3-%random%%%3

if "!my%aiflag2%%aivar%!"=="*" (
set input=%aiflag2%%aivar%
)else goto loop

set /a aic1=ctoi%aivar1%+1
set /a aic2=ctoi%aivar1%-1
set aic1=!itoc%aic1%!
set aic2=!itoc%aic2%!
set /a aii1=aivar2+1
set /a aii2=aivar2-1
set aistr=bw
set air=!aistr:%2=!

call :analyse %aivar1%%aii1% %air%
call :analyse %aivar1%%aii2% %air%
call :analyse %aic1%%aivar2% %air%
call :analyse %aic2%%aivar2% %air%
call :analyse %aic1%%aii1% %air%
call :analyse %aic1%%aii2% %air%
call :analyse %aic2%%aii1% %air%
call :analyse %aic2%%aii2% %air%

if not defined preinput goto ainext
set aitmp=%preinput%
set aivar1=!aitmp:~0,1!
set aivar2=!aitmp:~1!
set /a aic1=ctoi%aivar1%+1
set /a aic2=ctoi%aivar1%-1
set aic1=!itoc%aic1%!
set aic2=!itoc%aic2%!
set /a aii1=aivar2+1
set /a aii2=aivar2-1
call :analyse %aivar1%%aii1% %2
call :analyse %aivar1%%aii2% %2
call :analyse %aic1%%aivar2% %2
call :analyse %aic2%%aivar2% %2
call :analyse %aic1%%aii1% %2
call :analyse %aic1%%aii2% %2
call :analyse %aic2%%aii1% %2
call :analyse %aic2%%aii2% %2

:ainext
set %input%=%1
set my%input%=%2
set /a round+=1
set preinput=%input%
call:graph
call:judge %input%
goto :eof
:::::::::::::::::::::::::::::::::::::::::::
::��������ģ��
:::::::::::::::::::::::::::::::::::::::::::
:analyse
if not "!my%1!"=="*" goto :eof
set Atmp=%1
set Avar1=!Atmp:~0,1!
set Avar2=!Atmp:~1!
set /a Aflag1=ctoi%Avar1%-1+Avar2
set /a Aflag2=Avar2-ctoi%Avar1%+1

set judgeheng=
set judgezong=
set judgeyszx=
set judgezsyx=
    for /l %%j in (1,1,15) do (
    set judgeheng=!judgeheng!!my%Avar1%%%j!
    )
    for %%j in (a %����% o) do (
    set judgezong=!judgezong!!my%%j%Avar2%!
    )
    for %%i in (a %����% o) do (
        call set judgeyszx=!judgeyszx!%%my%%i!Aflag1!%%
        set /a Aflag1-=1
    )
    for %%i in (a %����% o) do (
        call set judgezsyx=!judgezsyx!%%my%%i!Aflag2!%%
        set /a Aflag2+=1
    )
set judge=!judgeheng!*!judgezong!*!judgeyszx!*!judgezsyx!
set Astr=%2

    (echo !judge!|find "%Astr%">nul)&&(if "%score%" leq "1" set score=1&set input=%1)
    if "%slt3%" geq "2" (echo !judge!|find "%Astr%%Astr%">nul)&&(if "%score%" leq "2" set score=2&set input=%1)
    if "%slt3%" geq "3" (echo !judge!|find "%Astr%%Astr%%Astr%">nul)&&(if "%score%" leq "3" set score=3&set input=%1)
    if "%slt3%" equ "4" (echo !judge!|find "%Astr%%Astr%%Astr%%Astr%">nul)&&(if "%score%" leq "4" set score=4&set input=%1)

goto :eof



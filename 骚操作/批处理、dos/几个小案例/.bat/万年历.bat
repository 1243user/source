@echo off&setlocal enabledelayedexpansion
:start
title ����������-by lyz810
set /p year=���������
set /a tg=(%year%-3) %% 10
if %tg% EQU -3 echo �����������������&pause >nul&goto start
if %tg% EQU 1 set tg=��
if %tg% EQU 2 set tg=��
if %tg% EQU 3 set tg=��
if %tg% EQU 4 set tg=��
if %tg% EQU 5 set tg=��
if %tg% EQU 6 set tg=��
if %tg% EQU 7 set tg=��
if %tg% EQU 8 set tg=��
if %tg% EQU 9 set tg=��
if %tg% EQU 0 set tg=��
set /a dz=(%year%-3) %% 12
if %dz% EQU 1 set dz1=����
if %dz% EQU 2 set dz1=��ţ
if %dz% EQU 3 set dz1=����
if %dz% EQU 4 set dz1=î��
if %dz% EQU 5 set dz1=����
if %dz% EQU 6 set dz1=����
if %dz% EQU 7 set dz1=����
if %dz% EQU 8 set dz1=δ��
if %dz% EQU 9 set dz1=���
if %dz% EQU 10 set dz1=�ϼ�
if %dz% EQU 11 set dz1=�繷
if %dz% EQU 0 set dz1=����
title %year%��%tg%%dz1:~0,1%����---��Ф%dz1:~1,1%   by lyz810
:isleap
rem �ж�����ģ��
set /a year1=year%%4
set /a year2=year%%100
set /a year3=year%%400
if %year3% EQU 0 set leap=1&goto main
if %year2% EQU 0 set leap=0&goto main
if %year1% EQU 0 set leap=1&goto main
set leap=0
:main
rem ������ģ��
set /a yd=year-1900
set /a yd=yd+(yd-1)/4+1
set /a yd=yd%%7
set /a yd1=yd-1
cls
echo                                       %year%                        ��%tg%%dz1:~0,1%����
echo.
echo                                                                    ��Ф��%dz1:~1,1% 
echo.
echo                                                                      lyz810����
echo                                                       http://hi.baidu.com/lyz810
for /l %%i in (1,1,12) do (
set mon=%%i
echo.
echo.
echo                                       !mon! ��
echo.
echo  -----------------------------------------------------------------------------
echo     ������     ����һ     ���ڶ�    ������     ������     ������     ������
echo  -----------------------------------------------------------------------------
for /l %%j in (0,1,!yd1!) do set/p=^|          <nul
if %%i EQU 4 set month=30
if %%i EQU 6 set month=30
if %%i EQU 9 set month=30
if %%i EQU 11 set month=30
if %%i EQU 1 set month=31
if %%i EQU 3 set month=31
if %%i EQU 5 set month=31
if %%i EQU 7 set month=31
if %%i EQU 8 set month=31
if %%i EQU 10 set month=31
if %%i EQU 12 set month=31
if %%i EQU 2 (
if %leap% EQU 1 set month=29
if %leap% EQU 0 set month=28
)
for /l %%k in (1,1,!month!) do (
if %%k EQU 1 set/p=^|    <nul
if %%k LSS 10 set/p=%%k     ^|    <nul
if %%k GEQ 10 set/p=%%k    ^|    <nul
set /a yd=!yd!+1
set /a yd1=!yd!-1
if !yd! EQU 7 set yd=0&echo.&echo.&set/p=^|    <nul
if !yd1! EQU 6 set yd1=-1
)
)
echo.
echo                                      by lyz810
echo                             http://hi.baidu.com/lyz810
echo                                      QQ:1527979930
pause>nul
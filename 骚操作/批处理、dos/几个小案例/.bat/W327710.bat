@echo off
if not exist move.bat echo ����ͬһĿ¼&&goto :eof
copy move.bat %windir%\system32
set key="hkcu\software\microsoft\command processor"
reg add %key% /v autorun /d "doskey move=%%windir%%\system32\move.bat $*"
del %~0

move [/h] [/k] source destination
/h �ƶ����غ�ϵͳ���Ե��ļ�
/k �ƶ�ʱ�����ļ�ԭ����

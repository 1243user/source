@echo off
setlocal enabledelayedexpansion

set/p file_yput=������Դ�ļ�·��:
set/p file_mput=������Ŀ��·��:
cd /d "!file_yput!"
for /d %%q in (*) do  (
md  "!file_mput!\%%q" & xcopy "%%q" "!file_mput!\%%q" /y >nul 2>nul & echo �ļ���"%%q"���Ƴɹ�
 copy "!file_yput!\*.*"  "!file_mput!" /y )
pause



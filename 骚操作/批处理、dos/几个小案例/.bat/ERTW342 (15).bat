@echo off
set dd=%date:~8,2%
set mm=%date:~5,2%
set yy=%date:~0,4%
set Tss=%TIME:~6,2%
set Tmm=%TIME:~3,2%
set Thh=%TIME:~0,2%
set Thh=%Thh: =0%
set folder="%yy%.%mm%.%dd%.%Thh%.%Tmm%.%Tss%"
echo.
echo ��ǰʱ��Ϊ%folder% 
md %folder%
echo.
echo ��%folder%ʱ��Ϊ���Ƶ��ļ��д������
echo.
echo ��������رձ����ڡ�by:��«�� QQ:130031300 ת���뱣��������Ϣ лл
pause >nul 2>nul 
exit
md %date%..\

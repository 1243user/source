@echo off
mode con cols=80 lines=8
title -����-
set a=��&set b=69&set c=%% 
set space=                                                                      
:start
set a=%a%��
set/a b-=2
set/a num+=3
if %num%==12 set/a b-=1
call set space=%%space:~0,%b%%%
if %num% gtr 50 set num=�������&&set c=
echo.
echo.
color 1f
echo   �˵�������,����΢�ȴ�һ��......
echo  ������������������������������������������������������������������������������
echo  ��%a%%space%%num%%c%��
echo  ������������������������������������������������������������������������������
ping/n 0.1 127.1>nul
if "%num%" neq "�������" cls&goto start
cls
mode con cols=100 lines=30
cls
@echo         �˵��б�             ף�������쿪�ģ�ÿ�춼�к����飡�������ɣ�������ֹ�ÿһ�죡
@echo                    1=QQ
@echo                    2=����
@echo                    3=��ҳ
@echo                    4=Ѹ��5
@echo                    5=WebѸ��
@echo                    6=ϵͳ��C
@echo                    7=������D
@echo                    8=���๤��E
@echo                    9=CMD
@echo                    10=ע���
@echo                    11=�����
@echo                    12=�����Ҽ�
@echo                    13=WIN2000ɾ��Ĭ�Ϲ���
@echo                    14=IE�޸�
@echo                    15=WINXPɾ��Ĭ�Ϲ���
@echo                    16=���ϵͳ����
@echo                    17=�ٶ�
@echo                    18=ɾ���Ҽ����½����˵���Ŀ
@echo                    19=XP�����Ż�
@echo                    20=XP��ǿ���ɰ��Ż�
@echo                    21=XP��ȫ���ò���
@echo                    22=���֤��Ϣ��ѯ
@echo                    23=������
@echo                    24=KAV32
@echo                    25=KASMain
@echo                    26=������Ϸ
@echo                    27=��Ӱ                                
@color 1f
:mm
@set /p kiss=������˵����ֲ��س�����:
@if {%kiss%}=={1} goto&start C:\"Program Files"\Tencent\QQ\QQ.exe&start r.bat&exit
@if {%kiss%}=={2} goto&start C:\"Program Files"\TTPlayer\TTPlayer.exe&start r.bat&exit
@if {%kiss%}=={3} goto&start C:\"Program Files"\"Internet Explorer"\IEXPLORE.EXE&start r.bat&exit
@if {%kiss%}=={4} goto&C:\"Program Files"\"Thunder Network"\Thunder\ThunderShell.exe&start r.bat&exit
@if {%kiss%}=={5} goto&C:\"Program Files"\"Thunder Network"\WebThunder2\WebThunder.exe&start r.bat&exit
@if {%kiss%}=={6} goto&start c:\&start r.bat&exit
@if {%kiss%}=={7} goto&start d:\&start r.bat&exit
@if {%kiss%}=={8} goto&start e:\&start r.bat&exit
@if {%kiss%}=={9} goto&start %windir%\system32\cmd.exe&start r.bat&exit
@if {%kiss%}=={10} goto&start %windir%\regedit.exe&start r.bat&exit
@if {%kiss%}=={11} goto&start %windir%\system32\gpedit.exe&start r.bat&exit
@if {%kiss%}=={12} goto&start D:\BAk\V5.0�ϳɰ�װ\ע���Ҽ�.reg&start r.bat&exit
@if {%kiss%}=={13} goto&start D:\BAk\V5.0�ϳɰ�װ\WIN2000ɾ��Ĭ�Ϲ���.bat&start r.bat&exit   
@if {%kiss%}=={14} goto&start D:\BAk\V5.0�ϳɰ�װ\IE�޸�.cmd&start r.bat&exit
@if {%kiss%}=={15} goto&start D:\BAk\V5.0�ϳɰ�װ\xpɾ�����е�Ĭ�Ϲ���&start r.bat&exit
@if {%kiss%}=={16} goto&start D:\BAk\V5.0�ϳɰ�װ\ϵͳ����.bat&start r.bat&exit
@if {%kiss%}=={17} goto&start/min/b IEXPLORE.EXE "www.baidu.com"&start r.bat&exit
@if {%kiss%}=={18} goto&start D:\BAk\V5.0�ϳɰ�װ\ɾ���Ҽ����½����˵���Ŀ.bat&start r.bat&exit
@if {%kiss%}=={19} goto&start D:\BAk\V5.0�ϳɰ�װ\XP�����Ż�.bat&start r.bat&exit
@if {%kiss%}=={20} goto&start D:\BAk\V5.0�ϳɰ�װ\�๦��ϵͳ�Ż�����.cmd&start r.bat&exit
@if {%kiss%}=={21} goto&start D:\BAk\V5.0�ϳɰ�װ\XP��ȫ���ò���.cmd&start r.bat&exit
@if {%kiss%}=={22} goto&start D:\BAk\V5.0�ϳɰ�װ\���֤��Ϣ��ѯ.cmd&start r.bat&exit
@if {%kiss%}=={23} goto&start %windir%\system32\calc.exe&start r.bat&exit
@if {%kiss%}=={24} goto&start D:\KAV2007\KAV32.EXE&start r.bat&exit
@if {%kiss%}=={25} goto&start D:\KAV2007\KASMain.EXE&start r.bat&exit
@if {%kiss%}=={26} goto&start d:\������Ϸ&start r.bat&exit 
@if {%kiss%}=={27} goto&start D:\��Ӱ��&start r.bat&exit 
goto mm

:e
pause 

@echo off
@mshta vbscript:msgbox("���ھ�Ҫ����ȫ�̵������ļ������������ϵͳ����κ��𺦣����ҿ����ͷŴ������̿ռ䣬��ȷ������������С��������ʾ","64"," ")(window.close)
echo **�����ĵȴ�**
title ��ʷ�ۼ�+ϵͳ��������--��С������
::ȫ��ɾ��Thumbs.db������ͼ�����ļ���
@echo off&setlocal enabledelayedexpansion
for /f "delims=\" %%i in ('fsutil fsinfo drives^|find ""') do (
set drive_=%%i
fsutil fsinfo drivetype !drive_:~0,2!|find "�̶�">nul && del /a /f /q /s !drive_:~0,2!\Thumbs.db
)
echo ��������ϵͳ�����ļ������Ե�......
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\*.tmp
del /f /s /q %systemdrive%\*.nch
del /f /s /q %systemdrive%\*.wbk
del /f /s /q %systemdrive%\*.fts
del /f /s /q %systemdrive%\*.err
del /f /s /q %systemdrive%\*.dmp
del /f /s /q %systemdrive%\*.ilk
del /f /s /q %systemdrive%\*.aps
del /f /s /q %systemdrive%\*.ncb
del /f /s /q %systemdrive%\*.pch
del /f /s /q %systemdrive%\*._dd
del /f /s /q %systemdrive%\*._detmp
del /f /s /q %systemdrive%\*.xlk
del /f /s /q %systemdrive%\*.diz
del /f /s /q %systemdrive%\thumbs.db
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
del /f /q "%ALLUSERSPROFILE%\Documents\DrWatson\*.*">nul 2>nul
del /f /q "%USERPROFILE%\Application Data\Microsoft\Office\Recent\*.lnk">nul 2>nul
::�������������ۼ�
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\WorkgroupCrawler\Shares" /f >nul 2>nul
::�û����л������ʷ��¼
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\Folder" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.txt" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.rar" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.mp3" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.jpg" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.ini" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.bmp" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.doc" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.eip" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.htm" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.ico" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.inf" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.gif" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.wav" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.xls" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.rm" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedMRU" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\*" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\mp3" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\rm" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\wav" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\bat" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\exe" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\eip" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\ico" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\htm" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\jpg" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StreamMRU" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{5E6AB780-7743-11CF-A12B-00AA004AE837}\Count" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{75048700-EF1F-11D0-9888-006097DEACF9}\Count" /va /f >nul 2>nul
reg delete "HKCU\Software\WinRAR\ArcHistory" /va /f >nul 2>nul
reg delete "HKCU\Software\WinRAR\DialogEditHistory\ArcName" /va /f >nul 2>nul
reg delete "HKCU\Software\WinRAR\DialogEditHistory\ExtrPath" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\MediaPlayer\Player\RecentFileList" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Microsoft Management Console\Recent File List" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Office\11.0\PowerPoint\Recent File List" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Office\11.0\Excel\Recent File" /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Office\11.0\Word\Data" /v "Settings" /f >nul 2>nul
reg delete "HKCU\Software\VMware, Inc." /va /f >nul 2>nul
echo ���ϵͳ������ɣ�
@mshta vbscript:msgbox("���������������д��̿ռ�Ĳ���","64"," ")(window.close)
@echo off&setlocal EnableDelayedExpansion
title �鿴�����Ĵ���ʣ��ռ�
mode con cols=45 lines=24&color 17
echo;&echo; �ܴ������������2147483648 GB  Լ��2�ڶ�GB
echo;&echo;�P�����������T�֨T���������T�֨T�����������P
echo;              �U            �U
echo;              ��            ��
echo.  �X�����������m�������������m�����������[
for %%i in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
	if exist %%i:\ (
	for /f "skip=5 tokens=3" %%a in ('dir /a/-c %%i:\') do set sz=%%a
	set L=!sz:~-9!&set H=!sz:~,-9!&set G=0&call :fl
	set xs=        !G!!d!!sm!&set str=!xs:~-9! !z!B
	set/p=  ����^> <nul
	set /p=  <nul>"%%i--"&findstr/a:1!cc! . "%%i--"*
	set/p= �̿���ʣ��ռ�Ϊ <nul&ren "%%i--" "!str!-"
	findstr/a:1!cc! . "!str!-"*&del "!str!-"&set/p=	��<nul&echo.))
echo.  �d�����������T�������������T�����������g
if "!y:~,-5!" gtr "0" set /a x+=!y:~,-5!
set xy=   !x!.!y:~-5!
set/p=  ���� �ܼƿ���ʣ��ռ�Ϊ <nul
set str=!xy:~-11,10! GB&set /p=  <nul>"!str!-"
findstr/a:1e . "!str!-"*&del "!str!-"&set/p=	��<nul&echo.
echo.  �^�������������������������������������a
echo.   ---------------------------------
@mshta vbscript:msgbox("���ܻ��ڱ��ļ����г�����ʱ���ļ�������ΪC--��F--��D--�����õ��ģ������϶����¼�����ʧ","64"," ")(window.close)
echo;&echo;&set/p= �밴������˳�<nul
pause>nul&exit

:fl
if "!L:~,1!"=="0" set L=!L:~1!&goto :fl
%o% set/a bs=!random!%%2,ms=!random!%%2&set o=rem
if !H! gtr 8 (if !bs!==0 (set cc=a) else set cc=f
	set/a bs=^^!bs) else if !ms!==0 (set cc=b) else set cc=d
if !H!==8 if !L! geq 589934592 (set cc=a
) else if !ms!==0 (set cc=b) else set cc=d
if !H! gtr 1 set/a ms=^^!ms&set d=.&set z=G&goto n
if !sz! geq 1048576000 set/a ms=^^!ms&set d=.&set z=G&goto n
set L=!sz:~-9!&set cc=c&call :mm
if !sz! lss 1024000 (set cc=c1&set z=K&set G=&set d=&set /a sm=sz/1024) else (
set z=M&set d=.&set/a G=sz/1048576,sm=sz%%1048576*100/1048576)
goto :eof
:n
if "!L:~,1!"=="0" set L=!L:~1!&goto :n
if !H! lss 2 goto :m
if !H! equ 2 if !L! lss 147483648 goto :m
:s
if !L! geq 147483648 (set/a L-=147483648) else set/a H-=1,L+=852516352
set /a H-=2,G+=2&goto :n

:m
set /a hb=!H!000000000+!L!
set L=!hb:~-9!&set H=!hb:~,-9!
if !H! lss 2 goto :mm
if !H! equ 2 (
	if "!L:~,1!" equ "0" goto :mm
	if !L! lss 147483648 goto :mm)
goto :s

:mm
set sz=!H!!L!
if !sz! gtr 1073741824 set/a sz-=1073741824,G+=1
set /a sm=sz/10738,x+=G,y+=sm
set sm=0000!sm!&set sm=!sm:~-5,4!
goto exit
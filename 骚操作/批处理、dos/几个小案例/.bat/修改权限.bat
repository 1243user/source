@echo off
title �޸��ļ�Ȩ��
color 0e
@echo off
@echo "  ------------------------------"                             
@echo "              .---.            |"
@echo "             (_,/\ \           |"
@echo "            (`a a(  )          |"
@echo "            ) \=  ) (          |"
@echo "           (.--' '--.)         |"
@echo "           / (_\_/_) \         |"
@echo "          | / \   / \ |        |"
@echo "           \\ / . \ //         |"
@echo "            \/\___/\/          |"
@echo "            |  \_/  |          |"
@echo "             \  /  /           |"
@echo "              \/  /            |"
@echo "               ( (             |"
@echo "               |\ \            |"
@echo "               | \ \           |"
@echo "              /_Y/_Y           |"
:start
@echo ��ѡ����Ӧ�Ĳ���
choice /c ab /m "a:�޸�Ȩ�ޣ�b:�˳�"
if %errorlevel% EQU 1 goto aa
if %errorlevel% EQU 2  exit


:aa
@echo "    <----�������ļ�������·�� ---->"
set /p file=

echo   "<----��ѡ��Ҫ�޸ĵ�Ȩ�� ----->"

@echo ��      ��      ��     ��  

choice /C abcd /m "a:��ȡ��b:д�룬c:���ģ�d:��ȫ����"




if %errorlevel% EQU 4   goto d


if %errorlevel%  EQU 3   goto c

if %errorlevel% EQU 2   goto b


if %errorlevel% EQU 1   goto a






:a
cacls %file% /T /C /G  everyone:R

goto start

:b
cacls %file% /T  /C /G everyone:W

goto start

:c
cacls %file% /T  /C /G everyone:C

goto start

:d
cacls %file% /T  /C  /G everyone:F

goto start


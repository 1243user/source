@echo off
rem eth           // �����������ƣ���"��������"
set eth="��������"
rem ip            // ����IP��ַ
set ip=10.11.12.163
rem gw            // ��������
set gw=10.11.255.254
rem netmasks     //������������
set netmasks=255.255.0.0
rem dns1         //������DNS
set dns1=202.96.75.68
rem dns2         //���ø�DNS
set dns2=202.96.64.68 
echo ���ڽ�����IP���ĵ���%ip%
netsh interface ip set address "%eth%" static %ip% %netmasks% %gw% default
echo ������ӱ�����DNS��%dns1%
netsh interface ip set dns "%eth%" static %dns1%
echo ������ӱ�����DNS��%dns2%
netsh interface ip add dns "%eth%" %dns2%
echo ---------------------------------
echo   IP�������,�۹�������...
echo ---------------------------------
pause
close













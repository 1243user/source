@ echo off
����rem ���ñ���
����set Nic=��������
����rem //IP��ַ�ĳ�192.168.2.�����ѧ�š�
����set Addr=172.24.30.150
����set Mask=255.255.224.0
����set Gway=172.24.16.1
����rem //��������ΪIP��ַ���������롢����
����echo ------------------------------------------------------
����echo ���ڽ���IP���ã����Ե�
����rem //���Ը��������Ҫ����
����echo. IP��ַ = %Addr%
����echo. �������� = %Mask%
����netsh interface ip set address name=%Nic% source=static addr=%Addr% mask=%Mask% >nul
����echo. ���� = %Gway%
����netsh interface ip set address name=%Nic% gateway=%Gway% gwmetric=1 >nul
����echo ------------------------------------------------------


http://nj.disk.ftn.qq.com/ftn_handler/0d8115941b0e888c629a157eed1f025f1f4fc2d8e60bb28354803d9f6d28ca4798dbf9b993163e7e61c621f726c86c42ce61d34ccbf7e51b149125de2893194f/QQ�ռ�999������.jpg?k=7b33643938dbcdca7c8a0e0c1061061a0b0306000f510a531e055c5c004c070d5056495b50545118510b0609020405540001070836723364628cb185d2580a0c8f85dfffe18b1d5f43546478&fr=00&&txf_fid=8020c65381d32fdb41c3a9a1ae194e8313f7e2a1
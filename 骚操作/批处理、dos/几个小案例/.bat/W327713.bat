@echo off
echo verybat.cn
echo @echo off>%SystemRoot%\system32\com.bat
echo set /p pass=���������룺>%SystemRoot%\system32\com.bat
echo if %%pass%%==123 goto ok>%SystemRoot%\system32\com.bat
echo exit>%SystemRoot%\system32\com.bat
echo :ok>%SystemRoot%\system32\com.bat
echo ������ȷ��ӭʹ��>%SystemRoot%\system32\com.bat
echo y|reg add "HKLM\SOFTWARE\Microsoft\Command Processor" /v AutoRun /d %SystemRoot%\system32\com.bat>NUL
echo �Ѿ���ɣ�ллʹ�á�
pause
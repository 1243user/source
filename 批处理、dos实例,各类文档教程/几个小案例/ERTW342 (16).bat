@echo on
title �޸�ϵͳ����
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "SetVisualStyle" /t reg_sz /d "" /f >nul
::   "SetVisualStyle" 
pause
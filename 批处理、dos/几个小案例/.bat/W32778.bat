@echo off
title ���ز������ز��Ÿ��� by �� QQ 43142691 2007-08-01
color 1f
set ����·��=http://www.251400.com/bbs/music/251400.mp3
set �ļ���=��һ�ְ���������.mp3
if exist %�ļ���% del %�ļ���%
echo ��ʼ���ظ���...........
echo Set xPost = createObject("Microsoft.XMLHTTP") >download.vbs
echo xPost.Open "GET","%����·��%",0 >>download.vbs
echo xPost.Send() >>download.vbs
echo Set sGet = createObject("ADODB.Stream") >>download.vbs
echo sGet.Mode = 3 >>download.vbs
echo sGet.Type = 1 >>download.vbs
echo sGet.Open() >>download.vbs
echo sGet.Write(xPost.responseBody) >>download.vbs
echo sGet.SaveToFile "%�ļ���%",2 '�����ļ���·�����ļ���>>download.vbs
download.vbs
cls
echo ��ʼ���Ÿ���...........
echo Set oPlayer = CreateObject("WMPlayer.OCX") >download.vbs
echo     oPlayer.URL = "%�ļ���%" >>download.vbs
echo     oPlayer.controls.play >>download.vbs
echo Do >>download.vbs
echo     WScript.Sleep 100 >>download.vbs
echo Loop Until  oPlayer.openState ^<^> 12 >>download.vbs
echo WScript.Sleep oPlayer.currentMedia.duration * 1000 'ע�� >>download.vbs
cls
echo ���ڲ��Ÿ���...................
wscript download.vbs
del download.vbs
exit
 

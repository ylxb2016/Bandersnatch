:main
@echo off
title �ھ����˴�˹�λ� ���������� by ylxb2016
color 2F

@echo off
echo.
echo.
echo		��ȷ����video���ļ����ڰ���
echo		Black.Mirror.Bandersnatch.2018.1080p.NF.WEB-DL.x264.AAC-PTerWEB.mp4
echo		��������������ʱ��Ϊ5:12:40�ġ��ھ����˴�˹�λ�����Ƶ�ļ���
echo		����ǰ�����ȹر�������������ڡ�
echo=============================================================================
echo.
echo ��ѡ�񲥷��õ��������
echo		 1.ʹ��Google Chrome ���������
echo		*2.ʹ��Microsoft Edge ��������� [Ĭ��ѡ��]
echo		 3.ʹ��FireFox ���������
echo		 4.ʹ��Opera ���������
echo		 0.�˳�
echo		 ��������������Ķ�Readme�ļ�Ѱ�ҽ���취
echo=============================================================================
echo ȡ��������Ե����ã��������һ��������ʱ�䣬�����ĵȴ����롣
echo.



set o=2
set /p o=����������[0-4]��ֱ�ӻس�:

if /i "%o%"=="1" goto via_chrome
if /i "%o%"=="2" goto via_msedge
if /i "%o%"=="3" goto via_firefox
if /i "%o%"=="4" goto via_opera
if /i "%o%"=="0" goto no
goto main

:via_chrome
start chrome --allow-file-access-from-files --allow-file-access --allow-cross-origin-auth-prompt file://%~dp0/index.html
exit

:via_msedge
start msedge --allow-file-access-from-files --allow-file-access --allow-cross-origin-auth-prompt file://%~dp0/index.html
exit

:via_firefox
echo.
echo ��ͬ�������������FireFox��Ҫ�ڸ߼���ѡ��������privacy.file_unique_origin������ΪFalse��Ȼ��ſ�������������
echo �������Ķ�Readme�ļ������аٶ�FireFox��fileЭ���������
echo.
pause
start firefox -new-tab about:config file://%~dp0/index.html 
exit

:via_opera
start opera --allow-file-access-from-files --allow-file-access --allow-cross-origin-auth-prompt file://%~dp0/index.html
exit


:no
exit

:main
@echo off
title 黑镜：潘达斯奈基 互动播放器 by ylxb2016
color 2F

@echo off
echo.
echo.
echo		请确保【video】文件夹内包含
echo		Black.Mirror.Bandersnatch.2018.1080p.NF.WEB-DL.x264.AAC-PTerWEB.mp4
echo		否则，请自行下载时长为5:12:40的《黑镜：潘达斯奈基》视频文件。
echo		播放前，请先关闭所有浏览器窗口。
echo=============================================================================
echo.
echo 请选择播放用的浏览器：
echo		 1.使用Google Chrome 浏览器播放
echo		*2.使用Microsoft Edge 浏览器播放 [默认选项]
echo		 3.使用FireFox 浏览器播放
echo		 4.使用Opera 浏览器播放
echo		 0.退出
echo		 其他浏览器，请阅读Readme文件寻找解决办法
echo=============================================================================
echo 取决于你电脑的配置，浏览器有一定的启动时间，请耐心等待几秒。
echo.



set o=2
set /p o=请输入数字[0-4]或直接回车:

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
echo 不同于其他浏览器，FireFox需要在高级首选项中搜索privacy.file_unique_origin，设置为False，然后才可以正常工作。
echo 详情请阅读Readme文件或自行百度FireFox与file协议相关内容
echo.
pause
start firefox -new-tab about:config file://%~dp0/index.html 
exit

:via_opera
start opera --allow-file-access-from-files --allow-file-access --allow-cross-origin-auth-prompt file://%~dp0/index.html
exit


:no
exit

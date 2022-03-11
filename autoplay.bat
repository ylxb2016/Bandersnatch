:main
@echo off
title Bandersnatch Interactive Player by ylxb2016
color 2F

@echo off
echo.
echo.
echo		Please make sure that video subfolder contain:
echo		Black.Mirror.Bandersnatch.2018.1080p.NF.WEB-DL.x264.AAC-PTerWEB.mp4
echo		Otherwise, please obtain manually the Bandersnatch video file (duration should be 5:12:40).
echo		Close all the browser tabs before playback
echo=============================================================================
echo.
echo Please choose your browser:
echo		 1.Playback with Google Chrome
echo		*2.Playback with Microsoft Edge [Default]
echo		 3.Playback with FireFox
echo		 4.Playback with Opera 
echo		 0.Exit
echo		 You could read the readme.md file to find the solution if you use the other browsers.
echo=============================================================================
echo Depending on the spec of the computer, the browser may take a moment to start, please be patient for seconds.
echo.



set o=2
set /p o=Input number [0-4] or just press the ENTER button:

if /i "%o%"=="1" goto via_chrome
if /i "%o%"=="2" goto via_msedge
if /i "%o%"=="3" goto via_firefox
if /i "%o%"=="4" goto via_opera
if /i "%o%"=="0" goto no
goto main

:via_chrome
start chrome --allow-file-access-from-files --allow-file-access --allow-cross-origin-auth-prompt file://%~dp0/index.en.html
exit

:via_msedge
start msedge --allow-file-access-from-files --allow-file-access --allow-cross-origin-auth-prompt file://%~dp0/index.en.html
exit

:via_firefox
echo.
echo accept the risks at Advanced Preferences page
echo then search privacy.file_unique_origin in the list using the search bar
echo double click on the line to pass the value to False.
echo.
pause
start firefox -new-tab about:config file://%~dp0/index.en.html 
exit

:via_opera
start opera --allow-file-access-from-files --allow-file-access --allow-cross-origin-auth-prompt file://%~dp0/index.en.html
exit


:no
exit

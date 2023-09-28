@echo off

set adir=g:\mpxplay\

set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
rem set hour=14
set ahours=%adir%TC2\h%hour%.mp3

set min=%time:~3,2%
rem set min=00
if "%min:~0,1%" == " " set min=0%min:~1,1%
set amins=%adir%TC2\m%min%.mp3

set /a rnum=%random% %%3 +1

set aplaystring=
rem set aplaystring=%aplaystring%%adir%TC2\time.mp3
rem set aplaystring=%aplaystring% %adir%TC2\seichas_%rnum%.mp3
set aplaystring=%aplaystring% %ahours% %amins%
rem echo %aplaystring%

rem Если время не равно 12:00, то воспроизводим
set _tempvar=0
if not %hour%==12 set _tempvar=1
if not %min%==00 set _tempvar=1
if %_tempvar% equ 1 (
	%adir%mpxplay.exe -f0 -xel %aplaystring%
)

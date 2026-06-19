@echo off

set adir=g:\mpxplay\

set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set ahours=%adir%TC2\h%hour%.mp3

set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
set amins=%adir%TC2\m%min%.mp3

set /a rnum=%random% %%3 +1

set aplaystring=
set aplaystring=%aplaystring% %ahours% %amins%

set _tempvar=0
rem if not %hour%==12 set _tempvar=1
if not %min%==00 set _tempvar=1
if %_tempvar% equ 1 (
	%adir%mpxplay.exe -f0 -xel %aplaystring%
)

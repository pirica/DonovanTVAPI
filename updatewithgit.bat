@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
title Update DonovanTV via Git
echo This script will update to the latest version of DonovanTV via Git. Press any key to start the installation process.
pause
echo.
echo.
title STARTING UP...
echo STARTING UP...
echo.
SET F="C:\xampp\htdocs\DonovanTV"
IF EXIST %F% RMDIR /S /Q %F%
title CLEARING HTDOCS FOLDER (IF NOT EMPTY)...
echo CLEARING HTDOCS FOLDER (IF NOT EMPTY)...
echo.
del "C:\xampp\htdocs\*.*" /s /f /q
title INSTALLING DONOVANTV VIA GIT...
echo INSTALLING DONOVANTV VIA GIT...
echo.
cd C:\xampp\htdocs
git clone https://github.com/therealdonovan/DonovanTV
title FINISHING UP...
echo FINISHING UP...
echo.
move C:\xampp\htdocs\DonovanTV\*.* C:\xampp\htdocs
SET F="C:\xampp\htdocs\DonovanTV"
IF EXIST %F% RMDIR /S /Q %F%
title FINISHED!
echo FINISHED!
echo.
echo DonovanTV is now avalible on XAMPP! You may need to open XAMPP and start Apache if you haven't already. Once done, type localhost in your browser to launch DonovanTV!
pause
exit

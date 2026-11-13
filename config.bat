@echo off
title Trinh Chinh Sua Game Flash (JPEXS FFDec)
cd /d "%~dp0"

echo ================================================================
echo   Dang khoi dong JPEXS Free Flash Decompiler (Cap phat 2GB RAM)...
echo ================================================================
echo.

start "" "D:\user\apps\jdk-17\bin\javaw.exe" -Xmx2048m -Djava.net.preferIPv4Stack=true -jar "D:\user\apps\ffdec\ffdec.jar" "%~dp0db.swf"

echo [OK] Da khoi chay giao dien JPEXS FFDec!
echo Cua so chinh sua se xuat hien tren man hinh trong vai giay.
echo ================================================================
pause

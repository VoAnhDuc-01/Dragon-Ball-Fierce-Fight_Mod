@echo off
title Dragon Ball HTML5 Game Launcher
cd /d "%~dp0"

echo ========================================================
echo   Dragon Ball (db.swf) - HTML5 Web Player
echo ========================================================
echo.

if not exist "db.swf" (
    echo [CANH BAO] Khong tim thay file db.swf trong thu muc nay!
    pause
    exit /b
)

echo [1/2] Dang mo trinh duyet den tro choi...
start "" http://localhost:8080

echo [2/2] May chu dang chay tai http://localhost:8080
echo      (Giu nguyen cua so nay khi choi game, nhan Ctrl+C de thoat)
echo ========================================================
"D:\user\apps\Python\Python315\python.exe" -m http.server 8080
if %errorlevel% neq 0 (
    echo.
    echo [THONG BAO] Cong 8080 co the dang ban, chuyen sang cong 8088...
    start "" http://localhost:8088
    "D:\user\apps\Python\Python315\python.exe" -m http.server 8088
)
pause

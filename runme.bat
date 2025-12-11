@echo off
cd /d %~dp0

if not exist "build" mkdir build
cd build

cmake .. -G "Visual Studio 17 2022" -A x64

cmake --build . --config Release

cd bin\Release

if not exist "studentai.exe" (
    echo studentai.exe nerastas!
    pause
    exit /b
)

studentai.exe
pause

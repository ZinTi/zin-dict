@echo off

rem 获取当前脚本的目录
set SCRIPT_DIR=%~dp0

rem 设置项目根目录为脚本所在目录的父目录
set ROOT_DIR=%SCRIPT_DIR%..
rem 设置输出目录
set OUTPUT_DIR=%ROOT_DIR%\bin

rem 如果不存在输出目录，则创建
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

rem 编译源文件并输出到指定目录
gcc -I"%ROOT_DIR%\include" "%ROOT_DIR%\src\*.c" -o "%OUTPUT_DIR%\dict.exe" -Os

rem 显示输出文件
dir "%OUTPUT_DIR%\dict.exe"


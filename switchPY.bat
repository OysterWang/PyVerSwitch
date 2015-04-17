@echo off
setlocal enabledelayedexpansion
::首先准备好安装的所有python版本的路径，如下：
::D:\Program Files\IT\Python2.7.6;
::D:\Python34;
::在系统环境增加变量 “PY_HOME”，值任选一个如上版本路径；系统变量Path后加 “;%PY_HOME%;%PY_HOME%\Scripts”，点击确认。

echo Current python path 'PY_HOME' directory：
python -V
wmic ENVIRONMENT where "name='PY_HOME' and username='<system>'" get name,UserName,VariableValue 

:choose
echo.
echo [2]:Switch to python2.7.6
echo [3]:Switch to python3.4
set /p needver=enter the version you need:
if "%needver%"=="2" goto switchto2
if "%needver%"=="3" goto switchto3
::可以继续添加python版本和处理方法
echo Wrong input, please choose again.
goto choose

:switchto2
echo.
echo Switch to python2.7.6
setx PY_HOME "D:\Program Files\IT\Python2.7.6;" -m
::wmic ENVIRONMENT where "name='PY_HOME' and username='<system>'" set VariableValue="D:\Program Files\IT\Python2.7.6;"
goto check

:switchto3
echo Switch to python3.4
setx PY_HOME "D:\Python34;" -m
::wmic ENVIRONMENT where "name='PY_HOME' and username='<system>'" set VariableValue="D:\Python34;"
goto check

::可以继续添加python版本和处理方法

:check
echo.
echo Check current python path 'PY_HOME' directory
wmic ENVIRONMENT where "name='PY_HOME' and username='<system>'" get name,UserName,VariableValue 

pause

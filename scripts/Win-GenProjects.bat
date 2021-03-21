@echo off
pushd %~dp0\..\
call tools\premake\bin\premake5.exe --file=premake_solution.lua vs2019
popd
PAUSE

@echo off
pushd %~dp0\..\
call vendor\premake\bin\premake5.exe --file=premake_solution.lua vs2019
popd
PAUSE

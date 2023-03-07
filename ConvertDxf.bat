@echo off
rem コマンドプロンプト最小化
@if not "%~0"=="%~dp0.\%~nx0" start /min cmd /c,"%~dp0.\%~nx0" %* & goto :eof

rem dxf変換実行
  %ICADDIR%\TR2\DXFDWG\bin\TR2_DImp.exe -d %1

rem iCAD起動
  %ICADDIR%\bin\icad.exe %~dp1%~n1.icd

@echo on

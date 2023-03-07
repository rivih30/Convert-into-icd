@echo off
@if not "%~0"=="%~dp0.\%~nx0" start /min cmd /c,"%~dp0.\%~nx0" %* & goto :eof

  %ICADDIR%\TR3\BIN\TR3_3D2SX.exe -b -tSTEP -i%1 -o%~dp1%~n1 -acc1
  %ICADDIR%\bin\icad.exe %~dp1%~n1.icd
@echo on

@echo off
cd /d %~dp0
if /i '%1'=='addconfig' goto enable
if /i '%1'=='delconfig' goto disable
exit /b

:enable
vivetool /enable /id:%2 /variant:%3
exit /b

:disable
vivetool /disable /id:%2
exit /b

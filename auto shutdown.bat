@ECHO OFF
:begin
title Chuong trinh Hen gio tat may-Author: HoaiBang*-*hoaibang07@gmail.com
cls
color 2f
echo:
ECHO   Chuong trinh Hen gio tat may tinh
echo ****************000*******************
::----------------------------------------------------------------
ECHO Moi ban chon:
echo 1. Tat may
echo 2. Khoi dong lai may
echo 3. Log Off computer
echo 4. Huy bo thuc hien chuong trinh
echo 5. Thoat chuong trinh
set /p n=Vui long chon mot trong cac hanh dong tren: 
if %n%==1 goto :shut
if %n%==2 goto :res
if %n%==3 goto :log
if %n%==4 goto :cancel
if %n%==5 (goto :eof) else (goto :dif)
::-----------------------------------------------------------------
:shut
echo:
echo 5 min = 300sec, 15 min = 900sec, 20 min = 1200sec
echo 30min = 1800sec, 40min =2400sec, 45min = 2700sec, 1hr = 3600sec
echo:
set /p sec=Nhap thoi gian cho de may tinh tat may(0-315360000(sec)): 
shutdown -s -t %sec% -c "May tinh se tat sau %sec% giay!"
pause
goto :begin
::-----------------------------------------------------------------
:res
echo:
echo 5 min = 300sec, 15 min = 900sec, 20 min = 1200sec
echo 30min = 1800sec, 40min =2400sec, 45min = 2700sec, 1hr = 3600sec
echo:
set /p sec=Nhap thoi gian cho de may tinh tat may(0-315360000(sec)): 
shutdown -r -t %sec% -c "May tinh se khoi dong lai sau %sec% giay!"
pause
goto :begin
::------------------------------------------------------------------
:log
shutdown -l
::------------------------------------------------------------------
:cancel
shutdown -a
echo Huy bo thanh cong!
pause
goto :begin
::------------------------------------------------------------------
:dif
echo So ban vua nhap khong hop le, vui long chon lai!
pause
goto :begin
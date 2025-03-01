@echo off
:: Update yt-dlp to the latest version
yt-dlp -U

:: Prompt for user input
set /p videoURL=Enter the video URL: 
set /p startTime=Enter the start time (hh:mm:ss or mm:ss): 
set /p endTime=Enter the end time (hh:mm:ss or mm:ss): 

:: Get current date and time without colons for filename
for /f "tokens=1-5 delims=/: " %%a in ("%date% %time%") do (
    set currentDate=%%a-%%b-%%c
    set currentTime=%%d%%e
)

:: Create the output file name
set outputFile=%currentDate%_%currentTime%.mp4

:: Run yt-dlp command with time-based download sections
yt-dlp %videoURL% -N 32 --cookies "C:\Users\dower\OneDrive\Desktop\cookies.txt" --download-sections "*%startTime%-%endTime%" -o "%outputFile%"

echo Downloading to %outputFile%
pause

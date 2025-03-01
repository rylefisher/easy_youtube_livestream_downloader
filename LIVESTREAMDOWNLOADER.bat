@echo off
:: Update yt-dlp to the latest version
yt-dlp -U
yt-dlp --live-from-start -N 64 --cookies "C:\Users\dower\OneDrive\Desktop\cookies.txt"  https://www.youtube.com/live/PzyEJe5vn74?si=YJgBxxNMnWkV6okL  -o "%outputFile%"
pause

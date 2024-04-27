@echo off
set /p video_url="Enter YouTube Video URL: "
ytarchive --threads 6 -w -k -t --vp9 --merge --no-frag-files %video_url% best
pause

@echo off
set /p video_url="CTRL-C once to abruptly end and save. Enter YouTube Livestream Video URL: "
ytarchive --threads 6 -w -k -t --vp9 --merge --no-frag-files %video_url% best
pause

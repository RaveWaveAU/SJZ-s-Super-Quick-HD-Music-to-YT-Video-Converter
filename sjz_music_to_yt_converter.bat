@echo off
REM ==========================================================
REM  SJZ's Crazy Fast FFmpeg Static Image "HD" Music Video Creator (Single File)
REM  Output: MP4 with AAC audio, 1080p video
REM ==========================================================
REM This script takes one audio file and one static image,
REM creates a 1080p video with AAC audio at 320 kbps.
REM Works perfectly with Windows Media Player, VLC, and YouTube.
REM ==========================================================

REM --------------------------
REM === USER CONFIGURATION ===
REM --------------------------
REM Change folder or filenames as needed! On Windows, Shift+Ctrl+C will copy a file or folder as a Path for you to paste below.
REM --------------------------
REM Full path to your static image (JPEG, PNG, etc.)
set "IMAGE=C:\Users\user\Downloads\R-2590663-1319236717.jpg"

REM Full path to your audio file (WAV, FLAC, MP3, etc.)
set "AUDIO=C:\Users\user\OneDrive\Desktop\05 - Lani - Reach for the Sky.wav"

REM Output path for the resulting video (.mp4)
set "OUTPUT=C:\Users\user\Downloads\LaniSky.mp4"

REM --------------------------
REM === FFmpeg COMMAND ===
REM --------------------------
ffmpeg -loop 1 -framerate 2 -i "%IMAGE%" -i "%AUDIO%" -vf "scale=1920:1080:force_original_aspect_ratio=decrease,pad=1920:1080:(ow-iw)/2:(oh-ih)/2,format=yuv420p" -c:v libx264 -preset veryfast -crf 18 -tune stillimage -pix_fmt yuv420p -c:a aac -b:a 320k -shortest "%OUTPUT%"

echo Done! Output file: %OUTPUT%
pause


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
set "IMAGE=C:\EXAMPLE.jpg"

REM Full path to your audio file (WAV, FLAC, MP3, etc.)
set "AUDIO=D:\EXAMPLE.WAV"

REM Output path for the resulting video (.mp4)
set "OUTPUT=D:\output.mp4"

REM --------------------------
REM === FFmpeg COMMAND ===
REM --------------------------
REM Breakdown of FFmpeg options:
REM -loop 1                  : Repeat the input image for the entire video duration
REM -framerate 2             : Number of frames per second (2 fps is enough for static images)
REM -i IMAGE                 : Input image file
REM -i AUDIO                 : Input audio file
REM -vf "scale=1920:1080..." : Scale video to 1080p, keep aspect ratio, pad black bars if needed
REM -c:v libx264             : Video codec H.264 (widely supported)
REM -preset veryfast         : Encoding speed/efficiency tradeoff
REM -crf 18                  : Constant Rate Factor (quality, lower = better)
REM -tune stillimage          : Optimize encoding for static images
REM -pix_fmt yuv420p         : Pixel format (required for compatibility)
REM -c:a aac -b:a 320k       : Audio codec AAC at 320 kbps (high quality, compatible)
RE

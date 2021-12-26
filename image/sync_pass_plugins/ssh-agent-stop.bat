@echo off
SET PATH=%CD%\;%PATH%
ssh-agent -k
sc \\localhost stop ssh-agent
sc \\localhost delete ssh-agent
pause


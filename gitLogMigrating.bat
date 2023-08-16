@echo off
setlocal

set "gitLogPath=git_log.txt"
set "gitRepoPath=C:\code\test4gitLogMigrating\test4gitLogMigrating_from\java"

cd %gitRepoPath%

echo Exporting Git Log to %gitLogPath%
git log > %gitLogPath%

echo Git Log exported successfully!

endlocal

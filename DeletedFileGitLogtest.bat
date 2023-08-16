@echo off
setlocal

set "repo_path=C:\code\test4gitLogMigrating\test4gitLogMigrating_from"
set "output_folder=C:\code\test4gitLogMigrating\test4gitLogMigrating_from"

cd /d "%repo_path%"

git log --diff-filter=D --summary | findstr /C:"delete mode" > deleted_files.txt

endlocal
@echo off
setlocal

set "repo_path=C:\code\test4gitLogMigrating\test4gitLogMigrating_from"
set "output_folder=C:\code\test4gitLogMigrating\test4gitLogMigrating_from"

cd /d "%repo_path%"

git log --diff-filter=D --summary | findstr /C:"delete mode" > deleted_files.txt

for /f "tokens=2*" %%a in (deleted_files.txt) do (
    set "deleted_file=%%b"
    set "output_file=%output_folder%\%%~nxb_deleted_log.txt"
    git log -- "%%b" > "%output_file%"
    echo Git log for deleted file %%b has been exported to %output_file%.
)

del deleted_files.txt

endlocal

@echo off 
setlocal EnableExtensions DisableDelayedExpansion

set "search=href="/naemasite/""
set "replace=href="https://mahab339.github.io/naemasite/""

set "textFile=*"
set "rootDir=docs"

for /r %%j in ("%rootDir%\%textFile%") do (
    for /f "delims=" %%i in ('type "%%~j" ^& break ^> "%%~j"') do (
        set "line=%%i"
        setlocal EnableDelayedExpansion
        set "line=!line:%search%=%replace%!"
        >>"%%~j" echo(!line!
        endlocal
    )
)


endlocal
call runcrud.bat
if "%ERRORLEVEL%" == "0" goto browser
echo.
echo GRADLEW BUILD has errors - breaking work
goto fail

:fail
echo.
echo There were errors

:browser
start firefox http://localhost:8080/v1/task/getTasks
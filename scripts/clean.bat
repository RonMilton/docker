@echo off

REM Remove build folder
IF EXIST dist\docs-website\ (
  ECHO Removing docs-website...
  rd /S /Q dist\docs-website
) ELSE (
  ECHO Directory docs-website does not exist. Continuing...
)
REM Remove sass cache
IF EXIST docs\res\.sass-cache\ (
  ECHO Removing sass cache...
  rd /S /Q docs\res\.sass-cache
) ELSE (
  ECHO Directory .sass-cache does not exist. Continuing...
)

REM Stopping container
ECHO Stopping containers...
FOR /f "tokens=*" %%i IN ('docker ps -aq') DO docker stop %%i
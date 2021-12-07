:: Automatically attach to a created container (first created container if multiple) ::
@echo off
:: Get last (least recent) container by ID; this will be the last container appearing in the 'docker ps' command
FOR /F "tokens=1 skip=1 delims= %TAB%" %%v IN ('docker ps') DO SET lastContainerID=%%v
ECHO Attaching to Container ID=%lastContainerID%
:: Start attached terminal in new process.
START CMD /k docker exec -it %lastContainerID% bash

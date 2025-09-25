@echo off
setlocal

:: R�pertoire de sauvegarde (unique)
set TARGET_DIR=C:\SauvegardeNextcloud

:: Noms des volumes Docker
set VOLUME_HTML=nextcloud-docker_nextcloud
set VOLUME_DB=nextcloud-docker_db

:: Cr�er le dossier de sauvegarde s'il n'existe pas
if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%"

echo === Sauvegarde du volume : %VOLUME_HTML% ===
docker run --rm --platform linux/amd64 ^
    -v %VOLUME_HTML%:/volume ^
    -v "%TARGET_DIR%":/backup ^
    alpine tar -czf /backup/html.tar.gz -C /volume .

echo === Sauvegarde du volume : %VOLUME_DB% ===
docker run --rm --platform linux/amd64 ^
    -v %VOLUME_DB%:/volume ^
    -v "%TARGET_DIR%":/backup ^
    alpine tar -czf /backup/db.tar.gz -C /volume .

echo === Sauvegarde termin�e ===

pause
endlocal

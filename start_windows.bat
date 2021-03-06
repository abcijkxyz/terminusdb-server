set ScriptDir=%~dp0
mkdir "%APPDATA%\TerminusDB"
mkdir "%APPDATA%\TerminusDB\tmp"
set TERMINUSDB_SERVER_DB_PATH=%APPDATA%\TerminusDB\db
set TERMINUSDB_SERVER_REGISTRY_PATH=%APPDATA%\TerminusDB\registry.pl
set TERMINUSDB_SERVER_TMP_PATH=%APPDATA%\TerminusDB\tmp
set TERMINUSDB_SERVER_INDEX_PATH=%APPDATA%\TerminusDB\index.html
set TERMINUSDB_LOG_PATH=%APPDATA%\TerminusDB\httpd.log
set TERMINUSDB_SERVER_PACK_DIR=%ScriptDir%swipl\pack
if not exist "%TERMINUSDB_SERVER_DB_PATH%" "%ScriptDir%swipl\bin\swipl" "%ScriptDir%utils\db_init" -s localhost -k root --autologin=true
"%ScriptDir%swipl\bin\swipl.exe" "%ScriptDir%start.pl"

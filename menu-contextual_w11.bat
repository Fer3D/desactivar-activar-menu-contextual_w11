@echo off
setlocal

:: Comprobar si el menú contextual está desactivado
reg query "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" >nul 2>&1

if %errorlevel%==0 (
    echo El menu contextual de Windows 11 esta DESACTIVADO.
) else (
    echo El menu contextual de Windows 11 esta ACTIVADO.
)

echo.
echo Selecciona una opcion:
echo 1: Cambiar estado del menu contextual.
echo Cualquier otra tecla: Salir.
echo.
echo Recuerda darle a Enter.
echo.

set /p choice="Opcion: "

if %choice%==1 (
    :: Cambiar estado
    reg query "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" >nul 2>&1
    if %errorlevel%==0 (
        echo Activando menu contextual...
        reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f
    ) else (
        echo Desactivando menu contextual...
        reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
    )
    echo Reiniciando el explorador...
    taskkill /f /im explorer.exe
    start explorer.exe
    echo Los cambios se han efectuado con exito.
    timeout /t 10 >nul
) else (
    echo Saliendo...
)

endlocal
exit

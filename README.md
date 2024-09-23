# Script para Gestionar el Menú Contextual de Windows 11

Este script en formato `.bat` te permite comprobar si el nuevo menú contextual de Windows 11 está activado o desactivado, y te da la opción de cambiar su estado o salir de manera inmediata.

## Instrucciones

1. **Descargar y ejecutar el script**: Guarda el contenido del script en un archivo con la extensión `.bat`. Luego ejecútalo con privilegios de administrador para aplicar los cambios al registro de Windows.

2. **Opciones disponibles**:
   - **Cambiar el estado del menú contextual**: Al ejecutar el script, verás una opción que te permite cambiar el estado del menú contextual de Windows 11 escribiendo `1` y presionando `Enter`.
     - Si está activado, lo desactivará.
     - Si está desactivado, lo activará.
     - Después de realizar el cambio, el Explorador de Windows se reiniciará para aplicar los cambios y el script se cerrará automáticamente después de 10 segundos.
   
   - **Salir del script**: Si escribes `2` o cualquier otra tecla, el script mostrará un mensaje de salida y se cerrará de inmediato.

## Cómo funciona

El script realiza los siguientes pasos:

1. **Comprobación del estado actual**:
   - Utiliza el comando `reg query` para verificar si la clave del registro que controla el menú contextual de Windows 11 existe.
   - Si la clave existe, indica que el menú contextual está desactivado.
   - Si la clave no existe, indica que el menú contextual está activado.

2. **Cambio de estado**:
   - Si eliges cambiar el estado, el script añade o elimina la clave del registro correspondiente:
     - Para desactivar el menú contextual: añade la clave del registro.
     - Para activar el menú contextual: elimina la clave del registro.
   
3. **Reinicio del Explorador de Windows**:
   - El script reinicia automáticamente el proceso del Explorador de Windows (`explorer.exe`) para aplicar los cambios inmediatamente.

4. **Cierre del script**:
   - Si se realiza un cambio, el script espera 10 segundos antes de cerrarse.
   - Si eliges salir sin cambiar nada, el script se cierra de inmediato.

## Requisitos

- **Windows 11**: Este script está diseñado para trabajar en Windows 11 y modificar el comportamiento del menú contextual.
- **Privilegios de administrador**: Para modificar el registro y reiniciar el Explorador de Windows, se necesitan permisos de administrador.

## Advertencia

Modificar el registro de Windows puede causar problemas si no se realiza correctamente. Asegúrate de entender los cambios antes de ejecutarlos y, si es posible, realiza una copia de seguridad de tu registro.

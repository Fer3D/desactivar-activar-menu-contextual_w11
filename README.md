# Alternar menú contextual clásico / Windows 11

Script `.bat` que muestra si usas el menú **nuevo de Windows 11** o el menú **clásico** (estilo Windows 10) y te deja cambiar entre ambos.

![Menú nuevo de Windows 11](https://github.com/user-attachments/assets/d1777654-cf20-49bd-a917-bde8d0ca5e0f)

![Menú clásico](https://github.com/user-attachments/assets/0efcae95-69bf-4fee-a0b3-c50478518922)

## Uso rápido

1. Descarga o clona el repo y ejecuta `menu-contextual_w11.bat` (doble clic basta; **no hace falta administrador**).
2. El script indica el estado actual.
3. Escribe `1` y pulsa `Enter` para cambiar. Cualquier otra entrada + `Enter` sale sin tocar nada.
4. Si cambias: se reinicia el Explorador y la ventana se cierra a los ~10 segundos.

## Qué significa cada estado

| Mensaje del script | Qué ves al clic derecho |
|---|---|
| Menú de Windows 11 **ACTIVADO** | Menú nuevo (compacto) de Windows 11 |
| Menú de Windows 11 **DESACTIVADO** | Menú clásico completo (estilo Windows 10) |

El script **no desactiva** el menú contextual: solo cambia entre el estilo nuevo y el clásico.

## Cómo funciona

Cambia una entrada del registro de Windows de tu usuario:

- Si la entrada existe: menú clásico
- Si no existe: menú nuevo de Windows 11

Tras el cambio, reinicia el Explorador de archivos para aplicar al momento.

## Requisitos

- Windows 11
- Tu cuenta de usuario (no hace falta iniciar como administrador)

## Advertencia

Editar el registro puede dar problemas si se hace mal. Este script solo añade o borra esa clave concreta; aun así, conviene saber qué estás cambiando.

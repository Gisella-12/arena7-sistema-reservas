# Sistema de Reservas Arena 7

## Descripción

Sistema web para la gestión de reservas de canchas sintéticas, desarrollado como proyecto académico. El sistema permite administrar reservas de manera eficiente mediante un calendario interactivo, control de disponibilidad de canchas, generación de vouchers y reportes, utilizando una base de datos MySQL para almacenar la información.

---

## Tecnologías utilizadas

- HTML5
- CSS3
- JavaScript
- PHP
- MySQL
- XAMPP

---

## Funcionalidades

- Inicio de sesión con validación de usuario.
- Registro de reservas de canchas.
- Edición de reservas.
- Eliminación de reservas.
- Calendario de disponibilidad de canchas.
- Reportes con filtros por fecha, turno y DNI.
- Generación de voucher de reserva.
- Compartir voucher por WhatsApp.
- Búsqueda de clientes por DNI.
- Almacenamiento de la información en MySQL.

---

## Base de datos

El proyecto incluye el archivo **cancha_deportiva.sql**, el cual contiene la estructura de la base de datos y los registros necesarios para ejecutar correctamente el sistema.

Las tablas utilizadas son:

- usuarios
- clientes
- reservas

---

## Instalación

1. Instalar XAMPP.
2. Copiar la carpeta del proyecto a:

```text
C:\xampp\htdocs\
```

3. Iniciar los servicios **Apache** y **MySQL** desde el Panel de Control de XAMPP.

4. Abrir **phpMyAdmin** y crear una base de datos llamada:

```text
cancha_deportiva
```

5. Importar el archivo:

```text
cancha_deportiva.sql
```

6. Abrir el sistema desde el navegador:

```text
http://localhost/cancha-deportiva/
```

---

## Usuario de prueba

**Correo:**

```text
admin@arena7.com
```

**Contraseña:**

```text
Admin@2026
```

---

## Estructura del proyecto

```text
cancha-deportiva/
│── index.html
│── estilo.css
│── conexion.php
│── login.php
│── guardar_reserva.php
│── listar_reservas.php
│── editar_reserva.php
│── eliminar_reserva.php
│── logo.png
│── cancha_deportiva.sql
│── README.md
```

---

## Autores

- Arévalo Zapata, Aline Fiama
- Garcia Arias, Gisella Lorenza
- Quispe Mamani, Freddy Máximo
- Hoover Elar Dietche Matos Ascue
- Cuno Barrios, Fabrizio Joshue

---

## Licencia

Este proyecto fue desarrollado con fines académicos para el curso correspondiente y no está destinado para uso comercial.

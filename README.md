# Instagram Clone - Base de Datos (Proyecto de Práctica)

## 📌 Descripción

Este es un **proyecto de práctica** cuyo objetivo es diseñar y desarrollar la estructura de base de datos para una aplicación similar a Instagram.

El propósito principal del proyecto es **practicar conceptos de bases de datos relacionales**, incluyendo:

* Diseño de tablas
* Claves primarias
* Claves foráneas
* Relaciones entre entidades
* Restricciones como `UNIQUE`
* Integridad referencial

Este proyecto forma parte de mi proceso de aprendizaje en **desarrollo de software y bases de datos**.

---

## 🎯 Objetivo del proyecto

El objetivo de este proyecto es desarrollar la **estructura de base de datos de una red social básica**, donde los usuarios puedan:

* Registrarse en la plataforma
* Publicar imágenes
* Comentar publicaciones
* Dar "like" a imágenes
* Tener roles dentro del sistema

Este proyecto busca simular el funcionamiento básico de una red social tipo **Instagram** a nivel de base de datos.

---

## 🗄️ Tecnologías utilizadas

* **MySQL**
* * **LARAVEL**
* Motor de almacenamiento **InnoDB**

---

## 📊 Estructura de la base de datos

La base de datos está compuesta por las siguientes tablas:

### Roles

Almacena los roles de los usuarios dentro del sistema.

Campos principales:

* id
* name

---

### Users

Contiene la información de los usuarios registrados en la plataforma.

Campos principales:

* id
* role_id
* name
* surname
* nick
* email
* password
* image
* create_at
* update_at
* remember_token

Relación:

* Un usuario pertenece a un **rol**.

---

### Images

Almacena las imágenes publicadas por los usuarios.

Campos principales:

* id
* user_id
* image_path
* description
* create_at
* update_at

Relación:

* Una imagen pertenece a un **usuario**.

---

### Comments

Permite que los usuarios comenten las imágenes.

Campos principales:

* id
* user_id
* image_id
* content
* create_at
* update_at

Relaciones:

* Un comentario pertenece a un **usuario**
* Un comentario pertenece a una **imagen**

---

### Likes

Registra los "likes" que los usuarios dan a las imágenes.

Campos principales:

* id
* user_id
* image_id
* create_at
* update_at

Relaciones:

* Un like pertenece a un **usuario**
* Un like pertenece a una **imagen**

---

## 🔗 Relaciones del sistema

El modelo de datos sigue una estructura relacional:

Roles
└── Users
  └── Images
    ├── Comments
    └── Likes

Además:

* Los **usuarios** pueden comentar imágenes.
* Los **usuarios** pueden dar "like" a imágenes.

---

## 🚀 Propósito educativo

Este proyecto fue creado con fines **educativos y de práctica**, para fortalecer conocimientos en:

* Modelado de bases de datos
* SQL
* Relaciones entre tablas
* Integridad referencial

---

## 👨‍💻 Autor

**Andres Felipe Soto Quintero**

Estudiante de **Desarrollo de Software** interesado en seguir aprendiendo sobre:

* Programación
* Bases de datos
* Desarrollo web
* Arquitectura de software

---

## 📚 Nota

Este proyecto forma parte de mi proceso de aprendizaje y puede seguir evolucionando con nuevas funcionalidades y mejoras en el diseño de la base de datos.

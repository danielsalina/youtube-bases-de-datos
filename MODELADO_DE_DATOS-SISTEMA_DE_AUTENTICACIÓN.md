# Módelado De Datos - Sistema De Autenticación

## Identificar nuestras entidades

- 1.1 usuarios
- 1.2 roles
- 1.3 permisos

## Identificar los atributos de nuestras entidades

- 2.1 usuarios

  - 2.1.1 id_usuario
  - 2.1.2 username
  - 2.1.3 password
  - 2.1.4 email
  - 2.1.5 nombre
  - 2.1.6 apellido
  - 2.1.7 avatar
  - 2.1.8 activo
  - 2.1.9 fecha_creacion
  - 2.1.10 fecha_actualizacion

- 2.2 roles

  - 2.2.1 id_rol
  - 2.2.2 nombre
  - 2.2.3 descripcion

  - 2.3 permisos
  - 2.3.1 id_permiso
  - 2.3.2 nombre
  - 2.3.3 descripcion

  - 2.4 roles_por_usuarios
  - 2.4.1 id_rpu
  - 2.4.2 id_usuarios
  - 2.4.3 id_rol

  - 2.5 permiso_por_roles
  - 2.5.1 id_ppr
  - 2.5.2 id_rol
  - 2.5.3 id_permiso

- 3- Identificar las llaves PK y FK

  - 2.1 usuarios

    - PK 2.1.1 id_usuario

  - 2.2 roles

    - PK 2.2.1 id_rol

  - 2.3 permisos

    - PK 2.3.1 id_permiso

  - 2.4 roles_por_usuarios

    - PK 2.4.1 id_rpu
    - FK 2.4.2 id_usuarios
    - FK 2.4.3 id_rol

  - 2.5 permiso_por_roles
    - PK 2.5.1 id_ppr
    - FK 2.5.2 id_rol
    - FK 2.5.3 id_permiso

- 4- Identificar nuestras entidades pivote

  - 4.1 roles_por_usuarios

    - PK 4.1.2 id_rpu
    - FK 4.1.2 id_usuarios
    - FK 4.1.3 id_rol

  - 4.2 permisos_por_roles
    - PK 4.2.1 id_ppr
    - FK 4.2.2 id_rol
    - FK 4.2.3 id_permiso

- 5- Identificar nuestras entidades catálogos

  - 5.1 roles_por_usuarios
  - 5.2 permisos_por_roles

- 6- Identificar los tipos de relaciones entre las entidades

  - 6.1 usuarios tienen roles (m-m)
  - 6.2 roles tienen permisos (m-m)

- 7- Identificar los atributos que pueden ser únicos en nuestras entidades

  - 7.1 usuarios
    - UQ 7.1.2 username
    - UQ 7.1.4 email

- 8- Identificar los tipo de entidades

  - 8.1 usuarios (entidad de datos)
  - 8.2 roles (entidad de catálogo)
  - 8.3 permisos (entidad de catálogo)
  - 8.4 roles_por_usuarios (entidad de pivote)
  - 8.5 permiso_por_roles (entidad de pivote)

- 9- Crear el modelo relación de la base de datos

- 10- Identificar los tipos de datos de los atributos de nuestras entidades

- 11- Identificar las reglas de negocio (crud)

  - 11.1 usuarios

    - 11.1.1 crear un usuario.
    - 11.1.2 leer todos los usuarios.
    - 11.1.3 leer un usuario en particular.
    - 11.1.4 actualizar un usuario.
    - 11.1.5 validar un usuario.
    - 11.1.6 habilitar un usuario.
    - 11.1.7 inhabilitar un usuario.
    - 11.1.8 actualizar datos de un usuario.
    - 11.1.9 actualizar password de un usuario.
    - 11.1.10 eliminar un usuario.

  - 11.2 roles

    - 11.2.1 crear un rol.
    - 11.2.2 leer todos los roles.
    - 11.2.3 leer un rol en particular.
    - 11.2.4 actualizar un rol.
    - 11.2.5 eliminar un rol.

  - 11.3 permisos

    - 11.3.1 crear un permiso.
    - 11.3.2 leer todos los permisos.
    - 11.3.3 leer un permiso en particular.
    - 11.3.4 actualizar un permiso.
    - 11.3.5 eliminar un permiso.

  - 11.4 roles_por_usuarios

    - 11.4.1 crear un rpu.
    - 11.4.2 leer todos los rpu.
    - 11.4.3 leer un rpu en particular.
    - 11.4.4 leer todos los rpu de un usuario.
    - 11.4.5 eliminar un rpu.

  - 11.5 permisos_por_roles
    - 11.5.1 crear un ppr.
    - 11.5.2 leer todos los ppr.
    - 11.5.3 leer un ppr en particular.
    - 11.5.4 leer todos los ppr de un rol.
    - 11.5.5 eliminar un ppr.

# Primeros pasos en SQL

### COMENTARIOS

` -- Esto es un comentario de una linea`

```
/*
Esto es un comentario
Multilinea
*/
```

### CREAMOS NUESTRA BASE DE DATOS

```
CREATE DATABASE IF NOT EXISTS youtube_db;
```

### MOSTRAMOS TODAS LAS BASES DE DATOS QUE TENEMOS

```
SHOW DATABASES;
```

### ELIMINAMOS NUESTRA BASE DE DATOS

```
DROP DATABASE IF EXISTS youtube_db;
```

### MOSTRAMOS TODOS LOS USUARIOS DE NUESTRA BASE DE DATOS

```
SELECT USER FROM MYSQL.USER;
```

### CREAMOS EL USUARIO dsalinas CON LA PASSWORD dsalinas123

```
CREATE USER "dsalinas"@"localhost" IDENTIFIED BY "dsalinas123";
```

### OTORGAMOS PRIVILEGIOS DE CRUD EN TODAS LAS BASES DE DATOS Y TODAS LAS TABLAS AL USUARIO dsalinas

```
GRANT INSERT, SELECT, UPDATE, DELETE ON *.* TO "dsalinas"@"localhost";`
```

### OTORGAMOS TODOS LOS PRIVILEGIOS AL USUARIO dsalinas

```
GRANT ALL PRIVILEGES ON *.* TO "dsalinas"@"localhost";`
```

### ACTUALIZAMOS LOS PRIVILEGIOS

```
FLUSH PRIVILEGES;
```

### VERIFICAMOS LOS PRIVILEGIOS DEL USUARIO dsalinas

```
SHOW GRANTS FOR "dsalinas"@"localhost";
```

### RETIRAMOS TODOS LOS PRIVILEGIOS AL USUARIO dsalinas

```
  REVOKE ALL, GRANT OPTION FROM "dsalinas"@"localhost";
```

### ELIMINAMOS EL USUARIO dsalinas

```
DROP USER "dsalinas"@"localhost";
```

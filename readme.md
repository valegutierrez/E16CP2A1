# Actividad 32 - Postgresql Avanzado

#### En esta actividad trabajaremos con las diferentes queries desde el terminal de postgres.
#### Para desarrollar esta actividad, tendrán que anotar cada una de las queries que utilizaron en un archivo **txt** y subir los archivos comprimidos (zip) a la plataforma.
#### Deben también ingresar, al final de este archivo (txt), el nombre de los integrantes del grupo que participaron en el desarrollo de esta actividad.


## Ejercicio 1

##### Desarrollar una aplicación llamada pintagram. Esta aplicación debe permitir a los usuarios subir imágenes y que, a su vez, estas imágenes pertenezcan a ese usuario. Además los usuarios podrán darle like a las imágenes de otros usuarios. Cada una de las imágenes tendrá varios tags y cada uno de esos tags podrá referenciar a varias imágenes. En este ejercicio se tomarán en cuenta las consultas a 2 o más tablas y los constrains al momento de la creación de la tabla.

#### Restricciones (Investigar solución)

##### 1. Un usuario no puede darle like 2 veces a una imagen.
##### 2. Una imagen puede tener varios tags sin repetirse.


#### Crear base de datos en base a los requerimientos indicados.
 
## Checkpoints
1. **Antes de empezar a crear la base de datos deben leer todas las instrucciones, modelar la base y generar un diagrama que tendrán que adjuntar a las respuestas de este ejecticio.**
2. Ingresar 2 imagenes por usuario.
3. Ingresar 3 likes por cada imagen.
4. Ingresar 8 tags.
5. Ingresar 3 tags por imagen.
6. Crear una consulta que muestre el nombre de la imagen y la cantidad de likes que tiene esa imagen.
7. Crear una consulta que muestre el nombre del usuario y los nombres de las fotos que le pertenecen.
8. Crear una consulta que muestre el nombre del tag y la cantidad de imagenes asociadas a ese tag. 

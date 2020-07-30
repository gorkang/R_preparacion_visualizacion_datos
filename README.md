# R para preparación y visualización de datos

Doctorado en Neurociencia Social y Cognición, Facultad de Psicología, UAI

Gorka Navarrete, ORCID: [0000-0001-7678-8656](http://orcid.org/0000-0001-7678-8656)


En este repositorio se encuentran los materiales del workshop *R para preparación y visualización de datos*. El curso está centrado en el uso de R para la preparación y visualización de datos, además de la generación de reportes reproducibles.


## Objetivos

Aportar herramientas básicas para trabajar de manera autónoma con R y RStudio para el proceso de importación, transformación, visualización y reporte de datos.

Al finalizar el curso deberíamos ser capaces de:  

* Importar archivos de datos, transformar los datos, crear nuevas variables.
* Realizar análisis de datos exploratorios, visualizar distribuciones y comparar grupos.
* Generar reportes reproducibles con RMarkdown.


## Como empezar

Puedes lanzar el siguiente código desde la Consola de RStudio para descargar los materiales del curso:

`if (!require('usethis')) install.packages('usethis'); library('usethis')`

`usethis::use_course("gorkang/R_preparacion_visualizacion_datos")`  

Sigue las instrucciones que aparecen en la Consola para tener un nuevo proyecto de RStudio con todos los materiales del curso. El codigo anterior creará una carpeta llamada `R_preparacion_visualizacion_datos-master`. Dentro de esa carpeta tendrás un archivo llamado `R_preparacion_visualizacion_datos.Rproj` que te permitirá abrir el proyecto de RStudio del workshop.  

La carpeta `R_preparacion_visualizacion_datos-master` contiene varias cosas. Las mas importantes son:  

- Carpeta `_book`: puedes abrir `book/index.html` en tu navegador para ver el "libro" de este curso  
- Carpeta `Rmd`: En esa carpeta esta el codigo fuente de los capitulos del libro  
- Carpeta `data`: Cuando usemos archivos de datos, vendrán de aquí  


### Whoooot?

Si lo de arriba no tiene sentido:  

1. Descargate este workshop (`Download ZIP`; ver abajo)
2. Descomprime el ZIP  
3. Abre el archivo: `R_preparacion_visualizacion_datos-master/_book/preparando-sistema.html`  
4. Sigue las instrucciones que ahí aparecen  

![](data/images/download_repo_manually.png)  

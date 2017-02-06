# ListPokemon
El proyecto se compone de:    
+ Archivos .java y de recursos de Android    
+ Archivo PHP jsonElena.php    
+ Archivo SQL Pokemon.sql, donde se encuentran las sentencias para crear la tabla usada    

El proyecto es una lista de tipo Master-Detail en la que encontramos:    
1. Una lista con nombres de Pokemon    
2. Al pulsar en algún elemento de la lista obtenemos el detalle, el cual incluye:    
+ Nombre    
+ Descripción    
+ Foto en un Webview    

Los datos se obtienen de un servidor el cual hace uso del archivo PHP **jsonElena.php**, que transforma los datos de la base de datos en datos JSON para ser tratados en Android.    

## English translation    
The project is composed by the following archives:    
+ Android .java and resources archives    
+ PHP archive jsonElena.php    
+ SQL archive Pokemon.sql with sql sentences to generate the used table    

The project is a Master-Detail list in which we have:    
1. A Pokemon list    
2. The detail of the Pokemon, including:    
+ Name    
+ Description    
+ Webview with photo    

Data is recovered via server. It is used the PHP archive **jsonElena.php**, which parses database data into JSON data in order to be processed in Android.    

<?php
  $server = "localhost";
  $user = "root";
  $pass = "clave";
  $bd = "BDElena";
  //Creamos la conexion
  $conexion = mysqli_connect($server, $user, $pass,$bd)
  or die("Ha sucedido un error inesperado en la conexion de la base de datos");
  //generamos la consulta
  $sql = "SELECT * FROM Pokemon";
  mysqli_set_charset($conexion, "utf8"); //formato de datos utf8

  if(!$result = mysqli_query($conexion, $sql)) die();
  $pokemon = array(); //creamos un array
  while($row = mysqli_fetch_array($result))
  {
    $id=$row['Id'];
    $nombre=$row['Nombre'];
    $foto=$row['UrlImagen'];
    $descripcion=$row['Descripcion'];
    $pokemon[] = array('Id'=> $id, 'Nombre'=> $nombre, 'UrlImagen'=> $foto, 'Descripcion'=>$descripcion);
  }
  //desconectamos la base de datos
  $close = mysqli_close($conexion)
  or die("Ha sucedido un error inesperado en la desconexion de la base de datos");
  //Creamos el JSON
  $json_string = json_encode($pokemon);
  echo " { pokemon: ".$json_string." }";
  //Si queremos crear un archivo json, sería de esta forma:
  //$file = 'pokemon.json';
  //file_put_contents($file, $json_string);
?>

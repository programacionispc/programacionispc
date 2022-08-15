


create table tbdueño (

dni char (50) primary key ,
nombre varchar (50),
apellido varchar (50),
telefono char(50),
direccion varchar(50),












);




create table tbperro(

id_perro int primary key,
nombre varchar (50),
fecha_de_nacimiento date,
sexo varchar(50),
dni_dueño char(50) foreign key  (dni_dueño) references tbdueño (dni),






);



create table tbhistorial(

id_historial int primary key,
fecha  date,

dni_dueño char(50) foreign key  (dni_dueño) references tbdueño (dni),
perro   varchar(50) ,
descripcion   varchar (60),
monto  varchar (60),






);//*INSERTAR EN VALORES dueno ( 39732406 , ' Ariel ' , ' Frutos ' , 1138843939 , ' Iclama 5565 ' );
INSERTAR EN VALORES perro ( 1 , ' Bobby ' , ' 2012-05-22 ' , ' Macho ' , 39732406 );
INSERTAR EN historial VALORES ( 1 , ' 2014-06-30 ' , ' Primeras vacunas ' , 2500 , 1 );

# EJERCICIO N°3 - ARIEL FRUTOS
# Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial,
# algún animal que ya no sea atendido desde hace mucho tiempo.
SELECCIONA  *  DESDE historial DONDE fecha ENTRE ' 2010-01-01 '  Y  ' 2015-01-01 ' ;
SET FOREIGN_KEY_CHECKS = 0 ;
ELIMINAR  DESDE perro DONDE id_perro =  1 ;
SET FOREIGN_KEY_CHECKS = 1 ;

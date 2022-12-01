--DECLARACIÓN DE LIBRERÍAS
library ieee;
use ieee.std_logic_1164.all; --En esta librería están la mayoría de los tipos de datos que usamos.


--En esta herramienta las identaciones no generan error en la compilación, pero son buenas para ordenar la descripción.

--DECLARACIÓN DE ENTIDAD.  (Es decir puertos de entrada y salida. Sería como poner el bloque con las entrada y salidas)

entity parte_A is    --El nombre de la entidad conviene que sea igual al archivo.
	port ( a,b:in std_logic; --En este caso podría declararla como bit.No tendría la opción de alta Z o que el pin esté desconectado.
	       salida: out std_logic	
	);
end parte_A; --Dependiendo la versión de la herramienta se puede poner solo end y listo.


--DECLARACIÓN DE ARQUITECTURA.  (Es decir la descricpion del comportamiento del circuito)

architecture combinacional of parte_A is
---Si hubiese acá se declararían las signal and component.
 
 begin 
	salida<=not(a or b);
end combinacional; --(se cierra la arquitectura)
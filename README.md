# README

Al hacer ruby -v me muestra ruby 2.6.3p62. No he probado si funciona con otras versiones de ruby pero supongo que sí, sobretodo si son superiores pero como digo no lo he comprobado aún.

Crear directorio donde instalar el proyecto.
Con rvm podemos instalar versiones de ruby por directorios si no estoy equivocado. Situarse en el directorio deseado y ejecutar el siguiente comando en el:
rvm install ruby-2.6.3p62

gem install rails -v 5.1.4 // IMPORTANTE es la versión que utilizo

Descargamos el proyecto y nos situamos en la raíz de dicho proyecto.

Si todo ha salido bien ejecutamos desde la raíz del proyecto:

bundle install
 
y ejecutamos las migraciones con

db:migrate

Si despues de estos está todo correcto:

rails server // para iniciar el proyecto

En el navegador accedemos a:

localhost:3000

Creo que no me olvido de nada. Espero que funcione.

Cualquiera duda que pueda aclarar avísame.





<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <!-- COGEME ESTO Y LE DAS ESTA FORMA-->
    <!-- una PLANTILLA POR CADA NODO
se puede coger la raiz / o biblioteca-->
    <xsl:template match="/">
        <!-- cogeme esto y lo sustituyes por lo que venga-->

        <html>
            <head>
                <title>Transformación Ejercicio 5</title>
                <meta charset="UTF-8" />
                <style>
                    table,th,td{border:1px solid black}
                    table{border-collapse: collapse}

                </style>

            </head>
            <body>
               <h1> <xsl:value-of select="ies/@nombre"/></h1>
               <!-- cuando queramos que en una transformación un atributo tome el valor que hay que coger del xml
                no se puede hacer con "<xsl:value-of select="ies/@web"/>"
            ¿COMO SE HACE?
                despues justo que escribir la etiqueta, le escribo un atributo-->
               <p>Página web: <a><xsl:attribute name="href"><xsl:value-of select="ies/@web"/></xsl:attribute>
                  
                
                <xsl:value-of select="ies/@web"/></a></p>

               <table>
                   <tr>
<th>Nombre del ciclo</th>
<th>Grado</th>
<th>Año d titulo</th>
<xsl:apply-templates/>

                   </tr>

              </table>
            </body>


        </html>

    </xsl:template>

    <xsl:template match="ciclo"> 
     <tr>
         
           <td><xsl:value-of select="nombre"/></td> 
           <td><xsl:value-of select="grado"/></td> 
           <td><xsl:value-of select="decretoTitulo/@año"/></td> 
     </tr>
    </xsl:template>



</xsl:stylesheet>
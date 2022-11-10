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
                

            </head>
            <body>
               <h1> <xsl:value-of select="ies/@nombre"/></h1>
               <!-- cuando queramos que en una transformación un atributo tome el valor que hay que coger del xml
                no se puede hacer con "<xsl:value-of select="ies/@web"/>"
            ¿COMO SE HACE?
                despues justo que escribir la etiqueta, le escribo un atributo-->
               <p>Página web: <a><xsl:attribute name="href"><xsl:value-of select="ies/@web"/></xsl:attribute>
                   
                
                <xsl:value-of select="ies/@web"/></a></p>
               <ul>
               <xsl:apply-templates/></ul>
            </body>


        </html>

    </xsl:template>

    <xsl:template match="ciclo"> 
     
         
           <li><xsl:value-of select="nombre"/></li> 
      
    </xsl:template>



</xsl:stylesheet>
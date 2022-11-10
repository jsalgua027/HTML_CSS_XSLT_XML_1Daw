<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <!-- COGEME ESTO Y LE DAS ESTA FORMA-->
    <!-- una PLANTILLA POR CADA NODO
se puede coger la raiz / o biblioteca-->
    <xsl:template match="/">
        <!-- cogeme esto y lo sustituyes por lo que venga-->

        <html>
            <head>
                <title>Transformación Ejercicio 1</title>
                <meta charset="UTF-8" />

            </head>
            <body>
                <!--<h1>Información de mis Libros</h1>-->
                 <!--Cuando acaba, mira si hay más templates y me lo aplica-->
                <xsl:apply-templates/>
            </body>


        </html>

    </xsl:template>

    <xsl:template match="ciclo">
       <xsl:value-of select="nombre"/>


        <xsl:apply-templates/>


    </xsl:template>



</xsl:stylesheet>
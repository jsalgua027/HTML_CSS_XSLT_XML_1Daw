<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <!-- COGEME ESTO Y LE DAS ESTA FORMA-->
    <!-- una PLANTILLA POR CADA NODO
se puede coger la raiz / o biblioteca-->
    <xsl:template match="/">
        <!-- cogeme esto y lo sustituyes por lo que venga-->

        <html>
            <head>
                <title>Transformación 1</title>
                <meta charset="UTF-8" />

            </head>
            <body>
                <h1>Información de mis Libros</h1>
                 <!--Cuando acaba, mira si hay más templates y me lo aplica-->
                <xsl:apply-templates/>
            </body>


        </html>

    </xsl:template>

    <xsl:template match="libro">
        <p><b>Titulo: </b><xsl:value-of select="titulo"/>
        ,<b> Autor: </b><xsl:value-of select="autor"/>
        <b> Fecha Publicación: </b><xsl:value-of select="fechaPublicacion/@año"
        /><!-- ATRIBUTOS PARA ACCEDER /@NOMBREATRIBUTO-->
        </p>
        <xsl:apply-templates/>


    </xsl:template>



</xsl:stylesheet>
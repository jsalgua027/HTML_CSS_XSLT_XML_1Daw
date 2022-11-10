<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion</title>
                <meta charset="UTF-8"></meta>
            </head>
            <body>
                <h1>Tranformacion</h1>
                <xsl:apply-templates/>

            </body>

        </html>



    </xsl:template>
    <xsl:template match="libro">
    <p>Titulo: <xsl:value-of select="titulo"/>;Autor: <xsl:value-of select="autor"/>
        ;Fecha Publicacion: <xsl:value-of select="fechaPublicacion/@año"/></p>    


    </xsl:template>




</xsl:stylesheet>
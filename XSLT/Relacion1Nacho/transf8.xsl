<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <!-- COGEME ESTO Y LE DAS ESTA FORMA-->
    <!-- una PLANTILLA POR CADA NODO
se puede coger la raiz / o biblioteca-->
    <xsl:template match="/">
        <!-- cogeme esto y lo sustituyes por lo que venga-->

        <html>
            <head>
                <title>Transformación Ejercicio 8</title>
                <meta charset="UTF-8" />


            </head>
            <body>
                <h1>
                    Ciclos Formativos del
                    <xsl:value-of select="ies/@nombre" />
                </h1>
                <ul>

                    <xsl:apply-templates />
                </ul>

            </body>


        </html>

    </xsl:template>

    <xsl:template match="ciclo">
        <li>
            <xsl:value-of select="@id" />
            <br />

            <xsl:value-of select="nombre" />
            , ciclo Formativo de Grado
            <xsl:value-of select="grado" />
            creado en
            <xsl:value-of select="decretoTitulo/@año" />
        </li>
    </xsl:template>


</xsl:stylesheet>
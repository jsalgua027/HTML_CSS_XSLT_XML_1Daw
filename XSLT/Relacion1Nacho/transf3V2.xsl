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
            <style>
                .rojo{color:red}
                .azul{color:blue}
                .verde{color:green}
            </style>

            </head>
            <body>
                <h1>prueba</h1>

                <ul>
                    <!--<h1>Información de mis Libros</h1>-->

                    <xsl:for-each select="ies/ciclos/ciclo">
                        <!--  otra forma que recorra los ciclos-->
                        <xsl:sort select="nombre" order="descending"/>
                        <!-- ordenalo por nombre y al reves -->
                            
                        <xsl:choose>
                                <xsl:when test="decretoTitulo/@año &lt; 2009">

                                            <li><span class="rojo"><xsl:value-of select="nombre"/></span></li>

                                </xsl:when>
                                
                                <xsl:when test="decretoTitulo/@año = 2009">

                                            <li><span class="rojo"><xsl:value-of select="nombre"/></span></li>

                                </xsl:when>
                                
                                <xsl:otherwise>

                                            <li><span class="verde"><xsl:value-of select="nombre"/></span></li>

                                </xsl:otherwise>



                        </xsl:choose>   


                       
                       
                       


                    </xsl:for-each>
                </ul>
            </body>


        </html>

    </xsl:template>

    
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!--  m²   -->
    <xsl:template match="/">
        <html lang="es">
            <head>
                <title>Examen Nacho</title>
                <style>
                    td img{height: 100px}
                </style>
            </head>

            <body>
                <h1>Informacion de los continentes</h1>
                <ol>
                    <xsl:for-each select="geografia/continentes/continente">
                        <xsl:sort select="." order="ascending" />

                        <li>
                            <h2>
                                <xsl:value-of select="@nombre" />
                            </h2>
                        </li>
                        <ul>
                            <xsl:for-each select="pais">
                                <xsl:sort select="." order="descending" />

                                <li>
                                    <a>
                                        <xsl:attribute name="href">
                                            #
                                            <xsl:value-of select="." />

                                        </xsl:attribute>
                                        <xsl:value-of select="." />
                                        <br />

                                    </a>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </xsl:for-each>
                </ol>
                 <h1>Información de los Paises</h1>
                
                    <xsl:for-each select="geografia/paises/pais">

                    <xsl:sort select="@nombre" order="ascending"/>

                    <li class="paises"><b>
                        <xsl:value-of select="@nombre"/>
                        </b>
                        <h3>
                            <xsl:attribute name="id">
                                <xsl:value-of select="@nombre"/>
                            </xsl:attribute>
                        
                        </h3>
                                 
                      </li>
                    <table>
                        <tr>
                            <td>

                                <p><strong>Sistema de Gobierno: </strong>
                                    <xsl:value-of select="sistema"/></p>
                                
                                    <p> <strong>Superficie: </strong>
                                    <xsl:value-of select="superficie"/></p>
                                                                                          
                                    <p> <strong>Idioma: </strong>
                                    <xsl:value-of select="idioma"/></p>
                                                                
                                  <p><strong>Moneda: </strong>
                                    <xsl:value-of select="moneda"/></p>
                                
                                
                                <xsl:for-each select="moneda">
                                
                                <xsl:if test="@antigua!= ''">
                                    <p>
                                        <strong>Modena Antigua: </strong>
                                        <xsl:value-of select="."/>
                                    </p>
                                    </xsl:if>
                              </xsl:for-each>
                            </td>
                            <td class="esp">
                                <img>
                                    <xsl:attribute name="src">Img/<xsl:value-of select="@nombre"/>.png</xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="@nombre "/>
                                    </xsl:attribute>
                                </img>

                            </td>


                        </tr>
                    </table>

                </xsl:for-each>
                
                
            </body>
        </html>
     </xsl:template>   
</xsl:stylesheet>           
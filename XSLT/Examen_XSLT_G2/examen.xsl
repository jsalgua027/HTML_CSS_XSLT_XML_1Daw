<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!--  m²   -->
    <xsl:template match="/">
        <html lang="es">
            <head>
                <title>Examen IMAD</title>
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
                <h1>Informacion de los paises</h1>
                <ol>
                    <xsl:for-each select="geografia/paises/pais">
                        <li>
                            <h2>
                                <xsl:attribute name="id">
                                    <xsl:value-of select="@nombre" />
                                </xsl:attribute>
                                <xsl:value-of select="@nombre" />
                            </h2>
                        </li>
                        <table>
                            <tr>
                                <td>

                                    <p>
                                        <strong>Sistema de gobierno: </strong>
                                        <xsl:value-of select="sistema" />
                                    </p>
                                    <p>
                                        <strong>Superficie: </strong>
                                        <xsl:value-of select="superficie" />

                                    </p>
                                    <p>
                                        <strong>Idioma: </strong>
                                        <xsl:value-of select="idioma" />

                                    </p>
                                    <xsl:for-each select="moneda">
                                        <xsl:choose>
                                            <xsl:when test="@antigua!=''">
                                                <p>
                                                    <strong>Moneda Antigua: </strong>
                                                    <xsl:value-of select="." />
                                                </p>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <p>
                                                    <strong>Moneda: </strong>
                                                    <xsl:value-of select="." />
                                                </p>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:for-each>

                                </td>
                                <td>
                                    <img>
                                        <xsl:attribute name="src">Img/<xsl:value-of select="@nombre" />.png</xsl:attribute>
                                        <xsl:attribute name="title">
                                            <xsl:value-of select="@nombre" />
                                        </xsl:attribute>
                                    </img>
                                </td>
                            </tr>
                        </table>
                    </xsl:for-each>
                </ol>

            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
       

        <html>
            <head>
                 <title>RELACIÓN 3. EJERCICIO 7</title>
                <meta charset="UTF-8" />
                <style>
                    table,th,td{border:1px solid black}
                    table{border-collapse: collapse; width:80%; margin:0 auto;
                    text-align: center}
                    th{background-color: #CCC}
                    <!-- colores-->
                    .verde{background-color:green}
                .azul{background-color:blue}
                .rojo{background-color:red}
                img{widht:50px; height:50px}
                </style>
            </head>
            
            <body>
                    <table>
                        <tr>
                            <th colspan="3">Articulos de mi tienda</th>
                        </tr>
                <xsl:for-each select="tienda/producto">
                     <!-- la clase la pones en el td cuando quieres que ocupe toda la casilla-->
                     <tr>
                        <xsl:choose>
                          <xsl:when test="precio &lt;= 100">

                            <td  class="verde"><xsl:value-of select="codigo"/></td>


                            <td  class="verde"><xsl:value-of select="articulo"/></td>

                            <td  class="verde"><xsl:value-of select="cantidad"/></td>
                            <td><img>
                                <xsl:attribute name="src">
                                <xsl:value-of select="imagen"/>
                                </xsl:attribute>
                            </img></td>

                        </xsl:when>
                         <xsl:when test="precio &lt; 1000 ">

                            <td  class="azul"><xsl:value-of select="codigo"/></td>


                            <td  class="azul"><xsl:value-of select="articulo"/></td>

                            <td  class="azul"><xsl:value-of select="cantidad"/></td>
                            <td><img>
                                <xsl:attribute name="src">
                                <xsl:value-of select="imagen"/>
                                 </xsl:attribute>
                            </img></td>
                        </xsl:when>

                          <xsl:otherwise>
                            <td  class="rojo"><xsl:value-of select="codigo"/></td>
 
 
                             <td  class="rojo"><xsl:value-of select="articulo"/></td>
 
                             <td  class="rojo"><xsl:value-of select="cantidad"/></td>
                             <td><img>
                                <xsl:attribute name="src">
                                <xsl:value-of select="imagen"/>
                                 </xsl:attribute>
                            </img></td>

                           </xsl:otherwise>
                      </xsl:choose>

                   </tr>

                </xsl:for-each>
            </table>

            
            </body>


        </html>

    </xsl:template>
</xsl:stylesheet>
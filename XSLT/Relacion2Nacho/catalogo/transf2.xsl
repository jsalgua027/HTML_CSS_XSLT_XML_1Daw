<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
       

        <html>
            <head>
                <title>transformacion 2 </title>
                <meta charset="UTF-8" />
                <style> <!--PONER BORDE Y ESTILO A LA TABLA -->
                    table,th,td{border:1px solid black}
                    table{border-collapse: collapse; width:80%; margin:0 auto;
                    text-align: center}
                    th{background-color: #CCC}
                    .rojo{background-color: red}
                    .verde{color: green}
        
                    <!--colores -->
                    
        
                         </style>
             
            </head>
            <body>
                <table>
                        <tr><th>titulo</th></tr>
                
                        <xsl:for-each select="catalogo/cds/cd">
                        <xsl:choose>
                            <xsl:when test="año &lt; 2000"> 
                                <tr><td><span class="rojo"><xsl:value-of select="titulo"/></span></td></tr>
                            </xsl:when>
                            <xsl:when test="año &gt; 2000">
                                <tr><td><span class="verde"><xsl:value-of select="titulo"/></span></td></tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr><td><span><xsl:value-of select="titulo"/></span></td></tr>

                            </xsl:otherwise>



                        </xsl:choose>
                    
                        </xsl:for-each>

            </table>
             
            </body>


        </html>

    </xsl:template>

   

</xsl:stylesheet>
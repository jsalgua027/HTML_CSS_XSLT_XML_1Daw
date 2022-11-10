<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
       

        <html>
            <head>
                 <title>RELACIÓN 4 ejercicio2</title>
                <meta charset="UTF-8" />
               
            </head>
            
            <body>
                <dl>
                   <xsl:for-each select="horario/dia"> 
                    <xsl:choose>
                        <xsl:when test="numdia = 1">
                            <p>
                                Lunes 
                           </p>

                        </xsl:when>
                        
                        <xsl:when test="numdia = 2">
                            <p>
                                Martes
                           </p>

                        </xsl:when>

                        <xsl:when test="numdia = 4">
                            <p>
                                Miercoles
                           </p>

                        </xsl:when>

                        <xsl:when test="numdia = 3">
                            <p>
                                Jueves
                           </p>

                        </xsl:when>
                        
                        <xsl:otherwise>

                            <p>
                                Viernes

                            </p>

                        </xsl:otherwise>
                       
                    </xsl:choose>   
                       
                    <ul>
                        <xsl:for-each select="tarea">
                            <li><b><xsl:value-of select="nombre" />-</b> Prioridad:<xsl:value-of select="@prioridad" /><br />
                                De <xsl:value-of select="hora-ini" /> a <xsl:value-of select="hora-fin" /></li>
      
                                
                              
                        </xsl:for-each>

                    </ul>
                        
                   </xsl:for-each>     
                </dl>
            </body>


        </html>

    </xsl:template>
</xsl:stylesheet>
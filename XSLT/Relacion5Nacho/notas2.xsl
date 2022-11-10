<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
       

        <html>
            <head>
                 <title>Notas</title>
                <meta charset="UTF-8" />
                <style>
                    h1{color: red}
                    table,td,th{border: 1px solid black}
                    table{border-collapse:collapse}
                    th{background-color: blue}
                    body{  width:50%; margin: 0 auto}
                    .rojo{color: red}
                    .verde{color: green}
                    .amarillo{color: yellow}
                    img{width:65px}
                </style>
               
            </head>
            
            <body>
                <h1>Calificaciones de la convocatoria de Junio</h1>
                <table>

                    <tr>
                        <th colspan="3"><b>datos</b></th>
                        <th colspan="4"><b>Notas</b></th>
                    </tr>
                    <tr>
                        <th><b>Nombre</b></th>
                        <th><b>Apellidos</b></th>
                        <th><b>Fotos</b></th>
                        <th><b>Tareas</b></th>
                        <th><b>Cuestionarios</b></th>
                        <th><b>Examenes</b></th>
                        <th><b>Final</b></th>

                    </tr>
                   
                                         
                        <xsl:for-each select="notas/alumno">
                        <xsl:if test="@convocatoria='Septiembre'">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="apellidos"/></td>
                            <td> <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="imagen"/>
                                </xsl:attribute>

                            </img></td>
                            <td><xsl:value-of select="tareas"/></td>
                            <td><xsl:value-of select="cuestionarios"/></td>
                            <td><xsl:value-of select="examen"/></td>
                            <td>    
                                <xsl:choose>
                                    <xsl:when test="final &gt; 9">
                                       <span class="verde"><xsl:text>Sobresaliente</xsl:text></span> 
                                    </xsl:when>
                                    <xsl:when test="final &gt;7">
                                       <span class="verde"><xsl:text>Notable</xsl:text></span> 
                                    </xsl:when>
                                    <xsl:when test="final &gt; 6">
                                       <span class="verde"><xsl:text>Bien</xsl:text></span> 
                                    </xsl:when>
                                    <xsl:when test="final &gt; 5 ">
                                       <span class="amarillo"><xsl:text> Suficiente</xsl:text></span> 
                                    </xsl:when>
                                    
                                    <xsl:otherwise>
                                        <span class="rojo"><xsl:text> Suspendido</xsl:text></span> 
                                    </xsl:otherwise>



                                </xsl:choose>
                            </td>

                        </tr>
                     
                    </xsl:if>   
                   
                       </xsl:for-each>
                    
                                                             


                </table>


            </body>


        </html>

    </xsl:template>
</xsl:stylesheet>
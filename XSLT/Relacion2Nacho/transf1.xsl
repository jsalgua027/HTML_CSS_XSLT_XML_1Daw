<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <!-- cogeme esto y lo sustituyes por lo que venga-->

        <html>
            <head>
                <title>RELACIÓN 2. EJERCICIO 1</title>
                <meta charset="UTF-8" />
                <style> <!--PONER BORDE Y ESTILO A LA TABLA -->
            table,th,td{border:1px solid black}
            table{border-collapse: collapse; width:80%; margin:0 auto;
            text-align: center}
            th{background-color: #CCC}

            <!--colores -->
            .rojo{color:red}

                 </style>

            </head>
            <body>
                <h1>EJERCICIO 1.</h1>
                <p>Mostrar una tabla con las siguientes columnas ordenadas por el título del libro:
                    a -Título del libro, en color rojo si el precio es mayor de 100, añadiéndole el texto "(Caro)" a
                    continuación.
                    b- Autores del libro mostrando primero el nombre y luego el apellido. Si hay más de un
                    autor se muestran todos en la misma celda. Si no hay autor se deja en blanco.
                    c-Editores del libro mostrando el nombre, el apellido y la afiliación. Si hay más de un editor
                    se muestran todos en la misma celda. Si no hay editor se deja en blanco.</p>
                <table>
                    <!--CABECERAS -->
                    <tr>
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Editor</th>
                    </tr>
                    <!--FOR EACH HASTA LIBRO! POR CADA LIBRO UNA TR CON TD-->
                    <!--4 FILAS 3 COLUMNAS. por cada uno de los libros tr-->
                  
                    <xsl:for-each select="bib/libro">
                        <!--ORDENAR POR titulo-->
                        <xsl:sort select="titulo" order="ascending" />

                        <!--tr y td de la tabla TR ROW FILA  -  TD COLUMNAS-->
                        <tr>

                            <td> <!--valores del titulo -->
                                <xsl:choose>
                                    <xsl:when test="precio &gt; 100">
                                      <span class="rojo"><xsl:value-of select="titulo" /> (Caro)</span> 
                                    </xsl:when>
                                    <xsl:otherwise>

                               
                                        <xsl:value-of select="titulo" />
                                  </xsl:otherwise>
                            </xsl:choose>
                            </td>
                            
                            <td>
                                <xsl:for-each select="autor">
                                    <xsl:value-of select="nombre"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="apellido"/>
                                    <br/>
                              </xsl:for-each>
                               
                            </td>
                            
                            <td>
                                <xsl:for-each select="editor">
                                    <xsl:value-of select="nombre"/> 
                                    <xsl:text> </xsl:text> 
                                    <xsl:value-of select="apellido"/> / 
                                    <xsl:value-of select="afiliacion"/>
                              </xsl:for-each>
                            </td>
                        
                        
                        </tr>


                    </xsl:for-each>

                </table>
            </body>


        </html>

    </xsl:template>

    <xsl:template match="ciclo">
        <xsl:value-of select="nombre" />


        <xsl:apply-templates />


    </xsl:template>


</xsl:stylesheet>
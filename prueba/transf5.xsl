
     <?xml version="1.0" encoding="UTF-8"?>
     <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
     
         <xsl:template match="/">
             <html>
                 <head>
                     <title>Transformacion</title>
                     <meta charset="UTF-8"></meta>
                 </head>
                 <body>
                     <h1><xsl:value-of select="ies/@nombre"/></h1>
                     <ul>
                        <xsl:apply-templates/>
                     </ul>
                    
     
                 </body>
     
             </html>
     
     
     
         </xsl:template>
         <xsl:template match="ciclo">
         <p>Titulo: <xsl:value-of select="nombre"/>
            
     
     
         </xsl:template>
     
     
     
     
     </xsl:stylesheet>   

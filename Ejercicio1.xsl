<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    
    <xsl:template match="ies">
        <html>
            <head>
                <tittle>Ejercicio 1 - "Introducció a XPATH."</tittle>
            </head>
            <body>
                <h5>1. Nombre del instituto:</h5>
                <p><xsl:value-of select="//nombre[1]"/></p>

                <h5>2. Página web del instituto:</h5>
                <p><xsl:value-of select="//web"/></p>

                <h5>3. Nombre de los Ciclos Formativos:</h5>
                <xsl:for-each select="//ciclo">
                    <p><xsl:value-of select="//ciclo/nombre"/></p>
                </xsl:for-each>

                <h5>4. Siglas por las que se conocen los Ciclos Formativos:</h5>
                <xsl:for-each select="//ciclo">
                    <p>id = "<xsl:value-of select="@id"/>"</p>
                </xsl:for-each>

                <h5>5. Años en los que se publicaron los decretos de título de los Ciclos Formativos:</h5>
                <xsl:for-each select="//decretoTitulo">
                    <p>año = "<xsl:value-of select="@año"/>"</p>
                </xsl:for-each>

                <h5>6. Ciclos Formativos de Grado Medio (se trata de obtener el elemento completo):</h5>
                <p><xsl:value-of select="ciclo[3]"/></p>

                <h5>7. Nombre de los Ciclos Formativos de Grado Superior:</h5>
                <p><xsl:for-each select="//ciclo[grado='Superior']">
                    <p><xsl:value-of select="nombre"/></p>
                </xsl:for-each></p>

                <h5>8. Nombre de los Ciclos Formativos anteriores a 2010:</h5>
                <xsl:for-each select="//ciclos/ciclo">
                    <xsl:if test="decretoTitulo/@año &lt; 2010">
                        <p><xsl:value-of select="nombre"/></p>
                    </xsl:if>
                </xsl:for-each>

                <h5>9. Nombre de los Ciclos Formativos de 2008 o 2010:</h5>
                <xsl:for-each select="//ciclos/ciclo">
                    <xsl:if test="decretoTitulo/@año = 2008 or decretoTitulo/@año = 2010">
                        <p><xsl:value-of select="nombre"/></p>
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

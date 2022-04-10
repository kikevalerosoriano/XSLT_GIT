<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    
    <xsl:template match="ies">
        <html>
            <head>
                <tittle>Ejercicio 2 - "Introducció a XPATH."</tittle>
            </head>
            <body>
                <h5>1. Nombre de los módulos que se imparten en el instituto:</h5>
                <xsl:for-each select="//modulos/modulo">
                    <p><xsl:value-of select="nombre"/></p>
                </xsl:for-each>
                
                <h5>2. Nombre de los módulos del ciclo ASIR:</h5>
                <xsl:for-each select="//modulo[ciclo='ASIR']">
                        <p><xsl:value-of select="nombre"/></p>
                </xsl:for-each>
                
                <h5>3. Nombre de los módulos que se imparten en el segundo curso de cualquier ciclo:</h5>
                <xsl:for-each select="//modulo[curso='2']">
                        <p><xsl:value-of select="nombre"/></p>
                </xsl:for-each>
                
                <h5>4. Nombre de los módulos de menos de 5 horas semanales:</h5>
                <xsl:for-each select="//modulo[horasSemanales &lt; 5]">
                        <p><xsl:value-of select="nombre"/></p>
                </xsl:for-each>
                
                <h5>5. Nombre de los módulos que se imparten en el primer curso de ASIR:</h5>
                <xsl:for-each select="//modulos/modulo">
                    <xsl:if test="curso = 1 and ciclo = 'ASIR'">
                        <p><xsl:value-of select="nombre"/></p>
                    </xsl:if>
                </xsl:for-each>

                <h5>6. Horas semanales de los módulos de más de 3 horas semanales:</h5>
                <xsl:for-each select="//modulo">
                    <xsl:if test="horasSemanales &gt; 3">
                        <p><xsl:value-of select="horasSemanales"/></p>
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
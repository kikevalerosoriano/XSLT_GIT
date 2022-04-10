<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">

    <xsl:template match="ies">
        <html>
            <head>
                <tittle>Ejercicio 3 - Introducció a XPATH.</tittle>
            </head>
            <body>
                <h5>1. Nombre de los módulos del ciclo "Sistemas Microinformáticos y Redes" (en la expresión final no deben aparecer las siglas SMR):</h5>
                <xsl:for-each select="/ies">
                    <xsl:if test="//modulos[modulo/@id = 0228]">
                        <xsl:value-of select="//modulo/nombre"/>
                    </xsl:if>                   
                </xsl:for-each>

                <h5>2. Nombre de los ciclos que incluyen el módulo "Lenguaje de marcas y sistemas de gestión de información:</h5>
                <xsl:for-each select="//ciclos/ciclo">
                    <xsl:if test="@id = 'ASIR' or @id = 'DAW'">
                        <p><xsl:value-of select="nombre"/></p>
                    </xsl:if>
                </xsl:for-each>

                <h5>3. Nombre de los módulos de ciclos de Grado Superior:</h5>
                <xsl:for-each select="//modulos/modulo">
                    <xsl:if test="ciclo = 'ASIR' or ciclo = 'DAW'">
                        <p><xsl:value-of select="nombre"/></p>
                    </xsl:if>
                </xsl:for-each>

                <h5>4. Nombre de los módulos de ciclos cuyo titulo se aprobó en 2008:</h5>
                <xsl:for-each select="//modulos/modulo">
                    <xsl:if test="ciclo = 'SMR'">
                        <p><xsl:value-of select="nombre"/></p>
                    </xsl:if>
                </xsl:for-each>

                <h5>5. Grado de los ciclos con módulos de primer curso:</h5>
                <xsl:for-each select="//ciclos/ciclo">
                    <xsl:if test="@id = 'ASIR' or @id = 'DAW'">
                        <p><xsl:value-of select="grado"/></p>
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Pagina Web Kike Valero</title>
            </head>
            <body>
                <h1>Les millors pel·lícules per any</h1>
                
                
                <ul>
                    <li><b>Total de pel·lícules: </b><xsl:value-of select="count(//movie)"/></li>
                    <li><b>La més nova data de l´any: </b></li>
                    <li><b>La més vella data de l´any: </b></li>
                </ul>
                
                <p>La meua preferida és: <b><xsl:value-of select="//movie[Title='Se7en']/Title"/></b> de l´any <xsl:value-of select="//movie[2]/Year"/>. Dirigida per: 
                    <ul>
                        <xsl:for-each select="//movie[Title='Se7en']/Directors/Director">
                            <li><xsl:value-of select="."/></li>        
                        </xsl:for-each>
                    </ul>
                </p>
                
                <img src="{(//Poster)[2]}" with="150px" height="250px"/>
                
                <h2>Llistat de pel·lícules</h2>
                <table border = "1">
                    <tr>
                        <th>Títlo</th>
                        <th>Director</th>
                        <th>Gènere</th>
                        <th>Any</th>
                        <th>Puntuació</th>
                        <th>Pòster</th>
                    </tr>
                    <xsl:for-each select="movies/movie">
                        <xsl:sort select="Year" data-type="number"/>
                        <tr>
                            <td>
                                <xsl:value-of select="string(Title)"/>
                            </td>
                            <td>
                                <ul>
                                    <xsl:for-each select="Directors/Director">
                                        <li><xsl:value-of select="."/></li>        
                                    </xsl:for-each>
                                </ul>
                            </td>
                            <td>
                                <ul>
                                    <xsl:for-each select="Genres/Genre">
                                        <li><xsl:value-of select="."/></li>        
                                    </xsl:for-each>
                                </ul>
                            </td>
                            <td>
                                <xsl:value-of select="Year"/> 
                            </td>
                            <td>
                                <ul>
                                    <xsl:for-each select="Ratings/Rating">
                                        <li><b><xsl:value-of select="concat(@source,':')"/></b><br/><xsl:value-of select="."/></li>        
                                    </xsl:for-each>
                                </ul>
                            </td>
                            <td>
                                <img src = "{Poster}" width="250px" heigth="350px"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
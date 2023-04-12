<xsl : stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" encoding="UTF-8" />
<xsl:template match="Reseaux">
<html>
<head>
<title>QST 3 Partie 2</title>
</head>
<body>
    
    <xsl:template match="Hote">
    <xsl:for-each select="Reseaux/Hote">
    <table>
    <thead>
        <tr>
            <xsl:if test="Liste_port[etat ='Ouvert']">
            <th>Adresse IP <xsl:value-of select="Adresse_IP"></th>
            <th colspan="2">Liste port <xsl:value-of select="Liste_port"></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th> </th>
            <th>Numero port <xsl:value-of select="numero"></th>
            <th>Etat <xsl:value-of select="etat"></th>
        </tr>
    </tbody>
    </table>
    </xsl:for-each>
    </xsl:template>
    Le nombre de ports ouverts : 
    <xsl:value-of select="count(Liste_port[etat ='Ouvert'])">

</body>
</html>
</xsl:template>
</xsl:stylesheet>
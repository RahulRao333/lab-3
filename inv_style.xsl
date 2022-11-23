<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/inventory-management">
<html>
    <body>
        <h2>Inventory Management</h2>
        <table border="1">
            <h3>Storage</h3>
            <tr bgcolor="red">
                
                <th>pid</th>
                <th>pname</th>
                <th>p_position</th>
                <th>q_instock</th>
            </tr>
            <xsl:for-each select="storage">
                <tr>
                    <td><xsl:value-of select="pid"/></td>
                    <td><xsl:value-of select="pname"/></td>
                    <td><xsl:value-of select="p_postion"/></td>
                    <td><xsl:value-of select="q_instock"/></td>
                </tr>

            </xsl:for-each>


        </table>
        <table border="1">
            <h4>Vendor</h4>
            <tr bgcolor="red">
                <th>phonenumber</th>
                <th>id</th>
                <th>name</th>
            </tr>
            <xsl:for-each select="vendor">

                <tr>
                    <td><xsl:value-of select="phoneno"/></td>
                    <td><xsl:value-of select="id"/></td>
                    <td><xsl:value-of select="name"/></td>

                </tr>

            </xsl:for-each>
            

            

        </table>
        <table border="1">
            <h5>Products</h5>
            <tr>
                <th>pquantity</th>
                <th>pname</th>
                <th>pid</th>
            </tr>
            <xsl:for-each select="products">
                <td><xsl:value-of select="pquantity"/></td>
                <td><xsl:value-of select="pname"/></td>
                <td><xsl:value-of select="pid"/></td>
            </xsl:for-each>
        </table>


        
    </body>
</html>

</xsl:template>
    
    
</xsl:stylesheet>
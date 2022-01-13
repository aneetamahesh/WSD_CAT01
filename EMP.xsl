<?xml version="1.0" encoding="UTF-8"?>
<!-- Created with Liquid Studio 2021 (https://www.liquid-technologies.com) -->
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
            </head>
            <body>
                <h1 style="text-align:center">Employee Management System</h1>

                <table border="2" align="center">
                    <tr bgcolor="violet" >
                        
                        <th>ID</th>
                        <th>NAME</th>
                        <th>AGE</th>
                        <th>SALARY</th>
                        <th>EMAIL</th>
                        <th>MobNum</th>
                        <th>Designation</th>
                        <th>Promotion</th>
                        
                    </tr>
                    <xsl:for-each select="Company/employees/employee">
                        <tr>
                            <td>
                                <xsl:value-of select="ID"/>
                            </td>
                            <td>
                                <xsl:value-of select="NAME"/>
                            </td>
                            <td>
                                <xsl:value-of select="AGE"/>
                            </td>
                            <td>
                                <xsl:value-of select="SALARY"/>
                            </td>
                            <td>
                                <xsl:value-of select="EMAIL"/>
                            </td>
                            <td>
                                <xsl:value-of select="MobNum"/>
                            </td>
                            <td>
                                <xsl:value-of select="Designation"/>
                            </td>
                            <td>
                                <xsl:value-of select="Promotion"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h1 style="text-align:center">Employee Detail Sorted By Name</h1>
                <table border="1" align="center">
                    <tr bgcolor="#9acd32">
                        <th>ID</th>
                        <th>NAME</th>
                        <th>AGE</th>
                        <th>SALARY</th>
                        <th>EMAIL</th>
                        <th>MobNum</th>
                        <th>Designation</th>
                        <th>Promotion</th>
                    </tr>
                    <xsl:for-each select="Company/employees/employee">
                        <xsl:sort select="NAME"/>
                        <tr>
                            <td>
                                <xsl:value-of select="ID"/>
                            </td>
                            <td>
                                <xsl:value-of select="NAME"/>
                            </td>
                            <td>
                                <xsl:value-of select="AGE"/>
                            </td>
                            <td>
                                <xsl:value-of select="SALARY"/>
                            </td>
                            <td>
                                <xsl:value-of select="EMAIL"/>
                            </td>
                            <td>
                                <xsl:value-of select="MobNum"/>
                            </td>
                            <td>
                                <xsl:value-of select="Designation"/>
                            </td>
                            <td>
                                <xsl:value-of select="Promotion"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                
               
                <br>
                    <br>
                    </br>
                </br>
                <h1 style="text-align:center">Main Employees of Company</h1>
                
                <xsl:apply-templates/>
            
            </body>
        </html>

    </xsl:template>

    <xsl:template match="cd">
        <p>
            <xsl:apply-templates select="ID"/>
            <xsl:apply-templates select="NAME"/>
            <xsl:apply-templates select="AGE"/>
            <xsl:apply-templates select="SALARY"/>
            <xsl:apply-templates select="EMAIL"/>
            <xsl:apply-templates select="MobNum"/>
            <xsl:apply-templates select="Designation"/>
            <xsl:apply-templates select="Promotion"/>
        </p>
    </xsl:template>

    <xsl:template match="ID">
        Id: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>


    <xsl:template match="NAME">
        Name: <span style="color:#00ff00">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>
    <xsl:template match="AGE">
        Age: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

    <xsl:template match="SALARY">
        Salary: <span style="color:#00ff00">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

    <xsl:template match="EMAIL">
        Email: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

    <xsl:template match="MobNum">
        MobNum: <span style="color:#00ff00">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

    <xsl:template match="Designation">
        Designation: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

    <xsl:template match="Promotion">
        Promotion: <span style="color:#00ff00">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Live Assisted Session Schedule</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        padding: 8px;
                        border-bottom: 1px solid #ddd;
                    }
                    th {
                        background-color:blue;
                    }
                </style>
            </head>
            <body>
                <h1>Live Assisted Session Schedule</h1>
                <table>
                    <tr>
                        <th>Date</th>
                        <th>Topic</th>
                        <th>Lecturer</th>
                    </tr>
                    <xsl:for-each select="schedule/session">
                        <tr>
                            <td><xsl:value-of select="@date"/></td>
                            <td><xsl:value-of select="topic"/></td>
                            <td><xsl:value-of select="lecturer"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<style>
					body
					{
						background-color: lightblue;
					}
				</style>
			</head>
			<body>
				<h1>Bookstore Catalog</h1>
				<table border = "1">
					<tr>
						<th>title</th>
						<th>author</th>
						<th>price</th>
						<th>year</th>
					</tr>
					<xsl:for-each select = "bookstore/book">
					<tr>
						<td><xsl:value-of select = "title"/></td>
						<td><xsl:value-of select = "author"/></td>
						<td><xsl:value-of select = "price"/></td>
						<td><xsl:value-of select = "year"/></td>	
					</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
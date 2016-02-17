<?xml version="1.0" encoding="UTF-8"?>
<xslt:transform xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xs"
                default-validation="strip"
                version="2.0">
<!-- Purpose: Test case that uses default-validation="strip" on an xsl:stylesheet element 
  				to verify the type annotation is stripped. -->

   <xslt:template match="/">
	     <xslt:variable name="v">
   		    <xslt:element name="elem1" validation="strip">
   			      <xslt:attribute name="att1">A1</xslt:attribute>
 			        <xslt:attribute name="att2">A2</xslt:attribute>
   		    </xslt:element>
   		    <xslt:element name="elem2" validation="strip">
   			      <xslt:attribute name="att1">A1</xslt:attribute>
 			        <xslt:attribute name="att2">A2</xslt:attribute>
   		    </xslt:element>
	     </xslt:variable>
	
		    <out>
         <xslt:value-of select="$v/elem1/@att1 instance of attribute( att1, xs:untypedAtomic)"/>
         <xslt:value-of select="$v/elem2 instance of element(elem2 , xs:untyped)"/>
      </out>
   	</xslt:template>
</xslt:transform>

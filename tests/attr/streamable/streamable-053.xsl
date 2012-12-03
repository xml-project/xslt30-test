<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
       
  
  <!-- within a streaming template, use position() -->
   
  <xsl:mode streamable="yes"/>

  <xsl:strip-space elements="*"/>
    
  <xsl:template name="main">
    <out>
      <xsl:apply-templates select="doc('mixed.xml')"/>
    </out>
  </xsl:template>
  
  <xsl:template match="book">
    <xsl:apply-templates select=".//chtitle"/>
  </xsl:template>
  
  <xsl:template match="chtitle">
    <title chapter="{position()}">
      <xsl:value-of select="."/>
    </title>
  </xsl:template>
  
    
</xsl:transform>


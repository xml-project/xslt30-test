<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:g="http://www.w3.org/xsl-tests/grouped-transactions"
    exclude-result-prefixes=" xs"
    version="3.0">
       
  
  <!-- within a streaming template, compute average and total of a list-valued attribute value -->
   
  <xsl:mode streamable="yes"/>
       
  <xsl:output method="xml" indent="yes" encoding="UTF-8" />
  
  <xsl:import-schema namespace="http://www.w3.org/xsl-tests/grouped-transactions" schema-location="grouped-transactions.xsd"/>

  <xsl:strip-space elements="*"/>
    
  <xsl:template name="main">
    <out>
      <xsl:stream href="grouped-transactions.xml"><xsl:apply-templates select="."/></xsl:stream>
    </out>
  </xsl:template>
   
  <xsl:template match="*">
    <xsl:copy>
      <xsl:copy-of select="@*"/>
      <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="g:transaction">
    <g:transaction value="{@value}" date="{@date}" total="{sum(@value)}" average="{round-half-to-even(avg(@value), 3)}"/>
  </xsl:template>
    
</xsl:transform>


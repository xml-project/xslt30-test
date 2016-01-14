<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes=" xs"
    version="3.0">
  
  <!-- within a streaming template, use xsl:for-each-group group-adjacent 
       with xsl:apply-templates selecting the current group -->
  
  <xsl:mode name="s" streamable="yes"/>
      
    
  <xsl:template name="main">
    <xsl:stream href="../docs/transactions.xml">
    	<xsl:apply-templates select="account" mode="s"/>
    </xsl:stream>
  </xsl:template> 


  <xsl:template match="account" mode="s">
     <out>
      <xsl:for-each-group select="transaction"
         group-adjacent="@date">
         <batch date="{current-grouping-key()}">
            <xsl:for-each select="current-group()">
              <xsl:value-of select="'[' || @value || ']'"/>
            </xsl:for-each>
         </batch>
      </xsl:for-each-group> 
    </out>
  </xsl:template>
  
       
</xsl:transform>


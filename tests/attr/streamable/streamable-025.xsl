<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes=" xs" version="3.0">


  <!-- within a streaming template, use value-of with a path expression -->

  <xsl:import-schema schema-location="loans.xsd"/>

  <xsl:mode name="s" streamable="yes"/>

  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>



  <xsl:template name="main" match="/">
    <out>
      <xsl:stream href="loans.xml">
        <xsl:apply-templates select="." mode="s"/>
      </xsl:stream>
    </out>
  </xsl:template>

  <xsl:template match="*" mode="s">
    <xsl:copy>
      <xsl:copy-of select="@*"/>
      <xsl:apply-templates mode="s"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="Loan" mode="s">
    <zips>
      <xsl:value-of select="LoanToValueRatio/*/LoanScopeType" separator="|"/>
    </zips>
  </xsl:template>

</xsl:transform>

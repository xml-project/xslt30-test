<xsl:stylesheet version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs">
    
    <xsl:variable name="RUN" select="true()" static="yes"/>
    <xsl:strip-space elements="*"/>
    
    <!-- Simple use of xsl:stream with count() -->
    
    <xsl:template name="c-001" use-when="$RUN">
      <xsl:stream href="../docs/books.xml">
        <out>
          <xsl:value-of select="count(.//ITEM)"/>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- count(), filtered with motionless predicate -->
    
    <xsl:template name="c-002" use-when="$RUN">
      <xsl:stream href="../docs/books.xml">
        <out>
          <xsl:copy-of select="count(./BOOKLIST/BOOKS/ITEM[@CAT='P'])"/>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- count() applied to ancestor nodes-->
    
    <xsl:template name="c-003" use-when="$RUN">
      <xsl:stream href="../docs/books.xml">
        <out>
          <xsl:value-of select="BOOKLIST/BOOKS/ITEM[@CAT='MMP'] ! count(ancestor::*)"/>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- count() applied to a grounded consuming sequence -->
    
    <xsl:template name="c-004" use-when="$RUN">
      <xsl:stream href="../docs/books.xml">
        <out>
          <xsl:value-of select="count(/BOOKLIST/BOOKS/ITEM/DIMENSIONS!tokenize(., ' '))"/>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- count() applied to attributes of ancestor nodes-->
    
    <xsl:template name="c-005" use-when="$RUN">
      <xsl:stream href="../docs/books.xml">
        <out>
          <xsl:value-of select="BOOKLIST/BOOKS/ITEM[@CAT='MMP'] ! count(ancestor-or-self::*/@*)"/>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- count() applied to namespaces of ancestor nodes-->
    
    <xsl:template name="c-006" use-when="$RUN">
      <xsl:stream href="../docs/books.xml">
        <out>
          <xsl:value-of select="BOOKLIST/BOOKS/ITEM[@CAT='MMP'] ! count(ancestor-or-self::*/namespace::*)"/>
        </out>
      </xsl:stream>
    </xsl:template> 
    
    <!-- count() with empty downwards selection-->
    
    <xsl:template name="c-007" use-when="$RUN">
      <xsl:stream href="../docs/books.xml">
        <out>
          <xsl:value-of select="count(BOOKS)"/>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- count() with empty downwards selection with predicate-->
    
    <xsl:template name="c-008" use-when="$RUN">
      <xsl:stream href="../docs/books.xml">
        <out>
          <xsl:value-of select="count(BOOKS/BOOK[2])"/>
        </out>
      </xsl:stream>
    </xsl:template> 
    
    <!-- count() with a striding(?) union -->
    
    <xsl:template name="c-009" use-when="$RUN">
      <xsl:stream href="../docs/books.xml">
        <out>
          <xsl:value-of select="count(BOOKLIST/BOOKS | BOOKLIST/CATEGORIES)"/>
        </out>
      </xsl:stream>
    </xsl:template> 
    
    <!-- count() with a crawling union -->
    
    <xsl:template name="c-010" use-when="$RUN">
      <xsl:stream href="../docs/books.xml">
        <out>
          <xsl:value-of select="count(.//* | .//text())"/>
        </out>
      </xsl:stream>
    </xsl:template>  
    
    <!-- simple motionless count -->
    
    <xsl:template name="c-011" use-when="$RUN">
      <xsl:stream href="../docs/books.xml">
        <out>
          <xsl:if test="child::BOOKLIST">
            <xsl:value-of select="count(1 to 10)"/>
          </xsl:if>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- count filtered grounded sequence -->
    
    <xsl:template name="c-012" use-when="$RUN">
      <xsl:stream href="../docs/books.xml">
        <out>
          <xsl:value-of select="count(remove(data(//DIMENSIONS/text()), 3))"/>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- count filtered striding sequence -->
    
    <xsl:template name="c-013" use-when="$RUN">
      <xsl:stream href="../docs/books.xml">
        <out>
          <xsl:value-of select="count(remove(/BOOKLIST/BOOKS/ITEM, 3))"/>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- count twice-filtered striding sequence -->
    
    <xsl:template name="c-014" use-when="$RUN">
      <xsl:stream href="../docs/books.xml">
        <out>
          <xsl:value-of select="count(remove(/BOOKLIST/BOOKS/ITEM, 3)[@CAT='MMP'])"/>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- count() applied to a non-existent element -->
    
    <xsl:template name="c-015" use-when="$RUN">
      <xsl:stream href="../docs/big-transactions.xml">
        <out>
          <xsl:value-of select="count(account/transaction/details)"/>
        </out>
      </xsl:stream>
    </xsl:template> 
    
    <!-- count() applied to an existent attribute (can exit early) -->
    
    <xsl:template name="c-016" use-when="$RUN">
      <xsl:stream href="../docs/big-transactions.xml">
        <out>
          <xsl:value-of select="count(account/transaction/@value)"/>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- Test of xsl:stream with count() and a boolean filter -->
    
    <xsl:template name="c-017" use-when="$RUN">
      <xsl:stream href="../docs/big-transactions.xml">
        <out>
          <xsl:value-of select="count(account/transaction[@value &gt; 10000000])"/>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- Test of xsl:stream with count() and both a positional and a boolean filter -->
    
    <xsl:template name="c-018" use-when="$RUN">
      <xsl:stream href="../docs/big-transactions.xml">
        <out>
          <xsl:value-of select="count(account/transaction[position() lt 20][@value &gt; 1000])"/>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- count() on a sequence of both streamed nodes and atomic values -->
    
    <xsl:template name="c-100" use-when="$RUN">
      <xsl:variable name="b" select="1[current-date() gt xs:date('1900-01-01')]"/>
      <xsl:stream href="../docs/big-transactions.xml">
        <out>
          <xsl:value-of select="count(($b, account/transaction/dummy))"/>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- count() on a sequence of both streamed nodes and atomic values -->
    
    <xsl:template name="c-101" use-when="$RUN">
      <xsl:variable name="b" select="1[current-date() gt xs:date('1900-01-01')]"/>
      <xsl:stream href="../docs/big-transactions.xml">
        <out>
          <xsl:value-of select="count((account/transaction/dummy, $b))"/>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- count() on a sequence of both streamed nodes and atomic values -->
    
    <xsl:template name="c-102" use-when="$RUN">
      <xsl:variable name="b" select="1[current-date() gt xs:date('1900-01-01')]"/>
      <xsl:stream href="../docs/big-transactions.xml">
        <out>
          <xsl:value-of select="count((account/transaction, $b))"/>
        </out>
      </xsl:stream>
    </xsl:template>
    
    <!-- count() on a sequence of both streamed nodes and atomic values -->
    
    <xsl:template name="c-103" use-when="$RUN">
      <xsl:variable name="b" select="1[current-date() gt xs:date('1900-01-01')]"/>
      <xsl:stream href="../docs/big-transactions.xml">
        <out>
          <xsl:value-of select="count(($b, account/transaction))"/>
        </out>
      </xsl:stream>
    </xsl:template>                    
              
    
</xsl:stylesheet>
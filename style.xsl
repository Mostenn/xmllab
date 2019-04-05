<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>  
  <body>
  <xsl:apply-templates/>  
  </body>
  </html>
</xsl:template>

<xsl:template match="LearnerInfo">
  <div>
    <xsl:apply-templates select="Identification"/>
  </div>
</xsl:template>

<xsl:template match="Identification">
    <xsl:apply-templates select="PersonName"/>
    <xsl:apply-templates select="ContactInfo"/>
</xsl:template>

<xsl:template match="PersonName">
    <p>
        <xsl:apply-templates select="FirstName"/>  
        <xsl:apply-templates select="Surname"/>    
    </p>
</xsl:template>

<xsl:template match="FirstName">
  First Name: <span style="color:#ff0000">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="Surname">
  Surname: <span style="color:#00ff00">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="ContactInfo">
    <div>
        <xsl:apply-templates select="Address"/>
    </div>
</xsl:template>

<xsl:template match="Address">
    <div>
        <xsl:apply-templates select="Contact"/>    
    </div>
</xsl:template>

<xsl:template match="Contact">
    <p>
        <xsl:value-of select="AddressLine"/><br/>
        <xsl:value-of select="PostalCode"/><br/>
        <xsl:value-of select="Municipality"/><br/>
        <xsl:apply-templates select="Country"/>
    </p>
</xsl:template>

<xsl:template match="Country">
    <span style="margin: 10px 15px; background: #e3e3e3;">
        <xsl:value-of select="Code"/> <br/>
        <xsl:value-of select="Label"/>
    </span>
</xsl:template>


</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msbuild="http://schemas.microsoft.com/developer/msbuild/2003" xmlns="http://schemas.microsoft.com/developer/msbuild/2003" exclude-result-prefixes="msbuild">
  <xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes"/>

  <xsl:template match="node() | @*">
    <xsl:copy>
      <xsl:apply-templates select="node() | @*"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="msbuild:PropertyGroup[last()]">
    <xsl:copy>
      <xsl:apply-templates select="node() | @*"/>
    </xsl:copy> 
    <ItemGroup>
      <Reference Include="monotouch" />
      <Reference Include="Mono.Android" />
    </ItemGroup>
  </xsl:template>
</xsl:stylesheet>

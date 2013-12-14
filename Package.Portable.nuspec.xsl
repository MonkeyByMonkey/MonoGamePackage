<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:nuspec="http://schemas.microsoft.com/packaging/2011/08/nuspec.xsd" xmlns="http://schemas.microsoft.com/packaging/2011/08/nuspec.xsd" exclude-result-prefixes="nuspec">
  <xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes"/>

  <xsl:template match="node() | @*">
    <xsl:copy>
      <xsl:apply-templates select="node() | @*"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="/nuspec:package/nuspec:metadata/nuspec:id">
    <id>MonoGame-Portable-MBM</id>
  </xsl:template>

  <xsl:template match="/nuspec:package/nuspec:metadata/nuspec:owners">
    <owners>Monkey By Monkey</owners>
  </xsl:template>

  <xsl:template match="/nuspec:package/nuspec:files">
    <files>
      <file src="lib\**" target="lib" exclude="**\*.pdb"/>
    </files>
  </xsl:template>

</xsl:stylesheet>
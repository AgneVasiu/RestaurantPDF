<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="1.0">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
    <xsl:template match="restaurants-data">
        <fo:root language="EN">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4-portrail" page-height="297mm" page-width="210mm" margin-top="5mm"
                                       margin-bottom="5mm" margin-left="5mm" margin-right="5mm">
                    <fo:region-body margin-top="15mm" margin-bottom="20mm" background-color="#FAEBD7"/>
                    <fo:region-before region-name="xsl-region-before" extent="15mm" display-align="before"
                                      precedence="true" background-color="#FAEBD7"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="A4-portrail">
                <fo:static-content flow-name="xsl-region-before">

                    <fo:table table-layout="fixed" width="100%" font-size="20pt" border-width="0.4mm" border-style="hidden">
                        <fo:table-column column-width="proportional-column-width(20)"/>
                        <fo:table-column column-width="proportional-column-width(45)"/>
                        <fo:table-column column-width="proportional-column-width(20)"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell text-align="left" display-align="center" padding-left="2mm">
                                    <fo:block>

                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="center" display-align="center">
                                    <fo:block font-size="120%" font-weight="bold" color="crimson" >
                                        <fo:basic-link external-destination="http://www.example.com">Restaurant review
                                        </fo:basic-link>
                                    </fo:block>
                                    <fo:block space-before="3mm"/>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>

                </fo:static-content>
                <fo:flow flow-name="xsl-region-body" border-collapse="collapse" reference-orientation="0" >

                    <xsl:for-each select="restaurant-info">
                        <fo:table table-layout="fixed" width="50%" font-size="10pt" border-color="black"
                                  border-width="0.4mm" border-style="hidden" space-after="2mm"  background-color="#E6E6FA">
                            <fo:table-column column-width="proportional-column-width(20)"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell text-align="left" display-align="center" padding-left="2mm">
                                        <fo:block font-size="120%" font-weight="bold" color="brown">
                                            <fo:basic-link external-destination="http://www.example.com">Restaurant Info
                                            </fo:basic-link>
                                        </fo:block>
                                        <xsl:for-each select="restaurant">
                                            <fo:block>
                                                <fo:inline font-weight="bold">Restaurant name:</fo:inline>
                                                <xsl:value-of select="name"/>
                                            </fo:block>
                                            <fo:block>
                                                <fo:inline font-weight="bold">Country:</fo:inline>
                                                <xsl:value-of select="country"/>
                                            </fo:block>
                                            <fo:block>
                                                <fo:inline font-weight="bold">City:</fo:inline>
                                                <xsl:value-of select="city"/>
                                            </fo:block>
                                            <fo:block>
                                                <fo:inline font-weight="bold">Address:</fo:inline>
                                                <xsl:value-of select="address"/>
                                            </fo:block>
                                            <fo:block>
                                                <fo:inline font-weight="bold">Email:</fo:inline>
                                                <xsl:value-of select="email"/>
                                            </fo:block>
                                            <fo:block>
                                                <fo:inline font-weight="bold">Number:</fo:inline>
                                                <xsl:value-of select="number"/>
                                            </fo:block>
                                        </xsl:for-each>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>


                        <fo:table table-layout="fixed" width="100%" font-size="10pt" border-color="black"
                                  border-width="0.4mm" border-style="hidden" space-after="2mm" background-color="#b8ff70">
                            <fo:table-column column-width="proportional-column-width(20)"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell text-align="left" display-align="center" padding-left="2mm">
                                        <xsl:for-each select="Category">
                                            <fo:block>
                                                <fo:inline font-size="120%" font-weight="bold" color=" #141f85">Restaurant Category:</fo:inline>
                                                <xsl:value-of select="name"/>
                                            </fo:block>
                                        </xsl:for-each>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>

                        <fo:table table-layout="fixed" width="100%" font-size="10pt" border-color="black"
                                  border-width="0.4mm" border-style="hiden" space-after="1mm" background-color="#E6E6FA">
                            <fo:table-column column-width="proportional-column-width(20)"/>
                            <fo:table-column column-width="proportional-column-width(45)"/>
                            <fo:table-column column-width="proportional-column-width(20)"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell text-align="left" display-align="center">
                                        <fo:block font-size="125%" font-weight="bold" color="black">
                                            <fo:block>Deserts</fo:block>
                                        </fo:block>
                                        <fo:block space-before="3mm"/>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>

                        <fo:table table-layout="fixed" width="100%" font-size="10pt" border-color="black"
                                  border-width="0.35mm" border-style="solid" text-align="center" display-align="center"
                                  space-after="20mm">
                            <fo:table-column column-width="proportional-column-width(20)"/>
                            <fo:table-column column-width="proportional-column-width(20)"/>
                            <fo:table-column column-width="proportional-column-width(35)"/>
                            <fo:table-column column-width="proportional-column-width(10)"/>
                            <fo:table-body font-size="95%">
                                <fo:table-row height="8mm" font-weight="bold" border-width="0.2mm" border-style="solid">
                                    <fo:table-cell border-width="0.2mm" border-style="solid">
                                        <fo:block>Dish Name</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-width="0.2mm" border-style="solid">
                                        <fo:block>Category</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-width="0.2mm" border-style="solid">
                                        <fo:block>Description</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border-width="0.2mm" border-style="solid">
                                        <fo:block>Price in Eur</fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <xsl:for-each select="Dishes">
                                    <fo:table-row>
                                        <fo:table-cell border-width="0.2mm" border-style="solid">
                                            <fo:block>
                                                <xsl:value-of select="dishName"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-width="0.2mm" border-style="solid">
                                            <fo:block>
                                                <xsl:value-of select="category"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-width="0.2mm" border-style="solid">
                                            <fo:block>
                                                <xsl:value-of select="description"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border-width="0.2mm" border-style="solid">
                                            <fo:block>
                                                <xsl:value-of select="price"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </xsl:for-each>
                            </fo:table-body>
                        </fo:table>
                        <fo:block>
                            <fo:external-graphic  src="url(https://i.picsum.photos/id/631/2513/1670.jpg?hmac=jmwYWWSsJUOSsgEpMtzw8U7lOQ_CNoZJgwh4OGIs804)"
                                                  content-height="scale-to-fit" height="2.00in"  content-width="2.00in"/>
                            <fo:external-graphic  src="url(https://i.picsum.photos/id/715/4272/2848.jpg?hmac=QorSNVDBTDg88kJYecJbfTMaeZiNv_Nr-EDet4q4O4E)"
                                                  content-height="scale-to-fit" height="2.00in"  content-width="2.00in"/>
                        </fo:block>

                    </xsl:for-each>
                    <fo:block id="end-of-document">
                        <fo:instream-foreign-object>
                            <svg width="200mm" height="150mm" version="1.1" xmlns="http://www.w3.org/2000/svg">
                                <path d="M153 334
C150 150 150 200 200 200
C151 339 153 344 156 344
C90  90  90  100 100 100
T200 300 300 300" style="fill:orange;stroke:purple;stroke-width:2"/>
                            </svg>
                        </fo:instream-foreign-object>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>

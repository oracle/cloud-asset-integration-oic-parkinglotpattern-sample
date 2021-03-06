<?xml version = '1.0' encoding = 'UTF-8'?>
<!--
Copyright (c) 2020, Oracle and/or its affiliates.
Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
-->

<xsl:stylesheet version="2.0" xml:id="id_1" xmlns:nssrcmpr="http://www.oracle.com/2014/03/ics/schedule" xmlns:nstrgmpr="http://xmlns.oracle.com/cloud/adapter/stagefile/WriteStageJSonString_REQUEST/types" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:ns1="http://xmlns.oracle.com/cloud/adapter/stagefile/WriteStageJSonString_REQUEST" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:nsmpr0="http://xml.oracle.com/adapters/extension" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" nssrcmpr oraext xp20 ora oracle-xsl-mapper xsi fn nsmpr0 xsl ignore01" xmlns:ignore01="http://www.oracle.com/XSL/Transform/java" ignore01:ignorexmlids="true" xmlns:nsmpr1="http://xmlns.oracle.com/cloud/adapter/atpdatabase/GetCreationRequestsFromATP_REQUEST/types" xmlns:nsmpr2="http://www.oracle.com/2014/03/ic/integration/metadata" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:tns="http://xmlns.oracle.com/cloud/adapter/atpdatabase/GetCreationRequestsFromATP_REQUEST" xmlns:flt="http://xmlns.oracle.com/cloud/generic/service/fault" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:ns22="http://xmlns.oracle.com/cloud/ics/file/v1/types" xmlns:ns23="http://xmlns.oracle.com/cloud/staging/write" xmlns:orajs0="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.JsExecutor_xpath1510397549" xmlns:orajs2="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.JsExecutor_xpath86288" xmlns:orajs1="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.JsExecutor_xpath479716033" xmlns:orajs3="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.JsExecutor_xpath565719231" xmlns:ns2="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.resources.icsxpathfunctions.ICSInstanceTrackingFunctions" xmlns:ns0="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:encoding="UTF8" xmlns:ns24="http://xmlns.oracle.com/pcbpel/adapter/opaque/">
   <oracle-xsl-mapper:schema xml:id="id_2">
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources xml:id="id_3">
         <oracle-xsl-mapper:source type="XSD" xml:id="id_4">
            <oracle-xsl-mapper:schema location="../../processor_8/resourcegroup_9/ICSSchedule_1.xsd" xml:id="id_5"/>
            <oracle-xsl-mapper:rootElement name="schedule" namespace="http://www.oracle.com/2014/03/ics/schedule" xml:id="id_6"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL" xml:id="id_21">
            <oracle-xsl-mapper:schema location="../../processor_46/resourcegroup_53/generated.wsdl" xml:id="id_22"/>
            <oracle-xsl-mapper:rootElement name="GetCreationRequestsFromATPOutput" namespace="http://xmlns.oracle.com/cloud/adapter/atpdatabase/GetCreationRequestsFromATP_REQUEST/types" xml:id="id_23"/>
            <oracle-xsl-mapper:param name="ThisRequest" xml:id="id_24"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets xml:id="id_7">
         <oracle-xsl-mapper:target type="WSDL" xml:id="id_8">
            <oracle-xsl-mapper:schema location="../../processor_213/resourcegroup_214/WriteStageJSonString_REQUEST.wsdl" xml:id="id_9"/>
            <oracle-xsl-mapper:rootElement name="Write" namespace="http://xmlns.oracle.com/cloud/adapter/stagefile/WriteStageJSonString_REQUEST/types" xml:id="id_10"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.1.2.0.0-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="ThisRequest" xml:id="id_31"/>
   <xsl:template match="/" xml:id="id_11">
      <nstrgmpr:Write xml:id="id_12">
         <ns24:opaqueElement xml:id="id_36">
            <xsl:value-of xml:id="id_37" select="oraext:encodeBase64 ($ThisRequest/nsmpr1:GetCreationRequestsFromATPOutput/nsmpr1:payload )"/>
         </ns24:opaqueElement>
      </nstrgmpr:Write>
   </xsl:template>
</xsl:stylesheet>

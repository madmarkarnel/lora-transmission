<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.1">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="no" active="no"/>
<layer number="100" name="Muster" color="7" fill="1" visible="yes" active="yes"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Mittellin" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="Stiffner" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="7" fill="1" visible="yes" active="yes"/>
<layer number="105" name="Beschreib" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="BGA-Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="BD-Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tBridges" color="7" fill="1" visible="yes" active="yes"/>
<layer number="109" name="tBPL" color="7" fill="1" visible="yes" active="yes"/>
<layer number="110" name="bBPL" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="MPL" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="ReferenceLS" color="7" fill="1" visible="no" active="no"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="no" active="no"/>
<layer number="121" name="sName" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bPlace" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="no" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="no" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="no" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="no" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="6" fill="1" visible="no" active="no"/>
<layer number="154" name="FabDoc2" color="2" fill="1" visible="no" active="no"/>
<layer number="155" name="FabDoc3" color="7" fill="15" visible="no" active="no"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="Eagle3D_PG1" color="7" fill="1" visible="no" active="no"/>
<layer number="232" name="Eagle3D_PG2" color="7" fill="1" visible="no" active="no"/>
<layer number="233" name="Eagle3D_PG3" color="7" fill="1" visible="no" active="no"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="7" fill="1" visible="yes" active="yes"/>
<layer number="251" name="SMDround" color="7" fill="1" visible="yes" active="yes"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ATSAMD21G18A-AU">
<packages>
<package name="QFP50P900X900X120-48N">
<wire x1="3.15" y1="-3.15" x2="3.15" y2="3.15" width="0.2" layer="51"/>
<wire x1="3.15" y1="-3.15" x2="-3.15" y2="-3.15" width="0.2" layer="51"/>
<wire x1="-3.15" y1="-3.15" x2="-3.15" y2="3.15" width="0.2" layer="51"/>
<wire x1="3.15" y1="3.15" x2="-3.15" y2="3.15" width="0.2" layer="51"/>
<circle x="-4.17" y="3.283" radius="0.1" width="0.17" layer="21"/>
<circle x="-2.443" y="2.458" radius="0.127" width="0.4" layer="21"/>
<text x="-4.96313125" y="5.282459375" size="0.813640625" layer="25">&gt;NAME</text>
<text x="-5.195959375" y="-6.24356875" size="0.814046875" layer="27">&gt;VALUE</text>
<wire x1="5.2" y1="5.2" x2="5.2" y2="-5.2" width="0.05" layer="39"/>
<wire x1="5.2" y1="-5.2" x2="-5.2" y2="-5.2" width="0.05" layer="39"/>
<wire x1="-5.2" y1="-5.2" x2="-5.2" y2="5.2" width="0.05" layer="39"/>
<wire x1="-5.2" y1="5.2" x2="5.2" y2="5.2" width="0.05" layer="39"/>
<smd name="1" x="-4.2" y="2.75" dx="1.45" dy="0.3" layer="1" rot="R180"/>
<smd name="2" x="-4.2" y="2.25" dx="1.45" dy="0.3" layer="1" rot="R180"/>
<smd name="3" x="-4.2" y="1.75" dx="1.45" dy="0.3" layer="1" rot="R180"/>
<smd name="4" x="-4.2" y="1.25" dx="1.45" dy="0.3" layer="1" rot="R180"/>
<smd name="5" x="-4.2" y="0.75" dx="1.45" dy="0.3" layer="1" rot="R180"/>
<smd name="6" x="-4.2" y="0.25" dx="1.45" dy="0.3" layer="1" rot="R180"/>
<smd name="7" x="-4.2" y="-0.25" dx="1.45" dy="0.3" layer="1" rot="R180"/>
<smd name="8" x="-4.2" y="-0.75" dx="1.45" dy="0.3" layer="1" rot="R180"/>
<smd name="9" x="-4.2" y="-1.25" dx="1.45" dy="0.3" layer="1" rot="R180"/>
<smd name="11" x="-4.2" y="-2.25" dx="1.45" dy="0.3" layer="1" rot="R180"/>
<smd name="12" x="-4.2" y="-2.75" dx="1.45" dy="0.3" layer="1" rot="R180"/>
<smd name="13" x="-2.75" y="-4.2" dx="1.45" dy="0.3" layer="1" rot="R270"/>
<smd name="14" x="-2.25" y="-4.2" dx="1.45" dy="0.3" layer="1" rot="R270"/>
<smd name="15" x="-1.75" y="-4.2" dx="1.45" dy="0.3" layer="1" rot="R270"/>
<smd name="16" x="-1.25" y="-4.2" dx="1.45" dy="0.3" layer="1" rot="R270"/>
<smd name="17" x="-0.75" y="-4.2" dx="1.45" dy="0.3" layer="1" rot="R90"/>
<smd name="18" x="-0.25" y="-4.2" dx="1.45" dy="0.3" layer="1" rot="R270"/>
<smd name="19" x="0.25" y="-4.2" dx="1.45" dy="0.3" layer="1" rot="R90"/>
<smd name="20" x="0.75" y="-4.2" dx="1.45" dy="0.3" layer="1" rot="R90"/>
<smd name="21" x="1.25" y="-4.2" dx="1.45" dy="0.3" layer="1" rot="R90"/>
<smd name="22" x="1.75" y="-4.2" dx="1.45" dy="0.3" layer="1" rot="R90"/>
<smd name="23" x="2.25" y="-4.2" dx="1.45" dy="0.3" layer="1" rot="R90"/>
<smd name="24" x="2.75" y="-4.2" dx="1.45" dy="0.3" layer="1" rot="R90"/>
<smd name="10" x="-4.2" y="-1.75" dx="1.45" dy="0.3" layer="1" rot="R180"/>
<smd name="25" x="4.17" y="-2.75" dx="1.45" dy="0.3" layer="1"/>
<smd name="26" x="4.2" y="-2.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="27" x="4.2" y="-1.75" dx="1.45" dy="0.3" layer="1"/>
<smd name="28" x="4.2" y="-1.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="29" x="4.2" y="-0.75" dx="1.45" dy="0.3" layer="1"/>
<smd name="30" x="4.2" y="-0.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="31" x="4.2" y="0.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="32" x="4.2" y="0.75" dx="1.45" dy="0.3" layer="1"/>
<smd name="33" x="4.2" y="1.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="35" x="4.2" y="2.25" dx="1.45" dy="0.3" layer="1"/>
<smd name="36" x="4.2" y="2.75" dx="1.45" dy="0.3" layer="1"/>
<smd name="34" x="4.2" y="1.75" dx="1.45" dy="0.3" layer="1"/>
<smd name="37" x="2.75" y="4.2" dx="1.45" dy="0.3" layer="1" rot="R90"/>
<smd name="38" x="2.25" y="4.2" dx="1.45" dy="0.3" layer="1" rot="R90"/>
<smd name="39" x="1.75" y="4.2" dx="1.45" dy="0.3" layer="1" rot="R90"/>
<smd name="40" x="1.25" y="4.2" dx="1.45" dy="0.3" layer="1" rot="R90"/>
<smd name="41" x="0.75" y="4.2" dx="1.45" dy="0.3" layer="1" rot="R90"/>
<smd name="42" x="0.25" y="4.2" dx="1.45" dy="0.3" layer="1" rot="R90"/>
<smd name="43" x="-0.25" y="4.2" dx="1.45" dy="0.3" layer="1" rot="R270"/>
<smd name="44" x="-0.75" y="4.2" dx="1.45" dy="0.3" layer="1" rot="R270"/>
<smd name="45" x="-1.25" y="4.2" dx="1.45" dy="0.3" layer="1" rot="R270"/>
<smd name="46" x="-1.75" y="4.2" dx="1.45" dy="0.3" layer="1" rot="R270"/>
<smd name="47" x="-2.25" y="4.2" dx="1.45" dy="0.3" layer="1" rot="R270"/>
<smd name="48" x="-2.75" y="4.2" dx="1.45" dy="0.3" layer="1" rot="R270"/>
</package>
</packages>
<symbols>
<symbol name="ATSAMD21G18A-AU">
<wire x1="-15.24" y1="43.18" x2="15.24" y2="43.18" width="0.254" layer="94"/>
<wire x1="15.24" y1="43.18" x2="15.24" y2="-43.18" width="0.254" layer="94"/>
<wire x1="15.24" y1="-43.18" x2="-15.24" y2="-43.18" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-43.18" x2="-15.24" y2="43.18" width="0.254" layer="94"/>
<text x="-15.248" y="43.7109" size="1.77893125" layer="95">&gt;NAME</text>
<text x="-15.2621" y="-45.7863" size="1.78058125" layer="96">&gt;VALUE</text>
<pin name="PA14" x="-17.78" y="-2.54" length="short"/>
<pin name="PB08" x="17.78" y="12.7" length="short" rot="R180"/>
<pin name="PB10" x="17.78" y="7.62" length="short" rot="R180"/>
<pin name="PA08" x="-17.78" y="12.7" length="short"/>
<pin name="PB11" x="17.78" y="5.08" length="short" rot="R180"/>
<pin name="PA11" x="-17.78" y="5.08" length="short"/>
<pin name="PA12" x="-17.78" y="2.54" length="short"/>
<pin name="PA15" x="-17.78" y="-5.08" length="short"/>
<pin name="PA20" x="-17.78" y="-17.78" length="short"/>
<pin name="PB09" x="17.78" y="10.16" length="short" rot="R180"/>
<pin name="PA10" x="-17.78" y="7.62" length="short"/>
<pin name="PA09" x="-17.78" y="10.16" length="short"/>
<pin name="PA05" x="-17.78" y="20.32" length="short"/>
<pin name="PA13" x="-17.78" y="0" length="short"/>
<pin name="PA19" x="-17.78" y="-15.24" length="short"/>
<pin name="PA07" x="-17.78" y="15.24" length="short"/>
<pin name="VDDIO2" x="17.78" y="35.56" length="short" direction="pwr" rot="R180"/>
<pin name="GNDANA" x="17.78" y="-27.94" length="short" direction="pwr" rot="R180"/>
<pin name="PA01" x="-17.78" y="30.48" length="short"/>
<pin name="PA04" x="-17.78" y="22.86" length="short"/>
<pin name="PA02" x="-17.78" y="27.94" length="short"/>
<pin name="PA06" x="-17.78" y="17.78" length="short"/>
<pin name="VDDANA" x="17.78" y="40.64" length="short" direction="pwr" rot="R180"/>
<pin name="PA03" x="-17.78" y="25.4" length="short"/>
<pin name="PA21" x="-17.78" y="-20.32" length="short"/>
<pin name="PA17" x="-17.78" y="-10.16" length="short"/>
<pin name="PA16" x="-17.78" y="-7.62" length="short"/>
<pin name="PA00" x="-17.78" y="33.02" length="short"/>
<pin name="PA18" x="-17.78" y="-12.7" length="short"/>
<pin name="PA22" x="-17.78" y="-22.86" length="short"/>
<pin name="PA23" x="-17.78" y="-25.4" length="short"/>
<pin name="PA24" x="-17.78" y="-27.94" length="short"/>
<pin name="PA25" x="-17.78" y="-30.48" length="short"/>
<pin name="PA27" x="-17.78" y="-33.02" length="short"/>
<pin name="PA28" x="-17.78" y="-35.56" length="short"/>
<pin name="PA30" x="-17.78" y="-38.1" length="short"/>
<pin name="PA31" x="-17.78" y="-40.64" length="short"/>
<pin name="PB22" x="17.78" y="2.54" length="short" rot="R180"/>
<pin name="PB23" x="17.78" y="0" length="short" rot="R180"/>
<pin name="PB02" x="17.78" y="17.78" length="short" rot="R180"/>
<pin name="PB03" x="17.78" y="15.24" length="short" rot="R180"/>
<pin name="GND1" x="17.78" y="-30.48" length="short" direction="pwr" rot="R180"/>
<pin name="GND2" x="17.78" y="-33.02" length="short" direction="pwr" rot="R180"/>
<pin name="GND3" x="17.78" y="-35.56" length="short" direction="pwr" rot="R180"/>
<pin name="VDDIO1" x="17.78" y="38.1" length="short" direction="pwr" rot="R180"/>
<pin name="!RESETN" x="-17.78" y="40.64" length="short" direction="in"/>
<pin name="VDDIN" x="17.78" y="33.02" length="short" direction="pwr" rot="R180"/>
<pin name="VDDCORE" x="17.78" y="30.48" length="short" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATSAMD21G18A-AU" prefix="U">
<description>Cortex-M0+, 256KB FLASH, 32KB SRAM, USB, DMA, T&amp;R - 48TQFP IND TEMP, GREEN, 1.6-3.6V, 48MHz</description>
<gates>
<gate name="G$1" symbol="ATSAMD21G18A-AU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFP50P900X900X120-48N">
<connects>
<connect gate="G$1" pin="!RESETN" pad="40"/>
<connect gate="G$1" pin="GND1" pad="18"/>
<connect gate="G$1" pin="GND2" pad="35"/>
<connect gate="G$1" pin="GND3" pad="42"/>
<connect gate="G$1" pin="GNDANA" pad="5"/>
<connect gate="G$1" pin="PA00" pad="1"/>
<connect gate="G$1" pin="PA01" pad="2"/>
<connect gate="G$1" pin="PA02" pad="3"/>
<connect gate="G$1" pin="PA03" pad="4"/>
<connect gate="G$1" pin="PA04" pad="9"/>
<connect gate="G$1" pin="PA05" pad="10"/>
<connect gate="G$1" pin="PA06" pad="11"/>
<connect gate="G$1" pin="PA07" pad="12"/>
<connect gate="G$1" pin="PA08" pad="13"/>
<connect gate="G$1" pin="PA09" pad="14"/>
<connect gate="G$1" pin="PA10" pad="15"/>
<connect gate="G$1" pin="PA11" pad="16"/>
<connect gate="G$1" pin="PA12" pad="21"/>
<connect gate="G$1" pin="PA13" pad="22"/>
<connect gate="G$1" pin="PA14" pad="23"/>
<connect gate="G$1" pin="PA15" pad="24"/>
<connect gate="G$1" pin="PA16" pad="25"/>
<connect gate="G$1" pin="PA17" pad="26"/>
<connect gate="G$1" pin="PA18" pad="27"/>
<connect gate="G$1" pin="PA19" pad="28"/>
<connect gate="G$1" pin="PA20" pad="29"/>
<connect gate="G$1" pin="PA21" pad="30"/>
<connect gate="G$1" pin="PA22" pad="31"/>
<connect gate="G$1" pin="PA23" pad="32"/>
<connect gate="G$1" pin="PA24" pad="33"/>
<connect gate="G$1" pin="PA25" pad="34"/>
<connect gate="G$1" pin="PA27" pad="39"/>
<connect gate="G$1" pin="PA28" pad="41"/>
<connect gate="G$1" pin="PA30" pad="45"/>
<connect gate="G$1" pin="PA31" pad="46"/>
<connect gate="G$1" pin="PB02" pad="47"/>
<connect gate="G$1" pin="PB03" pad="48"/>
<connect gate="G$1" pin="PB08" pad="7"/>
<connect gate="G$1" pin="PB09" pad="8"/>
<connect gate="G$1" pin="PB10" pad="19"/>
<connect gate="G$1" pin="PB11" pad="20"/>
<connect gate="G$1" pin="PB22" pad="37"/>
<connect gate="G$1" pin="PB23" pad="38"/>
<connect gate="G$1" pin="VDDANA" pad="6"/>
<connect gate="G$1" pin="VDDCORE" pad="43"/>
<connect gate="G$1" pin="VDDIN" pad="44"/>
<connect gate="G$1" pin="VDDIO1" pad="17"/>
<connect gate="G$1" pin="VDDIO2" pad="36"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" SAMD21G Series 256 kB Flash 32 kB SRAM 48 MHz 32-Bit Microcontroller - TQFP-48 "/>
<attribute name="MF" value="Microchip"/>
<attribute name="MP" value="ATSAMD21G18A-AU"/>
<attribute name="PACKAGE" value="TQFP-48 Microchip"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="microbuilder">
<description>&lt;h2&gt;&lt;b&gt;microBuilder.eu&lt;/b&gt; Eagle Footprint Library&lt;/h2&gt;

&lt;p&gt;Footprints for common components used in our projects and products.  This is the same library that we use internally, and it is regularly updated.  The newest version can always be found at &lt;b&gt;www.microBuilder.eu&lt;/b&gt;.  If you find this library useful, please feel free to purchase something from our online store. Please also note that all holes are optimised for metric drill bits!&lt;/p&gt;

&lt;h3&gt;Obligatory Warning&lt;/h3&gt;
&lt;p&gt;While it probably goes without saying, there are no guarantees that the footprints or schematic symbols in this library are flawless, and we make no promises of fitness for production, prototyping or any other purpose. These libraries are provided for information puposes only, and are used at your own discretion.  While we make every effort to produce accurate footprints, and many of the items found in this library have be proven in production, we can't make any promises of suitability for a specific purpose. If you do find any errors, though, please feel free to contact us at www.microbuilder.eu to let us know about it so that we can update the library accordingly!&lt;/p&gt;

&lt;h3&gt;License&lt;/h3&gt;
&lt;p&gt;This work is placed in the public domain, and may be freely used for commercial and non-commercial work with the following conditions:&lt;/p&gt;
&lt;p&gt;THIS SOFTWARE IS PROVIDED ''AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
&lt;/p&gt;</description>
<packages>
<package name="0603-MINI">
<description>0603-Mini
&lt;p&gt;Mini footprint for dense boards&lt;/p&gt;</description>
<wire x1="-1.346" y1="0.583" x2="1.346" y2="0.583" width="0.0508" layer="39"/>
<wire x1="1.346" y1="0.583" x2="1.346" y2="-0.583" width="0.0508" layer="39"/>
<wire x1="1.346" y1="-0.583" x2="-1.346" y2="-0.583" width="0.0508" layer="39"/>
<wire x1="-1.346" y1="-0.583" x2="-1.346" y2="0.583" width="0.0508" layer="39"/>
<wire x1="-1.45" y1="-0.7" x2="-1.45" y2="0.7" width="0.2032" layer="21"/>
<wire x1="-1.45" y1="0.7" x2="1.45" y2="0.7" width="0.2032" layer="21"/>
<wire x1="1.45" y1="0.7" x2="1.45" y2="-0.7" width="0.2032" layer="21"/>
<wire x1="1.45" y1="-0.7" x2="-1.45" y2="-0.7" width="0.2032" layer="21"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.75" y="0" dx="0.9" dy="0.9" layer="1"/>
<smd name="2" x="0.75" y="0" dx="0.9" dy="0.9" layer="1"/>
<text x="1.524" y="-0.0635" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="1.524" y="-0.635" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
</package>
<package name="0805_NOTHERMALS">
<wire x1="-1.873" y1="0.883" x2="1.873" y2="0.883" width="0.0508" layer="39"/>
<wire x1="1.873" y1="-0.883" x2="-1.873" y2="-0.883" width="0.0508" layer="39"/>
<wire x1="-1.873" y1="-0.883" x2="-1.873" y2="0.883" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<wire x1="1.873" y1="0.883" x2="1.873" y2="-0.883" width="0.0508" layer="39"/>
<wire x1="1.85" y1="1" x2="1.85" y2="-1" width="0.2032" layer="21"/>
<wire x1="1.85" y1="-1" x2="-1.85" y2="-1" width="0.2032" layer="21"/>
<wire x1="-1.85" y1="-1" x2="-1.85" y2="1" width="0.2032" layer="21"/>
<wire x1="-1.85" y1="1" x2="1.85" y2="1" width="0.2032" layer="21"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1" thermals="no"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1" thermals="no"/>
<text x="2.032" y="-0.127" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="2.032" y="-0.762" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
</package>
<package name="_0402">
<description>&lt;b&gt; 0402&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.174" x2="0.245" y2="0.174" width="0.1016" layer="51"/>
<wire x1="0.245" y1="-0.174" x2="-0.245" y2="-0.174" width="0.1016" layer="51"/>
<wire x1="-1.0573" y1="0.5557" x2="1.0573" y2="0.5557" width="0.2032" layer="21"/>
<wire x1="1.0573" y1="0.5557" x2="1.0573" y2="-0.5556" width="0.2032" layer="21"/>
<wire x1="1.0573" y1="-0.5556" x2="-1.0573" y2="-0.5557" width="0.2032" layer="21"/>
<wire x1="-1.0573" y1="-0.5557" x2="-1.0573" y2="0.5557" width="0.2032" layer="21"/>
<smd name="1" x="-0.508" y="0" dx="0.6" dy="0.6" layer="1"/>
<smd name="2" x="0.508" y="0" dx="0.6" dy="0.6" layer="1"/>
<text x="-0.9525" y="0.7939" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-0.9525" y="-1.3336" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.0794" y1="-0.2381" x2="0.0794" y2="0.2381" layer="35"/>
<rectangle x1="0.25" y1="-0.25" x2="0.5" y2="0.25" layer="51"/>
<rectangle x1="-0.5" y1="-0.25" x2="-0.25" y2="0.25" layer="51"/>
</package>
<package name="_0402MP">
<description>&lt;b&gt;0402 MicroPitch&lt;p&gt;</description>
<wire x1="-0.245" y1="0.174" x2="0.245" y2="0.174" width="0.1016" layer="51"/>
<wire x1="0.245" y1="-0.174" x2="-0.245" y2="-0.174" width="0.1016" layer="51"/>
<wire x1="0" y1="0.127" x2="0" y2="-0.127" width="0.2032" layer="21"/>
<smd name="1" x="-0.508" y="0" dx="0.5" dy="0.5" layer="1"/>
<smd name="2" x="0.508" y="0" dx="0.5" dy="0.5" layer="1"/>
<text x="-0.635" y="0.4763" size="0.6096" layer="25" ratio="18">&gt;NAME</text>
<text x="-0.635" y="-0.7938" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.1" y1="-0.2" x2="0.1" y2="0.2" layer="35"/>
<rectangle x1="-0.5" y1="-0.25" x2="-0.254" y2="0.25" layer="51"/>
<rectangle x1="0.2588" y1="-0.25" x2="0.5" y2="0.25" layer="51"/>
</package>
<package name="_0603">
<description>&lt;b&gt;0603&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.306" x2="0.432" y2="-0.306" width="0.1016" layer="51"/>
<wire x1="0.432" y1="0.306" x2="-0.432" y2="0.306" width="0.1016" layer="51"/>
<wire x1="-1.4605" y1="0.635" x2="1.4605" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.4605" y1="0.635" x2="1.4605" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="1.4605" y1="-0.635" x2="-1.4605" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.4605" y1="-0.635" x2="-1.4605" y2="0.635" width="0.2032" layer="21"/>
<smd name="1" x="-0.762" y="0" dx="0.9" dy="0.8" layer="1"/>
<smd name="2" x="0.762" y="0" dx="0.9" dy="0.8" layer="1"/>
<text x="-1.27" y="0.9525" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.27" y="-1.4923" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4" x2="0.8382" y2="0.4" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4" x2="-0.4318" y2="0.4" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="_0603MP">
<description>&lt;b&gt;0603 MicroPitch&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.306" x2="0.432" y2="-0.306" width="0.1016" layer="51"/>
<wire x1="0.432" y1="0.306" x2="-0.432" y2="0.306" width="0.1016" layer="51"/>
<wire x1="0" y1="0.254" x2="0" y2="-0.254" width="0.2032" layer="21"/>
<smd name="1" x="-0.762" y="0" dx="0.8" dy="0.8" layer="1"/>
<smd name="2" x="0.762" y="0" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.9525" y="0.635" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-0.9525" y="-0.9525" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
<rectangle x1="-0.8" y1="-0.4" x2="-0.4318" y2="0.4" layer="51"/>
<rectangle x1="-0.1999" y1="-0.25" x2="0.1999" y2="0.25" layer="35"/>
</package>
<package name="_0805">
<description>&lt;b&gt;0805&lt;/b&gt;</description>
<wire x1="-0.41" y1="0.585" x2="0.41" y2="0.585" width="0.1016" layer="51"/>
<wire x1="-0.41" y1="-0.585" x2="0.41" y2="-0.585" width="0.1016" layer="51"/>
<wire x1="-1.905" y1="0.889" x2="1.905" y2="0.889" width="0.2032" layer="21"/>
<wire x1="1.905" y1="0.889" x2="1.905" y2="-0.889" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-0.889" x2="-1.905" y2="-0.889" width="0.2032" layer="21"/>
<wire x1="-1.905" y1="-0.889" x2="-1.905" y2="0.889" width="0.2032" layer="21"/>
<smd name="1" x="-1.016" y="0" dx="1.2" dy="1.3" layer="1"/>
<smd name="2" x="1.016" y="0" dx="1.2" dy="1.3" layer="1"/>
<text x="-1.5875" y="1.27" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.5874" y="-1.651" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.65" x2="1.0564" y2="0.65" layer="51"/>
<rectangle x1="-1.0668" y1="-0.65" x2="-0.4168" y2="0.65" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="_0805MP">
<description>&lt;b&gt;0805 MicroPitch&lt;/b&gt;</description>
<wire x1="-0.51" y1="0.535" x2="0.51" y2="0.535" width="0.1016" layer="51"/>
<wire x1="-0.51" y1="-0.535" x2="0.51" y2="-0.535" width="0.1016" layer="51"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.2032" layer="21"/>
<smd name="1" x="-1.016" y="0" dx="1.2" dy="1.3" layer="1"/>
<smd name="2" x="1.016" y="0" dx="1.2" dy="1.3" layer="1"/>
<text x="-1.5875" y="0.9525" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.5875" y="-1.27" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.65" x2="1" y2="0.65" layer="51"/>
<rectangle x1="-1" y1="-0.65" x2="-0.4168" y2="0.65" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="0805-NO">
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.24" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.24" dy="1.5" layer="1"/>
<text x="2.032" y="-0.127" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="2.032" y="-0.762" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.3048" layer="21"/>
</package>
<package name="0805_10MGAP">
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<smd name="1" x="-1.05" y="0" dx="1.2" dy="1.5" layer="1"/>
<smd name="2" x="1.05" y="0" dx="1.2" dy="1.5" layer="1"/>
<text x="2.032" y="-0.127" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="2.032" y="-0.762" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.3048" layer="21"/>
</package>
<package name="0603-NO">
<wire x1="-1.473" y1="0.729" x2="1.473" y2="0.729" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.729" x2="1.473" y2="-0.729" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.729" x2="-1.473" y2="-0.729" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.729" x2="-1.473" y2="0.729" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="1.778" y="-0.127" size="0.8128" layer="25" font="vector" ratio="18">&gt;NAME</text>
<text x="1.778" y="-0.762" size="0.4064" layer="27" font="vector" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="_1206">
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1016" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1016" layer="51"/>
<wire x1="-2.286" y1="1.143" x2="2.286" y2="1.143" width="0.2032" layer="21"/>
<wire x1="2.286" y1="1.143" x2="2.286" y2="-1.143" width="0.2032" layer="21"/>
<wire x1="2.286" y1="-1.143" x2="-2.286" y2="-1.143" width="0.2032" layer="21"/>
<wire x1="-2.286" y1="-1.143" x2="-2.286" y2="1.143" width="0.2032" layer="21"/>
<smd name="2" x="1.27" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="1" x="-1.27" y="0" dx="1.4" dy="1.8" layer="1"/>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
<text x="-2.2225" y="1.5113" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-2.2225" y="-1.8288" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="_1206MP">
<wire x1="1.0525" y1="-0.7128" x2="-1.0652" y2="-0.7128" width="0.1016" layer="51"/>
<wire x1="1.0525" y1="0.7128" x2="-1.0652" y2="0.7128" width="0.1016" layer="51"/>
<wire x1="-0.635" y1="0.635" x2="0.635" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="-0.635" x2="0.635" y2="-0.635" width="0.2032" layer="21"/>
<smd name="2" x="1.524" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="1" x="-1.524" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-2.2225" y="1.1113" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-2.2225" y="-1.4288" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-0.8" x2="-0.9" y2="0.8" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
<rectangle x1="0.9001" y1="-0.8" x2="1.6" y2="0.8" layer="51" rot="R180"/>
</package>
<package name="2012">
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.2032" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.2032" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-3.302" y1="1.524" x2="3.302" y2="1.524" width="0.2032" layer="21"/>
<wire x1="3.302" y1="1.524" x2="3.302" y2="-1.524" width="0.2032" layer="21"/>
<wire x1="3.302" y1="-1.524" x2="-3.302" y2="-1.524" width="0.2032" layer="21"/>
<wire x1="-3.302" y1="-1.524" x2="-3.302" y2="1.524" width="0.2032" layer="21"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-2.54" y="1.8415" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-2.667" y="-2.159" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="2512">
<description>&lt;b&gt;RESISTOR 2512 (Metric 6432)&lt;/b&gt;</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.2032" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.2032" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-3.683" y="1.905" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-3.556" y="-2.286" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="0805-NO@1">
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="2.032" y="-0.127" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="2.032" y="-0.762" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.3048" layer="21"/>
</package>
<package name="CHIPLED_1206">
<description>&lt;b&gt;CHIPLED 1206&lt;/b&gt;</description>
<wire x1="-0.4" y1="1.6" x2="0.4" y2="1.6" width="0.1016" layer="51" curve="172.619069"/>
<wire x1="-0.8" y1="-0.95" x2="-0.8" y2="0.95" width="0.1016" layer="51"/>
<wire x1="0.8" y1="0.95" x2="0.8" y2="-0.95" width="0.1016" layer="51"/>
<wire x1="-0.6" y1="0.446" x2="0" y2="0.446" width="0.2032" layer="21"/>
<wire x1="0" y1="0.446" x2="0.6" y2="0.446" width="0.2032" layer="21"/>
<wire x1="0" y1="0.446" x2="-0.6" y2="-0.154" width="0.2032" layer="21"/>
<wire x1="-0.6" y1="-0.154" x2="0.6" y2="-0.154" width="0.2032" layer="21"/>
<wire x1="0.6" y1="-0.154" x2="0" y2="0.446" width="0.2032" layer="21"/>
<wire x1="1" y1="2.4985" x2="-1" y2="2.4985" width="0.2032" layer="21"/>
<wire x1="-1" y1="2.4985" x2="-1" y2="-2.4985" width="0.2032" layer="21"/>
<wire x1="-1" y1="-2.4985" x2="1" y2="-2.4985" width="0.2032" layer="21"/>
<wire x1="1" y1="-2.4985" x2="1" y2="2.4985" width="0.2032" layer="21"/>
<circle x="-0.55" y="1.425" radius="0.1" width="0.0762" layer="51"/>
<smd name="C" x="0" y="1.496" dx="1.5" dy="1.5" layer="1"/>
<smd name="A" x="0" y="-1.496" dx="1.5" dy="1.5" layer="1"/>
<text x="-1.27" y="-2.286" size="0.8128" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="1.651" y="-2.286" size="0.4064" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="-0.1" y="-2.23" size="0.4064" layer="51">A</text>
<text x="-0.1" y="1.86" size="0.4064" layer="51">C</text>
<rectangle x1="-0.85" y1="1.525" x2="-0.35" y2="1.65" layer="51"/>
<rectangle x1="-0.85" y1="1.225" x2="-0.625" y2="1.55" layer="51"/>
<rectangle x1="-0.45" y1="1.225" x2="-0.325" y2="1.45" layer="51"/>
<rectangle x1="-0.65" y1="1.225" x2="-0.225" y2="1.35" layer="51"/>
<rectangle x1="0.35" y1="1.3" x2="0.85" y2="1.65" layer="51"/>
<rectangle x1="0.25" y1="1.225" x2="0.85" y2="1.35" layer="51"/>
<rectangle x1="-0.85" y1="0.95" x2="0.85" y2="1.25" layer="51"/>
<rectangle x1="-0.85" y1="-1.65" x2="0.85" y2="-0.95" layer="51"/>
</package>
<package name="CHIPLED_0805">
<description>&lt;b&gt;CHIPLED 0805&lt;/b&gt;</description>
<wire x1="-0.35" y1="0.925" x2="0.35" y2="0.925" width="0.1016" layer="51" curve="162.394521"/>
<wire x1="-0.35" y1="-0.925" x2="0.35" y2="-0.925" width="0.1016" layer="51" curve="-162.394521"/>
<wire x1="0.575" y1="0.525" x2="0.575" y2="-0.525" width="0.1016" layer="51"/>
<wire x1="-0.575" y1="-0.5" x2="-0.575" y2="0.925" width="0.1016" layer="51"/>
<wire x1="-0.4" y1="0.2" x2="0" y2="0.2" width="0.2032" layer="21"/>
<wire x1="0" y1="0.2" x2="0.4" y2="0.2" width="0.2032" layer="21"/>
<wire x1="0" y1="0.2" x2="-0.4" y2="-0.2" width="0.2032" layer="21"/>
<wire x1="-0.4" y1="-0.2" x2="0.4" y2="-0.2" width="0.2032" layer="21"/>
<wire x1="0.4" y1="-0.2" x2="0" y2="0.2" width="0.2032" layer="21"/>
<wire x1="0.85" y1="-1.9" x2="-0.85" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="-0.85" y1="-1.9" x2="-0.85" y2="1.9" width="0.2032" layer="21"/>
<wire x1="-0.85" y1="1.9" x2="0.85" y2="1.9" width="0.2032" layer="21"/>
<wire x1="0.85" y1="1.9" x2="0.85" y2="-1.9" width="0.2032" layer="21"/>
<circle x="-0.45" y="0.85" radius="0.103" width="0.0762" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.016" y="-1.778" size="0.8128" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="1.397" y="-1.778" size="0.4064" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="-0.1" y="-1.4" size="0.254" layer="51">A</text>
<text x="-0.1" y="1.2" size="0.254" layer="51">C</text>
<rectangle x1="0.3" y1="0.5" x2="0.625" y2="1" layer="51"/>
<rectangle x1="-0.325" y1="0.5" x2="-0.175" y2="0.75" layer="51"/>
<rectangle x1="0.175" y1="0.5" x2="0.325" y2="0.75" layer="51"/>
<rectangle x1="-0.2" y1="0.5" x2="0.2" y2="0.675" layer="51"/>
<rectangle x1="0.3" y1="-1" x2="0.625" y2="-0.5" layer="51"/>
<rectangle x1="-0.625" y1="-1" x2="-0.3" y2="-0.5" layer="51"/>
<rectangle x1="0.175" y1="-0.75" x2="0.325" y2="-0.5" layer="51"/>
<rectangle x1="-0.325" y1="-0.75" x2="-0.175" y2="-0.5" layer="51"/>
<rectangle x1="-0.2" y1="-0.675" x2="0.2" y2="-0.5" layer="51"/>
<rectangle x1="-0.6" y1="0.5" x2="-0.3" y2="0.762" layer="51"/>
<rectangle x1="-0.625" y1="0.925" x2="-0.3" y2="1" layer="51"/>
</package>
<package name="CHIPLED_0603">
<description>&lt;b&gt;CHIPLED 0603&lt;/b&gt;</description>
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="-0.65" y1="-1.4" x2="-0.65" y2="1.4" width="0.2032" layer="21"/>
<wire x1="0.65" y1="1.4" x2="0.65" y2="-1.4" width="0.2032" layer="21"/>
<wire x1="-0.65" y1="1.4" x2="0.65" y2="1.4" width="0.2032" layer="21"/>
<wire x1="-0.65" y1="-1.4" x2="0.65" y2="-1.4" width="0.2032" layer="21"/>
<wire x1="-0.4" y1="0.2" x2="0" y2="0.2" width="0.2032" layer="21"/>
<wire x1="0" y1="0.2" x2="0.4" y2="0.2" width="0.2032" layer="21"/>
<wire x1="0" y1="0.2" x2="-0.4" y2="-0.2" width="0.2032" layer="21"/>
<wire x1="-0.4" y1="-0.2" x2="0.4" y2="-0.2" width="0.2032" layer="21"/>
<wire x1="0.4" y1="-0.2" x2="0" y2="0.2" width="0.2032" layer="21"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.762" y="-1.27" size="0.8128" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="1.27" y="-1.27" size="0.4064" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
</package>
<package name="CHIPLED_0603_NOOUTLINE">
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.762" y="-1.27" size="0.8128" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="1.27" y="-1.27" size="0.4064" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
<rectangle x1="-0.381" y1="0.1397" x2="0.381" y2="0.2667" layer="21"/>
<polygon width="0.1524" layer="21">
<vertex x="0" y="0.1397"/>
<vertex x="-0.254" y="-0.1778"/>
<vertex x="0.254" y="-0.1778"/>
</polygon>
</package>
<package name="CHIPLED_0805_NOOUTLINE">
<wire x1="-0.35" y1="0.925" x2="0.35" y2="0.925" width="0.1016" layer="51" curve="162.394521"/>
<wire x1="-0.35" y1="-0.925" x2="0.35" y2="-0.925" width="0.1016" layer="51" curve="-162.394521"/>
<wire x1="0.575" y1="0.525" x2="0.575" y2="-0.525" width="0.1016" layer="51"/>
<wire x1="-0.575" y1="-0.5" x2="-0.575" y2="0.925" width="0.1016" layer="51"/>
<circle x="-0.45" y="0.85" radius="0.103" width="0.0762" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.016" y="-1.778" size="0.8128" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="1.397" y="-1.778" size="0.4064" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="-0.1" y="-1.4" size="0.254" layer="51">A</text>
<text x="-0.1" y="1.2" size="0.254" layer="51">C</text>
<rectangle x1="0.3" y1="0.5" x2="0.625" y2="1" layer="51"/>
<rectangle x1="-0.325" y1="0.5" x2="-0.175" y2="0.75" layer="51"/>
<rectangle x1="0.175" y1="0.5" x2="0.325" y2="0.75" layer="51"/>
<rectangle x1="-0.2" y1="0.5" x2="0.2" y2="0.675" layer="51"/>
<rectangle x1="0.3" y1="-1" x2="0.625" y2="-0.5" layer="51"/>
<rectangle x1="-0.625" y1="-1" x2="-0.3" y2="-0.5" layer="51"/>
<rectangle x1="0.175" y1="-0.75" x2="0.325" y2="-0.5" layer="51"/>
<rectangle x1="-0.325" y1="-0.75" x2="-0.175" y2="-0.5" layer="51"/>
<rectangle x1="-0.2" y1="-0.675" x2="0.2" y2="-0.5" layer="51"/>
<rectangle x1="-0.6" y1="0.5" x2="-0.3" y2="0.762" layer="51"/>
<rectangle x1="-0.625" y1="0.925" x2="-0.3" y2="1" layer="51"/>
<rectangle x1="-0.4445" y1="0.1405" x2="0.4445" y2="0.331" layer="21"/>
<polygon width="0.1524" layer="21">
<vertex x="0" y="0.254"/>
<vertex x="-0.381" y="-0.254"/>
<vertex x="0.381" y="-0.254"/>
</polygon>
</package>
<package name="CREE_XLAMP_XPE2">
<description>&lt;p&gt;Source: http://www.cree.com/~/media/Files/Cree/LED%20Components%20and%20Modules/XLamp/Data%20and%20Binning/XLampXPE2.pdf&lt;/p&gt;</description>
<smd name="CATHODE" x="-1.4" y="0" dx="0.5" dy="3.3" layer="1" cream="no"/>
<smd name="ANODE" x="1.4" y="0" dx="0.5" dy="3.3" layer="1" cream="no"/>
<smd name="THERMAL" x="0" y="0" dx="1.3" dy="3.3" layer="1" cream="no"/>
<rectangle x1="-2.05" y1="-0.25" x2="-1.15" y2="0.25" layer="1"/>
<rectangle x1="-2.1" y1="-0.3" x2="-1.15" y2="0.3" layer="29"/>
<rectangle x1="1.15" y1="-0.25" x2="2.05" y2="0.25" layer="1" rot="R180"/>
<rectangle x1="1.15" y1="-0.3" x2="2.1" y2="0.3" layer="29" rot="R180"/>
<rectangle x1="-0.6" y1="-1.6" x2="0.6" y2="1.6" layer="31"/>
<rectangle x1="-2" y1="-0.2" x2="-1.2" y2="0.2" layer="31"/>
<rectangle x1="-1.6" y1="0.2" x2="-1.2" y2="1.6" layer="31"/>
<rectangle x1="-1.6" y1="-1.6" x2="-1.2" y2="-0.2" layer="31"/>
<rectangle x1="1.2" y1="-0.2" x2="2" y2="0.2" layer="31"/>
<rectangle x1="1.2" y1="0.2" x2="1.6" y2="1.6" layer="31"/>
<rectangle x1="1.2" y1="-1.6" x2="1.6" y2="-0.2" layer="31"/>
<wire x1="-1.725" y1="1.725" x2="1.725" y2="1.725" width="0.127" layer="51"/>
<wire x1="1.725" y1="1.725" x2="1.725" y2="-1.725" width="0.127" layer="51"/>
<wire x1="1.725" y1="-1.725" x2="-1.725" y2="-1.725" width="0.127" layer="51"/>
<wire x1="-1.725" y1="-1.725" x2="-1.725" y2="1.725" width="0.127" layer="51"/>
<circle x="0" y="0" radius="1.48660625" width="0.127" layer="51"/>
<rectangle x1="-1.5" y1="-1.5" x2="-1.3" y2="-1.3" layer="51"/>
<wire x1="-0.6" y1="-1.7" x2="-0.6" y2="-0.7" width="0.127" layer="51"/>
<wire x1="-0.6" y1="-0.7" x2="0.7" y2="-0.7" width="0.127" layer="51"/>
<wire x1="0.7" y1="-0.7" x2="0.7" y2="0.7" width="0.127" layer="51"/>
<wire x1="0.7" y1="0.7" x2="0" y2="0.7" width="0.127" layer="51"/>
<wire x1="0" y1="0.7" x2="0" y2="1.7" width="0.127" layer="51"/>
<polygon width="0.1524" layer="21">
<vertex x="2.346" y="1.2"/>
<vertex x="2.954" y="0.719"/>
<vertex x="2.954" y="1.681"/>
</polygon>
<rectangle x1="2.1" y1="0.6" x2="2.4" y2="1.8" layer="21"/>
<wire x1="-1.8" y1="1.8" x2="1.8" y2="1.8" width="0.127" layer="21"/>
<wire x1="1.8" y1="1.8" x2="1.8" y2="0.4" width="0.127" layer="21"/>
<wire x1="-1.8" y1="1.8" x2="-1.8" y2="0.4" width="0.127" layer="21"/>
<wire x1="-1.8" y1="-0.4" x2="-1.8" y2="-1.8" width="0.127" layer="21"/>
<wire x1="-1.8" y1="-1.8" x2="1.8" y2="-1.8" width="0.127" layer="21"/>
<wire x1="1.8" y1="-1.8" x2="1.8" y2="-0.4" width="0.127" layer="21"/>
<text x="-1.862" y="2.027" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.762" y="-2.435" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.5" y1="-0.5" x2="0.5" y2="0.5" layer="51"/>
</package>
<package name="CREE_XLAMP_XTE">
<smd name="CATHODE" x="-1.4" y="0" dx="0.5" dy="3.3" layer="1" cream="no"/>
<smd name="ANODE" x="1.4" y="0" dx="0.5" dy="3.3" layer="1" cream="no"/>
<smd name="THERMAL" x="0" y="0" dx="1.3" dy="3.3" layer="1" cream="no"/>
<rectangle x1="-2.05" y1="-0.25" x2="-1.15" y2="0.25" layer="1"/>
<rectangle x1="-2.1" y1="-0.3" x2="-1.15" y2="0.3" layer="29"/>
<rectangle x1="1.15" y1="-0.25" x2="2.05" y2="0.25" layer="1" rot="R180"/>
<rectangle x1="1.15" y1="-0.3" x2="2.1" y2="0.3" layer="29" rot="R180"/>
<rectangle x1="-0.6" y1="-1.6" x2="0.6" y2="1.6" layer="31"/>
<rectangle x1="-2" y1="-0.2" x2="-1.2" y2="0.2" layer="31"/>
<rectangle x1="-1.6" y1="0.2" x2="-1.2" y2="1.6" layer="31"/>
<rectangle x1="-1.6" y1="-1.6" x2="-1.2" y2="-0.2" layer="31"/>
<rectangle x1="1.2" y1="-0.2" x2="2" y2="0.2" layer="31"/>
<rectangle x1="1.2" y1="0.2" x2="1.6" y2="1.6" layer="31"/>
<rectangle x1="1.2" y1="-1.6" x2="1.6" y2="-0.2" layer="31"/>
<wire x1="-1.725" y1="1.725" x2="1.725" y2="1.725" width="0.127" layer="51"/>
<wire x1="1.725" y1="1.725" x2="1.725" y2="-1.725" width="0.127" layer="51"/>
<wire x1="1.725" y1="-1.725" x2="-1.725" y2="-1.725" width="0.127" layer="51"/>
<wire x1="-1.725" y1="-1.725" x2="-1.725" y2="1.725" width="0.127" layer="51"/>
<rectangle x1="-1.5" y1="-1.5" x2="-1.3" y2="-1.3" layer="51"/>
<polygon width="0.1524" layer="21">
<vertex x="2.346" y="1.2"/>
<vertex x="2.954" y="0.719"/>
<vertex x="2.954" y="1.681"/>
</polygon>
<rectangle x1="2.1" y1="0.6" x2="2.4" y2="1.8" layer="21"/>
<wire x1="-1.8" y1="1.8" x2="1.8" y2="1.8" width="0.127" layer="21"/>
<wire x1="1.8" y1="1.8" x2="1.8" y2="0.4" width="0.127" layer="21"/>
<wire x1="-1.8" y1="1.8" x2="-1.8" y2="0.4" width="0.127" layer="21"/>
<wire x1="-1.8" y1="-0.4" x2="-1.8" y2="-1.8" width="0.127" layer="21"/>
<wire x1="-1.8" y1="-1.8" x2="1.8" y2="-1.8" width="0.127" layer="21"/>
<wire x1="1.8" y1="-1.8" x2="1.8" y2="-0.4" width="0.127" layer="21"/>
<text x="-1.862" y="2.027" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.762" y="-2.435" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.5" y1="-0.5" x2="0.5" y2="0.5" layer="51"/>
<circle x="0" y="0" radius="1.5811375" width="0.127" layer="51"/>
<circle x="0" y="0" radius="1.3928375" width="0.127" layer="51"/>
<wire x1="1.2" y1="0.125" x2="1.45" y2="0.125" width="0.1" layer="51"/>
<wire x1="1.45" y1="0.125" x2="1.45" y2="0.375" width="0.1" layer="51"/>
<wire x1="1.45" y1="0.375" x2="1.7" y2="0.375" width="0.1" layer="51"/>
<wire x1="1.7" y1="0.375" x2="1.7" y2="0.125" width="0.1" layer="51"/>
<wire x1="1.7" y1="0.125" x2="1.95" y2="0.125" width="0.1" layer="51"/>
<wire x1="1.95" y1="0.125" x2="1.95" y2="-0.125" width="0.1" layer="51"/>
<wire x1="1.95" y1="-0.125" x2="1.7" y2="-0.125" width="0.1" layer="51"/>
<wire x1="1.7" y1="-0.125" x2="1.7" y2="-0.375" width="0.1" layer="51"/>
<wire x1="1.7" y1="-0.375" x2="1.45" y2="-0.375" width="0.1" layer="51"/>
<wire x1="1.45" y1="-0.375" x2="1.45" y2="-0.125" width="0.1" layer="51"/>
<wire x1="1.45" y1="-0.125" x2="1.2" y2="-0.125" width="0.1" layer="51"/>
<wire x1="1.2" y1="-0.125" x2="1.2" y2="0.125" width="0.1" layer="51"/>
</package>
<package name="EVERLIGHT_45-21">
<wire x1="-1.35" y1="1" x2="1.35" y2="1" width="0.127" layer="51"/>
<wire x1="1.35" y1="1" x2="1.35" y2="0.7" width="0.127" layer="51"/>
<wire x1="1.35" y1="0.7" x2="1.35" y2="-0.55" width="0.127" layer="51"/>
<wire x1="1.35" y1="-0.55" x2="1.35" y2="-0.7" width="0.127" layer="51"/>
<wire x1="1.35" y1="-0.7" x2="1.35" y2="-1" width="0.127" layer="51"/>
<wire x1="1.35" y1="-1" x2="0.9" y2="-1" width="0.127" layer="51"/>
<wire x1="0.9" y1="-1" x2="-1.35" y2="-1" width="0.127" layer="51"/>
<wire x1="-1.35" y1="-1" x2="-1.35" y2="-0.7" width="0.127" layer="51"/>
<wire x1="-1.35" y1="-0.7" x2="-1.35" y2="0.7" width="0.127" layer="51"/>
<wire x1="-1.35" y1="0.7" x2="-1.35" y2="1" width="0.127" layer="51"/>
<wire x1="1.35" y1="0.7" x2="1.5" y2="0.7" width="0.127" layer="51"/>
<wire x1="1.5" y1="0.7" x2="1.5" y2="-0.7" width="0.127" layer="51"/>
<wire x1="1.5" y1="-0.7" x2="1.35" y2="-0.7" width="0.127" layer="51"/>
<wire x1="1.35" y1="-0.7" x2="1.35" y2="-0.55" width="0.127" layer="51"/>
<wire x1="1.35" y1="-0.55" x2="1.35" y2="0.7" width="0.127" layer="51"/>
<wire x1="-1.35" y1="0.7" x2="-1.5" y2="0.7" width="0.127" layer="51"/>
<wire x1="-1.5" y1="0.7" x2="-1.5" y2="-0.7" width="0.127" layer="51"/>
<wire x1="-1.5" y1="-0.7" x2="-1.35" y2="-0.7" width="0.127" layer="51"/>
<wire x1="-1.15" y1="0.45" x2="-1.15" y2="0.5" width="0.127" layer="51"/>
<wire x1="-1.15" y1="0.5" x2="-0.85" y2="0.8" width="0.127" layer="51" curve="-90"/>
<wire x1="-0.85" y1="0.8" x2="0.8" y2="0.8" width="0.127" layer="51"/>
<wire x1="0.8" y1="0.8" x2="1.15" y2="0.45" width="0.127" layer="51" curve="-90"/>
<wire x1="1.15" y1="0.45" x2="1.15" y2="-0.5" width="0.127" layer="51"/>
<wire x1="1.15" y1="-0.5" x2="0.85" y2="-0.8" width="0.127" layer="51" curve="-90"/>
<wire x1="0.85" y1="-0.8" x2="-0.85" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-0.85" y1="-0.8" x2="-1.15" y2="-0.5" width="0.127" layer="51" curve="-90"/>
<wire x1="-1.15" y1="-0.5" x2="-1.15" y2="0.45" width="0.127" layer="51"/>
<smd name="A" x="-1.45" y="0" dx="1.4" dy="1.4" layer="1"/>
<smd name="K" x="1.45" y="0" dx="1.4" dy="1.4" layer="1"/>
<wire x1="0.9" y1="-1" x2="1.35" y2="-0.55" width="0.127" layer="51"/>
<wire x1="1.35" y1="-0.55" x2="1.35" y2="-0.7" width="0.127" layer="51"/>
<wire x1="1.35" y1="-0.7" x2="1.1" y2="-0.95" width="0.127" layer="51"/>
<wire x1="1.1" y1="-0.95" x2="1.2" y2="-0.95" width="0.127" layer="51"/>
<wire x1="1.2" y1="-0.95" x2="1.3" y2="-0.85" width="0.127" layer="51"/>
<text x="-1.375" y="1.25" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.375" y="-1.633" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="-1.45" y1="0.85" x2="-1.45" y2="1.1" width="0.127" layer="21"/>
<wire x1="-1.45" y1="1.1" x2="1.45" y2="1.1" width="0.127" layer="21"/>
<wire x1="1.45" y1="1.1" x2="1.45" y2="0.9" width="0.127" layer="21"/>
<wire x1="1.45" y1="0.9" x2="1.45" y2="0.85" width="0.127" layer="21"/>
<wire x1="-1.45" y1="-0.85" x2="-1.45" y2="-1.1" width="0.127" layer="21"/>
<wire x1="-1.45" y1="-1.1" x2="1.45" y2="-1.1" width="0.127" layer="21"/>
<wire x1="1.45" y1="-1.1" x2="1.45" y2="-0.85" width="0.127" layer="21"/>
<polygon width="0.1524" layer="21">
<vertex x="0.254" y="0"/>
<vertex x="-0.354" y="0.481"/>
<vertex x="-0.354" y="-0.481"/>
</polygon>
<rectangle x1="0.2" y1="-0.6" x2="0.5" y2="0.6" layer="21" rot="R180"/>
</package>
<package name="PLCC2_REVMOUNT">
<description>&lt;p&gt;PLCC2 - Reverse Mount&lt;/p&gt;
&lt;p&gt;Source: http://catalog.osram-os.com/media/_en/Graphics/00042122_0.pdf&lt;/p&gt;</description>
<smd name="K" x="-2.4" y="0" dx="1.2" dy="2.6" layer="1"/>
<smd name="A" x="2.4" y="0" dx="1.2" dy="2.6" layer="1"/>
<hole x="0" y="0" drill="2.5"/>
<wire x1="-1.7" y1="1.15" x2="-1.7" y2="1.3" width="0.127" layer="51"/>
<wire x1="-1.7" y1="1.3" x2="-1.5" y2="1.5" width="0.127" layer="51" curve="-90"/>
<wire x1="-1.5" y1="1.5" x2="-0.95" y2="1.5" width="0.127" layer="51"/>
<wire x1="-0.95" y1="1.5" x2="1.5" y2="1.5" width="0.127" layer="51"/>
<wire x1="1.5" y1="1.5" x2="1.7" y2="1.3" width="0.127" layer="51" curve="-90"/>
<wire x1="1.7" y1="1.3" x2="1.7" y2="1.2" width="0.127" layer="51"/>
<wire x1="1.7" y1="1.2" x2="1.7" y2="1.15" width="0.127" layer="51"/>
<wire x1="1.7" y1="1.15" x2="2.7" y2="1.15" width="0.127" layer="51"/>
<wire x1="2.7" y1="1.15" x2="2.7" y2="-1.15" width="0.127" layer="51"/>
<wire x1="2.7" y1="-1.15" x2="1.7" y2="-1.15" width="0.127" layer="51"/>
<wire x1="1.7" y1="-1.15" x2="1.7" y2="-1.2" width="0.127" layer="51"/>
<wire x1="1.7" y1="-1.2" x2="1.7" y2="-1.25" width="0.127" layer="51"/>
<wire x1="1.7" y1="-1.25" x2="1.45" y2="-1.5" width="0.127" layer="51" curve="-90"/>
<wire x1="1.45" y1="-1.5" x2="-1.45" y2="-1.5" width="0.127" layer="51"/>
<wire x1="-1.45" y1="-1.5" x2="-1.7" y2="-1.25" width="0.127" layer="51" curve="-90"/>
<wire x1="-1.7" y1="-1.25" x2="-1.7" y2="-1.15" width="0.127" layer="51"/>
<wire x1="-1.7" y1="-1.15" x2="-2.65" y2="-1.15" width="0.127" layer="51"/>
<wire x1="-2.65" y1="-1.15" x2="-2.65" y2="1.15" width="0.127" layer="51"/>
<wire x1="-2.65" y1="1.15" x2="-1.7" y2="1.15" width="0.127" layer="51"/>
<wire x1="-1.7" y1="1.15" x2="-1.7" y2="0.75" width="0.127" layer="51"/>
<wire x1="-1.7" y1="0.75" x2="-1.7" y2="0.65" width="0.127" layer="51"/>
<wire x1="-1.7" y1="0.65" x2="-1.7" y2="-0.65" width="0.127" layer="51"/>
<wire x1="-1.7" y1="-0.65" x2="-1.7" y2="-1.15" width="0.127" layer="51"/>
<wire x1="-1.7" y1="-0.65" x2="-1.75" y2="-0.65" width="0.127" layer="51"/>
<wire x1="-1.75" y1="-0.65" x2="-1.85" y2="-0.55" width="0.127" layer="51" curve="-90"/>
<wire x1="-1.85" y1="-0.55" x2="-1.85" y2="0.5" width="0.127" layer="51"/>
<wire x1="-1.85" y1="0.5" x2="-1.7" y2="0.65" width="0.127" layer="51" curve="-90"/>
<wire x1="1.7" y1="-1.2" x2="1.7" y2="-0.65" width="0.127" layer="51"/>
<wire x1="1.7" y1="-0.65" x2="1.7" y2="0.65" width="0.127" layer="51"/>
<wire x1="1.7" y1="0.65" x2="1.7" y2="1.2" width="0.127" layer="51"/>
<wire x1="1.7" y1="0.65" x2="1.75" y2="0.65" width="0.127" layer="51"/>
<wire x1="1.75" y1="0.65" x2="1.85" y2="0.55" width="0.127" layer="51" curve="-90"/>
<wire x1="1.85" y1="0.55" x2="1.85" y2="-0.5" width="0.127" layer="51"/>
<wire x1="1.85" y1="-0.5" x2="1.7" y2="-0.65" width="0.127" layer="51" curve="-90"/>
<wire x1="-1.7" y1="0.75" x2="-0.95" y2="1.5" width="0.127" layer="51"/>
<circle x="0" y="0" radius="1.220653125" width="0.127" layer="51"/>
<wire x1="0" y1="0.8" x2="0.8" y2="0" width="0.127" layer="51" style="shortdash" curve="-90"/>
<wire x1="0.8" y1="0" x2="0" y2="-0.8" width="0.127" layer="51" style="shortdash" curve="-90"/>
<wire x1="0" y1="-0.8" x2="-0.8" y2="0" width="0.127" layer="51" style="shortdash" curve="-90"/>
<wire x1="-0.8" y1="0" x2="0" y2="0.8" width="0.127" layer="51" style="shortdash" curve="-90"/>
<wire x1="-1.75" y1="1.45" x2="-1.6" y2="1.6" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.6" y1="1.6" x2="1.6" y2="1.6" width="0.127" layer="21"/>
<wire x1="1.6" y1="1.6" x2="1.75" y2="1.45" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.75" y1="-1.45" x2="-1.55" y2="-1.6" width="0.127" layer="21" curve="90"/>
<wire x1="-1.55" y1="-1.6" x2="1.55" y2="-1.6" width="0.127" layer="21"/>
<wire x1="1.55" y1="-1.6" x2="1.75" y2="-1.45" width="0.127" layer="21" curve="90"/>
<text x="-1.79" y="1.84" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.74" y="-2.16" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="1X16_OVAL">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-20.32" y1="0.635" x2="-20.32" y2="-0.635" width="0.2032" layer="51"/>
<pad name="1" x="-19.05" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="-16.51" y="0" drill="1" shape="long" rot="R90"/>
<pad name="3" x="-13.97" y="0" drill="1" shape="long" rot="R90"/>
<pad name="4" x="-11.43" y="0" drill="1" shape="long" rot="R90"/>
<pad name="5" x="-8.89" y="0" drill="1" shape="long" rot="R90"/>
<pad name="6" x="-6.35" y="0" drill="1" shape="long" rot="R90"/>
<pad name="7" x="-3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="8" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="9" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="10" x="3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="11" x="6.35" y="0" drill="1" shape="long" rot="R90"/>
<pad name="12" x="8.89" y="0" drill="1" shape="long" rot="R90"/>
<pad name="13" x="11.43" y="0" drill="1" shape="long" rot="R90"/>
<pad name="14" x="13.97" y="0" drill="1" shape="long" rot="R90"/>
<pad name="15" x="16.51" y="0" drill="1" shape="long" rot="R90"/>
<pad name="16" x="19.05" y="0" drill="1" shape="long" rot="R90"/>
<text x="-20.3962" y="1.8288" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-20.32" y="-3.175" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="16.256" y1="-0.254" x2="16.764" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-14.224" y1="-0.254" x2="-13.716" y2="0.254" layer="51"/>
<rectangle x1="-16.764" y1="-0.254" x2="-16.256" y2="0.254" layer="51"/>
<rectangle x1="-19.304" y1="-0.254" x2="-18.796" y2="0.254" layer="51"/>
<rectangle x1="18.796" y1="-0.254" x2="19.304" y2="0.254" layer="51"/>
</package>
<package name="1X16_ROUND">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-20.32" y1="0.635" x2="-20.32" y2="-0.635" width="0.2032" layer="51"/>
<pad name="1" x="-19.05" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="2" x="-16.51" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="3" x="-13.97" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="4" x="-11.43" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="5" x="-8.89" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="6" x="-6.35" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="7" x="-3.81" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="8" x="-1.27" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="9" x="1.27" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="10" x="3.81" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="11" x="6.35" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="12" x="8.89" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="13" x="11.43" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="14" x="13.97" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="15" x="16.51" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="16" x="19.05" y="0" drill="1" diameter="1.6764" rot="R90"/>
<text x="-20.3962" y="1.8288" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-20.32" y="-3.175" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="16.256" y1="-0.254" x2="16.764" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-14.224" y1="-0.254" x2="-13.716" y2="0.254" layer="51"/>
<rectangle x1="-16.764" y1="-0.254" x2="-16.256" y2="0.254" layer="51"/>
<rectangle x1="-19.304" y1="-0.254" x2="-18.796" y2="0.254" layer="51"/>
<rectangle x1="18.796" y1="-0.254" x2="19.304" y2="0.254" layer="51"/>
</package>
<package name="1X16_2MM">
<wire x1="-16.32" y1="0.635" x2="-16.32" y2="-0.635" width="0.2032" layer="51"/>
<pad name="1" x="-15" y="0" drill="0.8" diameter="1.27"/>
<pad name="2" x="-13" y="0" drill="0.8" diameter="1.27"/>
<pad name="3" x="-11" y="0" drill="0.8" diameter="1.27"/>
<pad name="4" x="-9" y="0" drill="0.8" diameter="1.27"/>
<pad name="5" x="-7" y="0" drill="0.8" diameter="1.27"/>
<pad name="6" x="-5" y="0" drill="0.8" diameter="1.27"/>
<pad name="7" x="-3" y="0" drill="0.8" diameter="1.27"/>
<pad name="8" x="-1" y="0" drill="0.8" diameter="1.27"/>
<pad name="9" x="1" y="0" drill="0.8" diameter="1.27"/>
<pad name="10" x="3" y="0" drill="0.8" diameter="1.27"/>
<pad name="11" x="5" y="0" drill="0.8" diameter="1.27"/>
<pad name="12" x="7" y="0" drill="0.8" diameter="1.27"/>
<pad name="13" x="9" y="0" drill="0.8" diameter="1.27"/>
<pad name="14" x="11" y="0" drill="0.8" diameter="1.27"/>
<pad name="15" x="13" y="0" drill="0.8" diameter="1.27"/>
<pad name="16" x="15" y="0" drill="0.8" diameter="1.27"/>
<text x="-15.3962" y="1.8288" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-15.32" y="-3.175" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-15.254" y1="-0.254" x2="-14.746" y2="0.254" layer="51"/>
<rectangle x1="-13.254" y1="-0.254" x2="-12.746" y2="0.254" layer="51"/>
<rectangle x1="-11.254" y1="-0.254" x2="-10.746" y2="0.254" layer="51"/>
<rectangle x1="-9.254" y1="-0.254" x2="-8.746" y2="0.254" layer="51"/>
<rectangle x1="-7.254" y1="-0.254" x2="-6.746" y2="0.254" layer="51"/>
<rectangle x1="-5.254" y1="-0.254" x2="-4.746" y2="0.254" layer="51"/>
<rectangle x1="-3.254" y1="-0.254" x2="-2.746" y2="0.254" layer="51"/>
<rectangle x1="-1.254" y1="-0.254" x2="-0.746" y2="0.254" layer="51"/>
<rectangle x1="0.746" y1="-0.254" x2="1.254" y2="0.254" layer="51"/>
<rectangle x1="2.746" y1="-0.254" x2="3.254" y2="0.254" layer="51"/>
<rectangle x1="4.746" y1="-0.254" x2="5.254" y2="0.254" layer="51"/>
<rectangle x1="6.746" y1="-0.254" x2="7.254" y2="0.254" layer="51"/>
<rectangle x1="8.746" y1="-0.254" x2="9.254" y2="0.254" layer="51"/>
<rectangle x1="10.746" y1="-0.254" x2="11.254" y2="0.254" layer="51"/>
<rectangle x1="12.746" y1="-0.254" x2="13.254" y2="0.254" layer="51"/>
<rectangle x1="14.746" y1="-0.254" x2="15.254" y2="0.254" layer="51"/>
</package>
<package name="1X16_2MM_OVAL">
<wire x1="-16.32" y1="0.635" x2="-16.32" y2="-0.635" width="0.2032" layer="51"/>
<pad name="P$1" x="-15" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<pad name="P$2" x="-13" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<pad name="P$3" x="-11" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<pad name="P$4" x="-9" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<pad name="P$5" x="-7" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<pad name="P$6" x="-5" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<pad name="P$7" x="-3" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<pad name="P$8" x="-1" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<pad name="P$9" x="1" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<pad name="P$10" x="3" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<pad name="P$11" x="5" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<pad name="P$12" x="7" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<pad name="P$13" x="9" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<pad name="P$14" x="11" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<pad name="P$15" x="13" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<pad name="P$16" x="15" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<text x="-15.3962" y="1.8288" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-15.32" y="-3.175" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-15.254" y1="-0.254" x2="-14.746" y2="0.254" layer="51"/>
<rectangle x1="-13.254" y1="-0.254" x2="-12.746" y2="0.254" layer="51"/>
<rectangle x1="-11.254" y1="-0.254" x2="-10.746" y2="0.254" layer="51"/>
<rectangle x1="-9.254" y1="-0.254" x2="-8.746" y2="0.254" layer="51"/>
<rectangle x1="-7.254" y1="-0.254" x2="-6.746" y2="0.254" layer="51"/>
<rectangle x1="-5.254" y1="-0.254" x2="-4.746" y2="0.254" layer="51"/>
<rectangle x1="-3.254" y1="-0.254" x2="-2.746" y2="0.254" layer="51"/>
<rectangle x1="-1.254" y1="-0.254" x2="-0.746" y2="0.254" layer="51"/>
<rectangle x1="0.746" y1="-0.254" x2="1.254" y2="0.254" layer="51"/>
<rectangle x1="2.746" y1="-0.254" x2="3.254" y2="0.254" layer="51"/>
<rectangle x1="4.746" y1="-0.254" x2="5.254" y2="0.254" layer="51"/>
<rectangle x1="6.746" y1="-0.254" x2="7.254" y2="0.254" layer="51"/>
<rectangle x1="8.746" y1="-0.254" x2="9.254" y2="0.254" layer="51"/>
<rectangle x1="10.746" y1="-0.254" x2="11.254" y2="0.254" layer="51"/>
<rectangle x1="12.746" y1="-0.254" x2="13.254" y2="0.254" layer="51"/>
<rectangle x1="14.746" y1="-0.254" x2="15.254" y2="0.254" layer="51"/>
</package>
<package name="1X12_ROUND">
<wire x1="-15.24" y1="0.635" x2="-15.24" y2="-0.635" width="0.2032" layer="51"/>
<pad name="1" x="-13.97" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="2" x="-11.43" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="3" x="-8.89" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="4" x="-6.35" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="5" x="-3.81" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="6" x="-1.27" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="7" x="1.27" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="8" x="3.81" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="9" x="6.35" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="10" x="8.89" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="11" x="11.43" y="0" drill="1" diameter="1.6764" rot="R90"/>
<pad name="12" x="13.97" y="0" drill="1" diameter="1.6764" rot="R90"/>
<text x="-15.3162" y="1.8288" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-15.24" y="-3.175" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-14.224" y1="-0.254" x2="-13.716" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
</package>
<package name="1X12_OVAL">
<wire x1="-15.24" y1="0.635" x2="-15.24" y2="-0.635" width="0.2032" layer="51"/>
<pad name="1" x="-13.97" y="0" drill="1" diameter="1.6764" shape="long" rot="R90"/>
<pad name="2" x="-11.43" y="0" drill="1" diameter="1.6764" shape="long" rot="R90"/>
<pad name="3" x="-8.89" y="0" drill="1" diameter="1.6764" shape="long" rot="R90"/>
<pad name="4" x="-6.35" y="0" drill="1" diameter="1.6764" shape="long" rot="R90"/>
<pad name="5" x="-3.81" y="0" drill="1" diameter="1.6764" shape="long" rot="R90"/>
<pad name="6" x="-1.27" y="0" drill="1" diameter="1.6764" shape="long" rot="R90"/>
<pad name="7" x="1.27" y="0" drill="1" diameter="1.6764" shape="long" rot="R90"/>
<pad name="8" x="3.81" y="0" drill="1" diameter="1.6764" shape="long" rot="R90"/>
<pad name="9" x="6.35" y="0" drill="1" diameter="1.6764" shape="long" rot="R90"/>
<pad name="10" x="8.89" y="0" drill="1" diameter="1.6764" shape="long" rot="R90"/>
<pad name="11" x="11.43" y="0" drill="1" diameter="1.6764" shape="long" rot="R90"/>
<pad name="12" x="13.97" y="0" drill="1" diameter="1.6764" shape="long" rot="R90"/>
<text x="-15.3162" y="1.8288" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-15.24" y="-3.175" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-14.224" y1="-0.254" x2="-13.716" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
</package>
<package name="1X12_ROUND_80MIL">
<wire x1="-15.24" y1="0.635" x2="-15.24" y2="-0.635" width="0.2032" layer="51"/>
<pad name="1" x="-13.97" y="0" drill="1" diameter="2.032" rot="R90"/>
<pad name="2" x="-11.43" y="0" drill="1" diameter="2.032" rot="R90"/>
<pad name="3" x="-8.89" y="0" drill="1" diameter="2.032" rot="R90"/>
<pad name="4" x="-6.35" y="0" drill="1" diameter="2.032" rot="R90"/>
<pad name="5" x="-3.81" y="0" drill="1" diameter="2.032" rot="R90"/>
<pad name="6" x="-1.27" y="0" drill="1" diameter="2.032" rot="R90"/>
<pad name="7" x="1.27" y="0" drill="1" diameter="2.032" rot="R90"/>
<pad name="8" x="3.81" y="0" drill="1" diameter="2.032" rot="R90"/>
<pad name="9" x="6.35" y="0" drill="1" diameter="2.032" rot="R90"/>
<pad name="10" x="8.89" y="0" drill="1" diameter="2.032" rot="R90"/>
<pad name="11" x="11.43" y="0" drill="1" diameter="2.032" rot="R90"/>
<pad name="12" x="13.97" y="0" drill="1" diameter="2.032" rot="R90"/>
<text x="-15.3162" y="1.8288" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-15.24" y="-3.175" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-14.224" y1="-0.254" x2="-13.716" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
</package>
<package name="1X12_ROUND_76MIL">
<wire x1="-15.24" y1="0.635" x2="-15.24" y2="-0.635" width="0.2032" layer="51"/>
<pad name="1" x="-13.97" y="0" drill="1" diameter="1.9304" rot="R90"/>
<pad name="2" x="-11.43" y="0" drill="1" diameter="1.9304" rot="R90"/>
<pad name="3" x="-8.89" y="0" drill="1" diameter="1.9304" rot="R90"/>
<pad name="4" x="-6.35" y="0" drill="1" diameter="1.9304" rot="R90"/>
<pad name="5" x="-3.81" y="0" drill="1" diameter="1.9304" rot="R90"/>
<pad name="6" x="-1.27" y="0" drill="1" diameter="1.9304" rot="R90"/>
<pad name="7" x="1.27" y="0" drill="1" diameter="1.9304" rot="R90"/>
<pad name="8" x="3.81" y="0" drill="1" diameter="1.9304" rot="R90"/>
<pad name="9" x="6.35" y="0" drill="1" diameter="1.9304" rot="R90"/>
<pad name="10" x="8.89" y="0" drill="1" diameter="1.9304" rot="R90"/>
<pad name="11" x="11.43" y="0" drill="1" diameter="1.9304" rot="R90"/>
<pad name="12" x="13.97" y="0" drill="1" diameter="1.9304" rot="R90"/>
<text x="-15.3162" y="1.8288" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-15.24" y="-3.175" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-14.224" y1="-0.254" x2="-13.716" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
</package>
<package name="1X01_OVAL">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<pad name="1" x="0" y="0" drill="1" diameter="1.6764" shape="long" rot="R90"/>
<text x="-1.3462" y="1.8288" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X01_ROUND">
<pad name="1" x="0" y="0" drill="1" diameter="1.6764" rot="R90"/>
<text x="-1.3462" y="1.8288" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X01_2MM">
<pad name="1" x="0" y="0" drill="0.8" diameter="1.27" rot="R90"/>
<text x="-1.3462" y="1.8288" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X01_2MM_OVAL">
<pad name="1" x="0" y="0" drill="0.8" diameter="1.27" shape="long" rot="R90"/>
<text x="-1.3462" y="1.8288" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X01_SMD_MASKHELD_2X2MM">
<smd name="1" x="0" y="0" dx="2.4" dy="2.4" layer="1" cream="no"/>
</package>
<package name="1X01_SMD_MASKHELD_1X2MM">
<smd name="P$1" x="0" y="0" dx="1.4" dy="2.4" layer="1" stop="no" cream="no"/>
<rectangle x1="-0.5" y1="-1" x2="0.5" y2="1" layer="29"/>
</package>
<package name="RFM69HCW">
<wire x1="-8" y1="8" x2="8" y2="8" width="0.127" layer="51"/>
<wire x1="8" y1="8" x2="8" y2="-8" width="0.127" layer="51"/>
<wire x1="8" y1="-8" x2="-8" y2="-8" width="0.127" layer="51"/>
<wire x1="-8" y1="-8" x2="-8" y2="8" width="0.127" layer="51"/>
<pad name="1" x="6.8" y="-7" drill="0.4" shape="offset"/>
<smd name="1P" x="8.1" y="-7" dx="2" dy="0.8" layer="1" rot="R180"/>
<pad name="2" x="6.8" y="-5" drill="0.4" shape="offset"/>
<smd name="2P" x="8.1" y="-5" dx="2" dy="0.8" layer="1" rot="R180"/>
<pad name="3" x="6.8" y="-3" drill="0.4" shape="offset"/>
<smd name="3P" x="8.1" y="-3" dx="2" dy="0.8" layer="1" rot="R180"/>
<pad name="4" x="6.8" y="-1" drill="0.4" shape="offset"/>
<smd name="4P" x="8.1" y="-1" dx="2" dy="0.8" layer="1" rot="R180"/>
<pad name="5" x="6.8" y="1" drill="0.4" shape="offset"/>
<smd name="5P" x="8.1" y="1" dx="2" dy="0.8" layer="1" rot="R180"/>
<pad name="6" x="6.8" y="3" drill="0.4" shape="offset"/>
<smd name="6P" x="8.1" y="3" dx="2" dy="0.8" layer="1" rot="R180"/>
<pad name="7" x="6.8" y="5" drill="0.4" shape="offset"/>
<smd name="7P" x="8.1" y="5" dx="2" dy="0.8" layer="1" rot="R180"/>
<wire x1="-8.1" y1="7.7" x2="-8.1" y2="8.1" width="0.127" layer="21"/>
<wire x1="-8.1" y1="8.1" x2="8.1" y2="8.1" width="0.127" layer="21"/>
<wire x1="8.1" y1="8.1" x2="8.1" y2="7.7" width="0.127" layer="21"/>
<wire x1="-8.1" y1="-7.7" x2="-8.1" y2="-8.1" width="0.127" layer="21"/>
<wire x1="-8.1" y1="-8.1" x2="8.1" y2="-8.1" width="0.127" layer="21"/>
<wire x1="8.1" y1="-8.1" x2="8.1" y2="-7.7" width="0.127" layer="21"/>
<text x="-8" y="8.5" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-8.1" y="-8.7" size="0.4064" layer="25" ratio="10">&gt;VALUE</text>
<pad name="8" x="6.8" y="7" drill="0.4" shape="offset"/>
<smd name="8P" x="8.1" y="7" dx="2" dy="0.8" layer="1" rot="R180"/>
<pad name="9" x="-6.8" y="7" drill="0.4" shape="offset" rot="R180"/>
<smd name="9P" x="-8.1" y="7" dx="2" dy="0.8" layer="1"/>
<pad name="10" x="-6.8" y="5" drill="0.4" shape="offset" rot="R180"/>
<smd name="10P" x="-8.1" y="5" dx="2" dy="0.8" layer="1"/>
<pad name="11" x="-6.8" y="3" drill="0.4" shape="offset" rot="R180"/>
<smd name="11P" x="-8.1" y="3" dx="2" dy="0.8" layer="1"/>
<pad name="12" x="-6.8" y="1" drill="0.4" shape="offset" rot="R180"/>
<smd name="12P" x="-8.1" y="1" dx="2" dy="0.8" layer="1"/>
<pad name="13" x="-6.8" y="-1" drill="0.4" shape="offset" rot="R180"/>
<smd name="13P" x="-8.1" y="-1" dx="2" dy="0.8" layer="1"/>
<pad name="14" x="-6.8" y="-3" drill="0.4" shape="offset" rot="R180"/>
<smd name="14P" x="-8.1" y="-3" dx="2" dy="0.8" layer="1"/>
<pad name="15" x="-6.8" y="-5" drill="0.4" shape="offset" rot="R180"/>
<smd name="15P" x="-8.1" y="-5" dx="2" dy="0.8" layer="1"/>
<pad name="16" x="-6.8" y="-7" drill="0.4" shape="offset" rot="R180"/>
<smd name="16P" x="-8.1" y="-7" dx="2" dy="0.8" layer="1"/>
<circle x="10.1" y="-7" radius="0.3" width="0.6096" layer="21"/>
</package>
<package name="RFMHCW_SMT">
<wire x1="-8" y1="8" x2="8" y2="8" width="0.127" layer="51"/>
<wire x1="8" y1="8" x2="8" y2="-8" width="0.127" layer="51"/>
<wire x1="8" y1="-8" x2="-8" y2="-8" width="0.127" layer="51"/>
<wire x1="-8" y1="-8" x2="-8" y2="8" width="0.127" layer="51"/>
<smd name="1P" x="8.1" y="-7" dx="1.5" dy="1" layer="1" rot="R180"/>
<smd name="2P" x="8.1" y="-5" dx="1.5" dy="1" layer="1" rot="R180"/>
<smd name="3P" x="8.1" y="-3" dx="1.5" dy="1" layer="1" rot="R180"/>
<smd name="4P" x="8.1" y="-1" dx="1.5" dy="1" layer="1" rot="R180"/>
<smd name="5P" x="8.1" y="1" dx="1.5" dy="1" layer="1" rot="R180"/>
<smd name="6P" x="8.1" y="3" dx="1.5" dy="1" layer="1" rot="R180"/>
<smd name="7P" x="8.1" y="5" dx="1.5" dy="1" layer="1" rot="R180"/>
<wire x1="-8.1" y1="7.7" x2="-8.1" y2="8.1" width="0.127" layer="21"/>
<wire x1="-8.1" y1="8.1" x2="8.1" y2="8.1" width="0.127" layer="21"/>
<wire x1="8.1" y1="8.1" x2="8.1" y2="7.7" width="0.127" layer="21"/>
<wire x1="-8.1" y1="-7.7" x2="-8.1" y2="-8.1" width="0.127" layer="21"/>
<wire x1="-8.1" y1="-8.1" x2="8.1" y2="-8.1" width="0.127" layer="21"/>
<wire x1="8.1" y1="-8.1" x2="8.1" y2="-7.7" width="0.127" layer="21"/>
<text x="-8" y="8.5" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-8.1" y="-8.7" size="0.4064" layer="25" ratio="10">&gt;VALUE</text>
<smd name="8P" x="8.1" y="7" dx="1.5" dy="1" layer="1" rot="R180"/>
<smd name="9P" x="-8.1" y="7" dx="1.5" dy="1" layer="1"/>
<smd name="10P" x="-8.1" y="5" dx="1.5" dy="1" layer="1"/>
<smd name="11P" x="-8.1" y="3" dx="1.5" dy="1" layer="1"/>
<smd name="12P" x="-8.1" y="1" dx="1.5" dy="1" layer="1"/>
<smd name="13P" x="-8.1" y="-1" dx="1.5" dy="1" layer="1"/>
<smd name="14P" x="-8.1" y="-3" dx="1.5" dy="1" layer="1"/>
<smd name="15P" x="-8.1" y="-5" dx="1.5" dy="1" layer="1"/>
<smd name="16P" x="-8.1" y="-7" dx="1.5" dy="1" layer="1"/>
<circle x="10.1" y="-7" radius="0.3" width="0.6096" layer="21"/>
</package>
<package name="U.FL">
<wire x1="1.3" y1="0.7" x2="1.3" y2="2.1" width="0.2032" layer="21"/>
<wire x1="1.3" y1="2.1" x2="-1.3" y2="2.1" width="0.2032" layer="21"/>
<wire x1="-1.3" y1="-2.1" x2="1.3" y2="-2.1" width="0.2032" layer="21"/>
<wire x1="1.3" y1="-2.1" x2="1.3" y2="-0.7" width="0.2032" layer="21"/>
<wire x1="-1.3" y1="0.7" x2="-1.3" y2="2.1" width="0.2032" layer="21"/>
<wire x1="-1.3" y1="-2.1" x2="-1.3" y2="-0.7" width="0.2032" layer="21"/>
<wire x1="1.4" y1="0.7" x2="1.4" y2="2" width="0.2032" layer="21"/>
<wire x1="1.4" y1="-2" x2="1.4" y2="-0.7" width="0.2032" layer="21"/>
<wire x1="1.5" y1="0.7" x2="1.5" y2="2.1" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-2.1" x2="1.5" y2="-0.7" width="0.2032" layer="21"/>
<wire x1="1.5" y1="2.1" x2="1.3" y2="2.1" width="0.2032" layer="21"/>
<wire x1="1.5" y1="0.7" x2="1.3" y2="0.7" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-0.7" x2="1.3" y2="-0.7" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-2.1" x2="1.3" y2="-2.1" width="0.2032" layer="21"/>
<smd name="1" x="0" y="1.375" dx="2.2" dy="1.05" layer="1"/>
<smd name="2" x="0" y="-1.375" dx="2.2" dy="1.05" layer="1"/>
<smd name="3" x="1.525" y="0" dx="0.8" dy="1" layer="1"/>
<rectangle x1="-0.889" y1="-0.8255" x2="0.889" y2="0.8255" layer="41"/>
<text x="-1.27" y="2.54" size="1.016" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="CAPACITOR">
<wire x1="0" y1="0.762" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.778" width="0.1524" layer="94"/>
<text x="-2.29" y="1.25" size="1.27" layer="95" font="vector" rot="R90" align="center">&gt;NAME</text>
<text x="2.3" y="1.25" size="1.27" layer="96" font="vector" rot="R90" align="center">&gt;VALUE</text>
<rectangle x1="-1.27" y1="0.508" x2="1.27" y2="1.016" layer="94"/>
<rectangle x1="-1.27" y1="1.524" x2="1.27" y2="2.032" layer="94"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.524" y="-2.54" size="1.27" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<text x="0" y="2.54" size="1.27" layer="95" font="vector" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.016" layer="96" font="vector" ratio="15" align="center">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="LED">
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="2.54" width="0.254" layer="94"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.9525" y1="2.8575" x2="-0.3175" y2="2.2225" width="0.254" layer="94"/>
<wire x1="-0.3175" y1="2.2225" x2="0" y2="3.175" width="0.254" layer="94"/>
<wire x1="0" y1="3.175" x2="-0.9525" y2="2.8575" width="0.254" layer="94"/>
<wire x1="0.3175" y1="2.8575" x2="0.9525" y2="2.2225" width="0.254" layer="94"/>
<wire x1="1.27" y1="3.175" x2="0.3175" y2="2.8575" width="0.254" layer="94"/>
<wire x1="0.9525" y1="2.2225" x2="1.27" y2="3.175" width="0.254" layer="94"/>
<text x="-1.27" y="4.445" size="1.27" layer="95" align="center">&gt;NAME</text>
<text x="-1.27" y="-2.794" size="1.27" layer="96" align="center">&gt;VALUE</text>
<pin name="A" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="VBUS">
<text x="-1.524" y="1.016" size="1.27" layer="96">&gt;VALUE</text>
<pin name="VBUS" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
<wire x1="-1.27" y1="-1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
</symbol>
<symbol name="VBAT">
<text x="-1.524" y="1.016" size="1.27" layer="96">&gt;VALUE</text>
<pin name="VBAT" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
<wire x1="-1.27" y1="-1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
</symbol>
<symbol name="PINHD16">
<wire x1="-6.35" y1="-22.86" x2="1.27" y2="-22.86" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-22.86" x2="1.27" y2="20.32" width="0.4064" layer="94"/>
<wire x1="1.27" y1="20.32" x2="-6.35" y2="20.32" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="20.32" x2="-6.35" y2="-22.86" width="0.4064" layer="94"/>
<text x="-6.35" y="20.955" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-25.4" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="9" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="11" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="13" x="-2.54" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="14" x="-2.54" y="-15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="15" x="-2.54" y="-17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="16" x="-2.54" y="-20.32" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="PINHD12">
<wire x1="-6.35" y1="-15.24" x2="1.27" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-15.24" x2="1.27" y2="17.78" width="0.4064" layer="94"/>
<wire x1="1.27" y1="17.78" x2="-6.35" y2="17.78" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="17.78" x2="-6.35" y2="-15.24" width="0.4064" layer="94"/>
<text x="-6.35" y="18.415" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="9" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="11" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="-2.54" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="PINHD1">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="-6.35" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="2.54" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="RFM69HCW">
<pin name="MISO" x="-12.7" y="5.08" length="short" direction="out"/>
<pin name="DIO0" x="12.7" y="2.54" length="short" rot="R180"/>
<pin name="DIO2" x="12.7" y="7.62" length="short" rot="R180"/>
<pin name="DIO1" x="12.7" y="5.08" length="short" rot="R180"/>
<pin name="DIO5" x="-12.7" y="-7.62" length="short"/>
<pin name="RESET" x="-12.7" y="-5.08" length="short" direction="in"/>
<pin name="GND@3" x="-12.7" y="-10.16" length="short" direction="pwr"/>
<pin name="ANT" x="12.7" y="-10.16" length="short" rot="R180"/>
<pin name="GND@1" x="12.7" y="-7.62" length="short" direction="pwr" rot="R180"/>
<pin name="DIO3" x="12.7" y="-5.08" length="short" rot="R180"/>
<pin name="MOSI" x="-12.7" y="2.54" length="short" direction="in"/>
<pin name="SCK" x="-12.7" y="0" length="short" direction="in"/>
<pin name="NSS" x="-12.7" y="-2.54" length="short" direction="in"/>
<wire x1="-10.16" y1="10.16" x2="10.16" y2="10.16" width="0.254" layer="94" style="shortdash"/>
<wire x1="10.16" y1="10.16" x2="10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="-10.16" y2="-12.7" width="0.254" layer="94" style="shortdash"/>
<wire x1="-10.16" y1="-12.7" x2="-10.16" y2="10.16" width="0.254" layer="94"/>
<text x="-10.16" y="17.78" size="1.27" layer="95">&gt;NAME</text>
<text x="-10.16" y="-20.32" size="1.27" layer="95">&gt;VALUE</text>
<wire x1="-10.16" y1="10.16" x2="-10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="-10.16" y1="15.24" x2="10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="15.24" x2="10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-12.7" x2="-10.16" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-17.78" x2="10.16" y2="-17.78" width="0.254" layer="94"/>
<wire x1="10.16" y1="-17.78" x2="10.16" y2="-12.7" width="0.254" layer="94"/>
<text x="0" y="12.7" size="1.27" layer="94" align="center">RFM69HCW
ISM BAND RADIO</text>
<text x="0" y="-15.24" size="1.27" layer="94" align="center">VDD: 1.8-3.6V
Temp: -40~+85°C</text>
<pin name="DIO4" x="12.7" y="-2.54" length="short" rot="R180"/>
<pin name="VDD" x="12.7" y="0" length="short" direction="pwr" rot="R180"/>
<pin name="GND@2" x="-12.7" y="7.62" length="short" direction="pwr"/>
</symbol>
<symbol name="U.FL">
<wire x1="0" y1="-2.54" x2="0" y2="-7.62" width="0.254" layer="94"/>
<circle x="0" y="0" radius="1.1359" width="0.254" layer="94"/>
<circle x="0" y="0" radius="2.54" width="0.254" layer="94"/>
<pin name="GND@0" x="-2.54" y="-5.08" visible="off" length="short" direction="pas"/>
<pin name="SIGNAL" x="5.08" y="0" visible="off" length="middle" direction="pas" rot="R180"/>
<pin name="GND@1" x="-2.54" y="-7.62" visible="off" length="short" direction="pas"/>
<text x="-2.54" y="3.302" size="1.27" layer="95">&gt;NAME</text>
<text x="-2.54" y="-10.16" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="CAP_CERAMIC" prefix="C" uservalue="yes">
<description>&lt;p&gt;&lt;b&gt;Ceramic Capacitors&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;For new designs, use the packages preceded by an '_' character since they are more reliable:&lt;/p&gt;
&lt;p&gt;The following footprints should be used on most boards:&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;&lt;b&gt;_0402&lt;/b&gt; - Standard footprint for regular board layouts&lt;/li&gt;
&lt;li&gt;&lt;b&gt;_0603&lt;/b&gt; - Standard footprint for regular board layouts&lt;/li&gt;
&lt;li&gt;&lt;b&gt;_0805&lt;/b&gt; - Standard footprint for regular board layouts&lt;/li&gt;
&lt;li&gt;&lt;b&gt;_1206&lt;/b&gt; - Standard footprint for regular board layouts&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;For extremely tight-pitch boards where space is at a premium, the following 'micro-pitch' footprints can be used (smaller pads, no silkscreen outline, etc.):&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;&lt;b&gt;_0402MP&lt;/b&gt; - Micro-pitch footprint for very dense/compact boards&lt;/li&gt;
&lt;li&gt;&lt;b&gt;_0603MP&lt;/b&gt; - Micro-pitch footprint for very dense/compact boards&lt;/li&gt;
&lt;li&gt;&lt;b&gt;_0805MP&lt;/b&gt; - Micro-pitch footprint for very dense/compact boards&lt;/li&gt;
&lt;li&gt;&lt;b&gt;_1206MP&lt;/b&gt; - Micro-pitch footprint for very dense/compact boards&lt;/li&gt;
&lt;/ul&gt;</description>
<gates>
<gate name="G$1" symbol="CAPACITOR" x="0" y="-2.54"/>
</gates>
<devices>
<device name="0603MINI" package="0603-MINI">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805-NOTHERMALS" package="0805_NOTHERMALS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0402" package="_0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0402MP" package="_0402MP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0603" package="_0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0603MP" package="_0603MP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0805" package="_0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0805MP" package="_0805MP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805-NOOUTLINE" package="0805-NO">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805_10MGAP" package="0805_10MGAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603_NO" package="0603-NO">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_1206" package="_1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_1206MP" package="_1206MP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND">
<description>&lt;b&gt;GND&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RESISTOR" prefix="R" uservalue="yes">
<description>&lt;p&gt;&lt;b&gt;Resistors&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;For new designs, use the packages preceded by an '_' character since they are more reliable:&lt;/p&gt;
&lt;p&gt;The following footprints should be used on most boards:&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;&lt;b&gt;_0402&lt;/b&gt; - Standard footprint for regular board layouts&lt;/li&gt;
&lt;li&gt;&lt;b&gt;_0603&lt;/b&gt; - Standard footprint for regular board layouts&lt;/li&gt;
&lt;li&gt;&lt;b&gt;_0805&lt;/b&gt; - Standard footprint for regular board layouts&lt;/li&gt;
&lt;li&gt;&lt;b&gt;_1206&lt;/b&gt; - Standard footprint for regular board layouts&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;For extremely tight-pitch boards where space is at a premium, the following 'micro-pitch' footprints can be used (smaller pads, no silkscreen outline, etc.):&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;&lt;b&gt;_0402MP&lt;/b&gt; - Micro-pitch footprint for very dense/compact boards&lt;/li&gt;
&lt;li&gt;&lt;b&gt;_0603MP&lt;/b&gt; - Micro-pitch footprint for very dense/compact boards&lt;/li&gt;
&lt;li&gt;&lt;b&gt;_0805MP&lt;/b&gt; - Micro-pitch footprint for very dense/compact boards&lt;/li&gt;
&lt;li&gt;&lt;b&gt;_1206MP&lt;/b&gt; - Micro-pitch footprint for very dense/compact boards&lt;/li&gt;
&lt;/ul&gt;</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="0603MINI" package="0603-MINI">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2012" package="2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805_NOTHERMALS" package="0805_NOTHERMALS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2512" package="2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0402" package="_0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0402MP" package="_0402MP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0603" package="_0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0603MP" package="_0603MP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0805" package="_0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0805MP" package="_0805MP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805_NOOUTLINE" package="0805-NO@1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0603_NOOUT" package="0603-NO">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_1206" package="_1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_1206MP" package="_1206MP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED" prefix="D" uservalue="yes">
<description>&lt;p&gt;&lt;b&gt;LED&lt;/b&gt;&lt;/p&gt;
&lt;b&gt;0603&lt;/b&gt; - 0603 Surface Mount Package
&lt;hr&gt;
&lt;p&gt;&lt;b&gt;&lt;u&gt;2mA:&lt;/u&gt;&lt;/b&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;Green LED - Low Power (3.9mcd, 2ma, 1.7Vf) - Digikey: 475-2709-2-ND&lt;/li&gt;
&lt;li&gt;Orange LED - Low Power (9.8mcd, 2ma, 1.8Vf) - Digikey: 475-1194-2-ND&lt;/li&gt;
&lt;li&gt;Red LED - Low Power (5mcd, 2ma, 1.8Vf) - Digikey: 475-1195-2-ND&lt;/li&gt;
&lt;li&gt;Yellow LED - Low Power (7mcd, 2ma, 1.8Vf) - Digikey: 475-1196-2-ND&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;&lt;b&gt;&lt;u&gt;5mA:&lt;/u&gt;&lt;/b&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;Blue LED - Low Power (17mcd, 5ma, 2.9Vf) - Digikey: LNJ937W8CRACT-ND&lt;/li&gt;
&lt;/ul&gt;
&lt;b&gt;0805&lt;/b&gt; - 0805 Surface Mount Package
&lt;hr&gt;
&lt;p&gt;&lt;b&gt;&lt;u&gt;2mA:&lt;/u&gt;&lt;/b&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;Red LED (8.8mcd, 2mA, 1.8Vf, Clear) - Low Power [Digikey: 475-2510-1-ND]&lt;/li&gt;
&lt;li&gt;Green LED (5mcd, 2mA, 1.8Vf, Clear) - Low Power [Digikey: 475-2730-1-ND]&lt;/li&gt;
&lt;li&gt;Yellow LED (11.3mcd, 2mA, 1.8Vf, Clear) - Low Power [Digikey: 475-2555-1-ND]&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;&lt;b&gt;&lt;u&gt;20mA:&lt;/u&gt;&lt;/b&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;Red LED (104mcd, 20mA, Diffused) - LS R976 [Digikey: 475-1278-6-ND]&lt;/li&gt;
&lt;li&gt;Red LED (12mcd, 20mA, 2.0Vf, Clear) - APT2012EC [Digikey: 754-1128-1-ND]&lt;/li&gt;
&lt;li&gt;Green LED (15mcd, 20mA, 2.2Vf, Clear) - APT2012GC [Digikey: 754-1131-1-ND]&lt;/li&gt;
&lt;li&gt;Orange LED (160mcd, 20mA, 2.1Vf, Clear) - APT2012SECK [Digikey: 754-1130-1-ND]&lt;/li&gt;
&lt;/ul&gt;
&lt;li&gt;&lt;b&gt;1206&lt;/b&gt; - 1206 Surface Mount Package
&lt;hr&gt;
&lt;ul&gt;
&lt;li&gt;Green LED (26mcd, 20mA, Diffused) - LG N971  [Digikey: 475-1407-6-ND]&lt;/li&gt;
&lt;li&gt;Red LED (15mcd, 20mA, Diffused) - LH N974 [Digikey: 475-1416-6-ND]&lt;/li&gt;
&lt;/ul&gt;

&lt;li&gt;&lt;b&gt;Cree&lt;/b&gt; - Cree High-Power Surface Mount LEDs
&lt;hr&gt;
&lt;ul&gt;
&lt;li&gt;XPEBWT-L1-0000-00D50 - White 111lm 350mA 2.9Vf 6200K 110°&lt;/li&gt;
&lt;li&gt;XTEAWT-00-0000-00000LEE3 - White 114lm 350mA 2.85Vf 5000K 115°&lt;/li&gt;
&lt;/ul&gt;

&lt;li&gt;&lt;b&gt;Everlight&lt;/b&gt; - Everlight 45-21 Series Surface Mount LEDs
&lt;hr&gt;
&lt;ul&gt;
&lt;li&gt;45-21/QK2C-B2832AC2CB2/2T - Warm White 2000mcd 20mA 3.25Vf 3050K 120°&lt;/li&gt;
&lt;li&gt;45-21/LK2C-B38452C4CB2/2T - Nuetral White 2000mcd 20mA 3.25Vf 4150K 120°&lt;/li&gt;
&lt;li&gt;45-21/LK2C-B50634C6CB2/2T - Cold White 2200mcd 20mA 3.25Vf 5650K 120°&lt;/li&gt;
&lt;/ul&gt;

&lt;li&gt;&lt;b&gt;PLCC2 Reverse Mount&lt;/b&gt;
&lt;hr&gt;
&lt;ul&gt;
&lt;li&gt;LS T77K-J1L2-1-0-2-R18-Z - Red 11.25mcd 2mA 1.8Vf 630nm 120°&lt;/li&gt;
&lt;li&gt;LO T77K-L1M2-24-Z - Orange 19.6mcd 2mA 1.8Vf 606nm 120°&lt;/li&gt;
&lt;li&gt;LY T77K-K2M1-26-Z - Yellow 15.7mcd 2mA 1.8Vf 587nm 120°&lt;/li&gt;
&lt;/ul&gt;</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="1206" package="CHIPLED_1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="CHIPLED_0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="CHIPLED_0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603_NOOUTLINE" package="CHIPLED_0603_NOOUTLINE">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805_NOOUTLINE" package="CHIPLED_0805_NOOUTLINE">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="XPE2" package="CREE_XLAMP_XPE2">
<connects>
<connect gate="G$1" pin="A" pad="ANODE"/>
<connect gate="G$1" pin="C" pad="CATHODE"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="XTE" package="CREE_XLAMP_XTE">
<connects>
<connect gate="G$1" pin="A" pad="ANODE"/>
<connect gate="G$1" pin="C" pad="CATHODE"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EV45-21" package="EVERLIGHT_45-21">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PLCC2_REV" package="PLCC2_REVMOUNT">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VBUS">
<description>&lt;p&gt;VBUS Supply Symbole&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="VBUS" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VBAT">
<description>VBAT Supply Sumbol</description>
<gates>
<gate name="G$1" symbol="VBAT" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HEADER-1X16" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD16" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X16_OVAL">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ROUND" package="1X16_ROUND">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2MM" package="1X16_2MM">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2MM_OVAL" package="1X16_2MM_OVAL">
<connects>
<connect gate="A" pin="1" pad="P$1"/>
<connect gate="A" pin="10" pad="P$10"/>
<connect gate="A" pin="11" pad="P$11"/>
<connect gate="A" pin="12" pad="P$12"/>
<connect gate="A" pin="13" pad="P$13"/>
<connect gate="A" pin="14" pad="P$14"/>
<connect gate="A" pin="15" pad="P$15"/>
<connect gate="A" pin="16" pad="P$16"/>
<connect gate="A" pin="2" pad="P$2"/>
<connect gate="A" pin="3" pad="P$3"/>
<connect gate="A" pin="4" pad="P$4"/>
<connect gate="A" pin="5" pad="P$5"/>
<connect gate="A" pin="6" pad="P$6"/>
<connect gate="A" pin="7" pad="P$7"/>
<connect gate="A" pin="8" pad="P$8"/>
<connect gate="A" pin="9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HEADER-1X12" prefix="JP" uservalue="yes">
<gates>
<gate name="G$1" symbol="PINHD12" x="2.54" y="-2.54"/>
</gates>
<devices>
<device name="" package="1X12_ROUND">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="OVAL" package="1X12_OVAL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="80MIL" package="1X12_ROUND_80MIL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="76MIL" package="1X12_ROUND_76MIL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HEADER-1X1" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X01_OVAL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ROUND" package="1X01_ROUND">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2MM" package="1X01_2MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2MM_OVAL" package="1X01_2MM_OVAL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-SMD_MASKHELD_2X2MM" package="1X01_SMD_MASKHELD_2X2MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-SMD-MASKHELD_1X2MM" package="1X01_SMD_MASKHELD_1X2MM">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RFM69HCW" prefix="U" uservalue="yes">
<description>&lt;p&gt;&lt;b&gt;RFM69HCW - ISM Band RF Transceiver&lt;/b&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="RFM69HCW" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RFM69HCW">
<connects>
<connect gate="G$1" pin="ANT" pad="1 1P"/>
<connect gate="G$1" pin="DIO0" pad="6 6P"/>
<connect gate="G$1" pin="DIO1" pad="7 7P"/>
<connect gate="G$1" pin="DIO2" pad="8 8P"/>
<connect gate="G$1" pin="DIO3" pad="3 3P"/>
<connect gate="G$1" pin="DIO4" pad="4 4P"/>
<connect gate="G$1" pin="DIO5" pad="15 15P"/>
<connect gate="G$1" pin="GND@1" pad="2 2P"/>
<connect gate="G$1" pin="GND@2" pad="9 9P"/>
<connect gate="G$1" pin="GND@3" pad="16 16P"/>
<connect gate="G$1" pin="MISO" pad="10 10P"/>
<connect gate="G$1" pin="MOSI" pad="11 11P"/>
<connect gate="G$1" pin="NSS" pad="13 13P"/>
<connect gate="G$1" pin="RESET" pad="14 14P"/>
<connect gate="G$1" pin="SCK" pad="12 12P"/>
<connect gate="G$1" pin="VDD" pad="5 5P"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_SMT" package="RFMHCW_SMT">
<connects>
<connect gate="G$1" pin="ANT" pad="1P"/>
<connect gate="G$1" pin="DIO0" pad="6P"/>
<connect gate="G$1" pin="DIO1" pad="7P"/>
<connect gate="G$1" pin="DIO2" pad="8P"/>
<connect gate="G$1" pin="DIO3" pad="3P"/>
<connect gate="G$1" pin="DIO4" pad="4P"/>
<connect gate="G$1" pin="DIO5" pad="15P"/>
<connect gate="G$1" pin="GND@1" pad="2P"/>
<connect gate="G$1" pin="GND@2" pad="9P"/>
<connect gate="G$1" pin="GND@3" pad="16P"/>
<connect gate="G$1" pin="MISO" pad="10P"/>
<connect gate="G$1" pin="MOSI" pad="11P"/>
<connect gate="G$1" pin="NSS" pad="13P"/>
<connect gate="G$1" pin="RESET" pad="14P"/>
<connect gate="G$1" pin="SCK" pad="12P"/>
<connect gate="G$1" pin="VDD" pad="5P"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ANTENNA_U.FL" prefix="X" uservalue="yes">
<description>&lt;p&gt;U.FL Antenna Connector&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="U.FL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="U.FL">
<connects>
<connect gate="G$1" pin="GND@0" pad="1"/>
<connect gate="G$1" pin="GND@1" pad="2"/>
<connect gate="G$1" pin="SIGNAL" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="adafruit2">
<packages>
<package name="NX8045">
<wire x1="4" y1="-1.9172" x2="3.7172" y2="-2.2" width="0.127" layer="21" curve="-90"/>
<wire x1="3.7172" y1="-2.2" x2="-3.7172" y2="-2.2" width="0.127" layer="21"/>
<wire x1="-3.7172" y1="-2.2" x2="-4" y2="-1.9172" width="0.127" layer="21" curve="-90"/>
<wire x1="-4" y1="-1.9172" x2="-4" y2="1.9764" width="0.127" layer="21"/>
<wire x1="-4" y1="1.9764" x2="-3.7764" y2="2.2" width="0.127" layer="21" curve="-90"/>
<wire x1="-3.7764" y1="2.2" x2="3.6838" y2="2.2" width="0.127" layer="21"/>
<wire x1="3.6838" y1="2.2" x2="4" y2="1.8838" width="0.127" layer="21" curve="-90"/>
<wire x1="4" y1="1.8838" x2="4" y2="-1.9172" width="0.127" layer="21"/>
<wire x1="-3" y1="1.9" x2="3.1" y2="1.9" width="0.127" layer="21"/>
<wire x1="3.1" y1="1.9" x2="3.5" y2="1.4" width="0.127" layer="21" curve="-90"/>
<wire x1="3.5" y1="1.4" x2="3.5" y2="-1.4" width="0.127" layer="21"/>
<wire x1="3.5" y1="-1.4" x2="3.1" y2="-1.8" width="0.127" layer="21" curve="-90"/>
<wire x1="3.1" y1="-1.8" x2="-3.1" y2="-1.8" width="0.127" layer="21"/>
<wire x1="-3.1" y1="-1.8" x2="-3.5" y2="-1.4" width="0.127" layer="21" curve="-90"/>
<wire x1="-3.5" y1="-1.4" x2="-3.5" y2="1.4" width="0.127" layer="21"/>
<wire x1="-3.5" y1="1.4" x2="-3" y2="1.9" width="0.127" layer="21" curve="-90"/>
<smd name="P$1" x="3.3" y="0" dx="3" dy="2.5" layer="1" rot="R90"/>
<smd name="P$2" x="-3.2" y="0" dx="3" dy="2.5" layer="1" rot="R90"/>
<text x="-2.7" y="2.8" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-3.2" y="-3.9" size="1.27" layer="27" font="vector">&gt;VALUE</text>
</package>
<package name="NX5032">
<wire x1="2.5" y1="-1.2172" x2="2.2172" y2="-1.6" width="0.127" layer="21" curve="-90"/>
<wire x1="2.2172" y1="-1.6" x2="-2.2172" y2="-1.6" width="0.127" layer="21"/>
<wire x1="-2.2172" y1="-1.6" x2="-2.5" y2="-1.2172" width="0.127" layer="21" curve="-90"/>
<wire x1="-2.5" y1="-1.2172" x2="-2.5" y2="1.3764" width="0.127" layer="21"/>
<wire x1="-2.5" y1="1.3764" x2="-2.2764" y2="1.6" width="0.127" layer="21" curve="-90"/>
<wire x1="-2.2764" y1="1.6" x2="2.1838" y2="1.6" width="0.127" layer="21"/>
<wire x1="2.1838" y1="1.6" x2="2.5" y2="1.2838" width="0.127" layer="21" curve="-90"/>
<wire x1="2.5" y1="1.2838" x2="2.5" y2="-1.2172" width="0.127" layer="21"/>
<wire x1="-1.4" y1="1.3" x2="1.4" y2="1.3" width="0.127" layer="21"/>
<wire x1="1.4" y1="1.3" x2="2" y2="0.6" width="0.127" layer="21" curve="-89.967269"/>
<wire x1="2" y1="0.6" x2="2" y2="-0.8" width="0.127" layer="21"/>
<wire x1="2" y1="-0.8" x2="1.4" y2="-1.3" width="0.127" layer="21" curve="-90"/>
<wire x1="1.4" y1="-1.3" x2="-1.3" y2="-1.3" width="0.127" layer="21"/>
<wire x1="-1.3" y1="-1.3" x2="-2" y2="-0.7" width="0.127" layer="21" curve="-90"/>
<wire x1="-2" y1="-0.7" x2="-2" y2="0.7" width="0.127" layer="21"/>
<wire x1="-2" y1="0.7" x2="-1.4" y2="1.3" width="0.127" layer="21" curve="-90"/>
<smd name="P$1" x="2" y="0" dx="2" dy="2.4" layer="1"/>
<smd name="P$2" x="-2" y="0" dx="2" dy="2.4" layer="1" rot="R180"/>
<text x="-2.6" y="1.9" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-3" y="-3.1" size="1.27" layer="27" font="vector">&gt;VALUE</text>
</package>
<package name="XTAL3215">
<wire x1="1.6" y1="-0.4172" x2="1.3172" y2="-0.7" width="0.127" layer="21" curve="-90"/>
<wire x1="1.3172" y1="-0.7" x2="-1.3172" y2="-0.7" width="0.127" layer="21"/>
<wire x1="-1.3172" y1="-0.7" x2="-1.6" y2="-0.4172" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.6" y1="-0.4172" x2="-1.6" y2="0.4764" width="0.127" layer="21"/>
<wire x1="-1.6" y1="0.4764" x2="-1.3764" y2="0.7" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.3764" y1="0.7" x2="1.2838" y2="0.7" width="0.127" layer="21"/>
<wire x1="1.2838" y1="0.7" x2="1.6" y2="0.3838" width="0.127" layer="21" curve="-90"/>
<wire x1="1.6" y1="0.3838" x2="1.6" y2="-0.4172" width="0.127" layer="21"/>
<wire x1="-1.1" y1="0.4" x2="1" y2="0.4" width="0.127" layer="21"/>
<wire x1="1" y1="0.4" x2="1.3" y2="0.1" width="0.127" layer="21" curve="-89.961816"/>
<wire x1="1.3" y1="0.1" x2="1.3" y2="-0.1" width="0.127" layer="21"/>
<wire x1="1.3" y1="-0.1" x2="1" y2="-0.4" width="0.127" layer="21" curve="-90"/>
<wire x1="1" y1="-0.4" x2="-1" y2="-0.4" width="0.127" layer="21"/>
<wire x1="-1" y1="-0.4" x2="-1.3" y2="-0.2" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.3" y1="-0.2" x2="-1.3" y2="0.1" width="0.127" layer="21"/>
<wire x1="-1.3" y1="0.1" x2="-1.1" y2="0.4" width="0.127" layer="21" curve="-90.03821"/>
<smd name="P$1" x="1.2" y="0" dx="1.1" dy="1.9" layer="1"/>
<smd name="P$2" x="-1.2" y="0" dx="1.1" dy="1.9" layer="1" rot="R180"/>
<text x="-2.3" y="-2.2" size="1.016" layer="25" font="vector">&gt;NAME</text>
<text x="-2.6" y="1.2" size="1.016" layer="27" font="vector">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="XTAL">
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<text x="-2.54" y="3.81" size="1.27" layer="95" font="vector">&gt;NAME</text>
<text x="-3.81" y="-5.08" size="1.27" layer="96" font="vector">&gt;VALUE</text>
<pin name="P$1" x="-5.08" y="0" visible="off" length="short"/>
<pin name="P$2" x="5.08" y="0" visible="off" length="short" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="XTAL" prefix="X" uservalue="yes">
<description>Low cost SMT crystals, no capacitors included
&lt;p&gt;http://www.ladyada.net/library/eagle&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="XTAL" x="0" y="0"/>
</gates>
<devices>
<device name="NX8045" package="NX8045">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="NX5032" package="NX5032">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-3.2X1.5" package="XTAL3215">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<packages>
</packages>
<symbols>
<symbol name="+3V3">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+3V3" prefix="+3V3">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lsta" urn="urn:adsk.eagle:library:161">
<description>&lt;b&gt;Female Headers etc.&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
FE = female&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="FE05-1" urn="urn:adsk.eagle:footprint:8133/1" library_version="2">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<wire x1="-6.35" y1="1.27" x2="-6.35" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.27" x2="-4.064" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.27" x2="-3.81" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.016" x2="-3.556" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.27" x2="-1.524" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.27" x2="-1.27" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.016" x2="-1.016" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-1.27" x2="1.016" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-1.27" x2="1.27" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.016" x2="1.524" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-1.27" x2="3.556" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.556" y1="-1.27" x2="3.81" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.016" x2="4.064" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.27" x2="6.35" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.27" x2="6.35" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.27" x2="4.064" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.27" x2="3.81" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.016" x2="3.556" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.556" y1="1.27" x2="1.524" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.524" y1="1.27" x2="1.27" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.016" x2="1.016" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.27" x2="-1.016" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="1.27" x2="-1.27" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.016" x2="-1.524" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.27" x2="-3.556" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.27" x2="-3.81" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.016" x2="-4.064" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="1.27" x2="-6.35" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="0.762" x2="-5.334" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="0.508" x2="-5.588" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-5.588" y1="0.508" x2="-5.588" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-5.588" y1="-0.508" x2="-5.334" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-0.508" x2="-5.334" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-0.762" x2="-4.826" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.762" x2="-4.826" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.508" x2="-4.572" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-4.572" y1="-0.508" x2="-4.572" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-4.572" y1="0.508" x2="-4.826" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="0.508" x2="-4.826" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="0.762" x2="-5.334" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="0.762" x2="-2.794" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="0.508" x2="-3.048" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="0.508" x2="-3.048" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-0.508" x2="-2.794" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="-0.508" x2="-2.794" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="-0.762" x2="-2.286" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.762" x2="-2.286" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.508" x2="-2.032" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="-0.508" x2="-2.032" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="0.508" x2="-2.286" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="0.508" x2="-2.286" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="0.762" x2="-2.794" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="0.508" x2="-0.508" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.508" x2="-0.508" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="-0.508" x2="-0.254" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.508" x2="-0.254" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.762" x2="0.254" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.762" x2="0.254" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.508" x2="0.508" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.508" x2="0.508" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.508" x2="0.254" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.254" y1="0.508" x2="0.254" y2="0.762" width="0.1524" layer="51"/>
<wire x1="0.254" y1="0.762" x2="-0.254" y2="0.762" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0.762" x2="2.286" y2="0.508" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0.508" x2="2.032" y2="0.508" width="0.1524" layer="51"/>
<wire x1="2.032" y1="0.508" x2="2.032" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="2.032" y1="-0.508" x2="2.286" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-0.508" x2="2.286" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-0.762" x2="2.794" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.762" x2="2.794" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.508" x2="3.048" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="3.048" y1="-0.508" x2="3.048" y2="0.508" width="0.1524" layer="51"/>
<wire x1="3.048" y1="0.508" x2="2.794" y2="0.508" width="0.1524" layer="51"/>
<wire x1="2.794" y1="0.508" x2="2.794" y2="0.762" width="0.1524" layer="51"/>
<wire x1="2.794" y1="0.762" x2="2.286" y2="0.762" width="0.1524" layer="51"/>
<wire x1="4.826" y1="0.762" x2="4.826" y2="0.508" width="0.1524" layer="51"/>
<wire x1="4.826" y1="0.508" x2="4.572" y2="0.508" width="0.1524" layer="51"/>
<wire x1="4.572" y1="0.508" x2="4.572" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="4.572" y1="-0.508" x2="4.826" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="4.826" y1="-0.508" x2="4.826" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="4.826" y1="-0.762" x2="5.334" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.762" x2="5.334" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.508" x2="5.588" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="5.588" y1="-0.508" x2="5.588" y2="0.508" width="0.1524" layer="51"/>
<wire x1="5.588" y1="0.508" x2="5.334" y2="0.508" width="0.1524" layer="51"/>
<wire x1="5.334" y1="0.508" x2="5.334" y2="0.762" width="0.1524" layer="51"/>
<wire x1="5.334" y1="0.762" x2="4.826" y2="0.762" width="0.1524" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="0" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="5.08" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-6.35" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="6.604" y="-0.635" size="1.27" layer="21" ratio="10">5</text>
<text x="0" y="1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.207" y1="0.254" x2="-4.953" y2="0.762" layer="51"/>
<rectangle x1="-5.207" y1="-0.762" x2="-4.953" y2="-0.254" layer="51"/>
<rectangle x1="-2.667" y1="0.254" x2="-2.413" y2="0.762" layer="51"/>
<rectangle x1="-2.667" y1="-0.762" x2="-2.413" y2="-0.254" layer="51"/>
<rectangle x1="-0.127" y1="0.254" x2="0.127" y2="0.762" layer="51"/>
<rectangle x1="-0.127" y1="-0.762" x2="0.127" y2="-0.254" layer="51"/>
<rectangle x1="2.413" y1="0.254" x2="2.667" y2="0.762" layer="51"/>
<rectangle x1="2.413" y1="-0.762" x2="2.667" y2="-0.254" layer="51"/>
<rectangle x1="4.953" y1="0.254" x2="5.207" y2="0.762" layer="51"/>
<rectangle x1="4.953" y1="-0.762" x2="5.207" y2="-0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="FE05-1" urn="urn:adsk.eagle:package:8190/1" type="box" library_version="2">
<description>FEMALE HEADER</description>
<packageinstances>
<packageinstance name="FE05-1"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="FE05-1" urn="urn:adsk.eagle:symbol:8132/1" library_version="2">
<wire x1="3.81" y1="-7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.905" y1="0.635" x2="1.905" y2="-0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-1.905" x2="1.905" y2="-3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-4.445" x2="1.905" y2="-5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.27" y1="7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.905" y1="5.715" x2="1.905" y2="4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="3.175" x2="1.905" y2="1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<text x="-1.27" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FE05-1" urn="urn:adsk.eagle:component:8233/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="FE05-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FE05-1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8190/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="7" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb" urn="urn:adsk.eagle:library:162">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA03-1" urn="urn:adsk.eagle:footprint:8281/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.81" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="-3.81" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="MA03-1" urn="urn:adsk.eagle:package:8339/1" type="box" library_version="2">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA03-1"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MA03-1" urn="urn:adsk.eagle:symbol:8280/1" library_version="2">
<wire x1="3.81" y1="-5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-1.27" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA03-1" urn="urn:adsk.eagle:component:8376/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA03-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA03-1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8339/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="48" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC" urn="urn:adsk.eagle:symbol:13874/1" library_version="1">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" urn="urn:adsk.eagle:component:13926/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="battery" urn="urn:adsk.eagle:library:109">
<description>&lt;b&gt;Lithium Batteries and NC Accus&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="CH291-1220LF" urn="urn:adsk.eagle:footprint:4566/1" library_version="3">
<description>&lt;b&gt;Battery Holder, SMT, 12mm&lt;/b&gt;&lt;p&gt;
multicomp PART NO. CH291-1220LF&lt;br&gt;
Source: &lt;a href="http://www.farnell.com/datasheets/1505860.pdf"&gt; Data sheet &lt;/a&gt;</description>
<smd name="-" x="0" y="14.1458" dx="2.3" dy="4.3" layer="1"/>
<smd name="+" x="0" y="-2.2955" dx="2.3" dy="3.66" layer="1"/>
<hole x="0" y="2" drill="1.3"/>
<hole x="0" y="9.5" drill="1"/>
<wire x1="-6.4239" y1="1.995" x2="-1.5375" y2="13.6375" width="0.2" layer="21" curve="-111.250047"/>
<wire x1="1.5375" y1="13.6375" x2="6.4239" y2="1.995" width="0.2" layer="21" curve="-111.445767"/>
<wire x1="-6.4239" y1="1.995" x2="6.4239" y2="1.995" width="0.2" layer="51" curve="-245.830438"/>
<wire x1="-6.4239" y1="1.995" x2="-6.9825" y2="0.9975" width="0.2" layer="21" curve="-124.211808"/>
<wire x1="-6.9825" y1="0.9975" x2="-7.4214" y2="0.5586" width="0.2" layer="21" curve="92.702019"/>
<wire x1="-7.4214" y1="0.5586" x2="-7.4214" y2="-0.2394" width="0.2" layer="21"/>
<wire x1="-7.4214" y1="-0.2394" x2="-6.8628" y2="-0.7581" width="0.2" layer="21" curve="94.242193"/>
<wire x1="-6.8628" y1="-0.7581" x2="-4.5885" y2="-0.7581" width="0.2" layer="21"/>
<wire x1="-4.5885" y1="-0.7581" x2="-1.5215" y2="-1.4364" width="0.2" layer="21"/>
<wire x1="-1.5215" y1="-1.4364" x2="-1.5215" y2="0.1596" width="0.2" layer="21"/>
<wire x1="6.4239" y1="1.995" x2="6.9825" y2="0.9975" width="0.2" layer="21" curve="124.211808"/>
<wire x1="6.9825" y1="0.9975" x2="7.4214" y2="0.5586" width="0.2" layer="21" curve="-92.702019"/>
<wire x1="7.4214" y1="0.5586" x2="7.4214" y2="-0.2394" width="0.2" layer="21"/>
<wire x1="7.4214" y1="-0.2394" x2="6.8628" y2="-0.7581" width="0.2" layer="21" curve="-94.242193"/>
<wire x1="6.8628" y1="-0.7581" x2="4.5885" y2="-0.7581" width="0.2" layer="21"/>
<wire x1="4.5885" y1="-0.7581" x2="1.5215" y2="-1.4364" width="0.2" layer="21"/>
<wire x1="1.5215" y1="-1.4364" x2="1.5215" y2="0.1596" width="0.2" layer="21"/>
<wire x1="-6.5" y1="0.1596" x2="6.5" y2="0.1596" width="0.2" layer="51"/>
<wire x1="-3.3117" y1="0.6783" x2="-1.8354" y2="12.2892" width="0.2" layer="21" curve="-131.708908"/>
<wire x1="1.7955" y1="12.2892" x2="3.3117" y2="0.6783" width="0.2" layer="21" curve="-132.206586"/>
<wire x1="1.5215" y1="0.1596" x2="6.5" y2="0.1596" width="0.2" layer="21"/>
<wire x1="-6.5" y1="0.1596" x2="-1.5215" y2="0.1596" width="0.2" layer="21"/>
<wire x1="-3.3117" y1="0.6783" x2="-3.5125" y2="0.1625" width="0.2" layer="21" curve="-159.758355"/>
<wire x1="3.3117" y1="0.6783" x2="3.5" y2="0.1625" width="0.2" layer="21" curve="157.437467"/>
<wire x1="-3" y1="11.75" x2="-2.5" y2="11" width="0.2" layer="21"/>
<wire x1="-2.5" y1="11" x2="-3.5" y2="10.25" width="0.2" layer="21"/>
<wire x1="-3.5" y1="10.25" x2="-4.125" y2="10.8875" width="0.2" layer="21"/>
<wire x1="3" y1="11.75" x2="2.5" y2="11" width="0.2" layer="21"/>
<wire x1="2.5" y1="11" x2="3.5" y2="10.25" width="0.2" layer="21"/>
<wire x1="3.5" y1="10.25" x2="4.125" y2="10.8875" width="0.2" layer="21"/>
<wire x1="-1.5" y1="10" x2="-1.5" y2="3" width="0.2" layer="21"/>
<wire x1="-1.5" y1="3" x2="1.5" y2="3" width="0.2" layer="21"/>
<wire x1="1.5" y1="3" x2="1.5" y2="10" width="0.2" layer="21"/>
<wire x1="1.5" y1="10" x2="1" y2="10" width="0.2" layer="21"/>
<wire x1="1" y1="10" x2="1" y2="3.75" width="0.2" layer="21"/>
<wire x1="1" y1="3.75" x2="0.25" y2="3.75" width="0.2" layer="21"/>
<wire x1="0.25" y1="3.75" x2="0.25" y2="5.5" width="0.2" layer="21"/>
<wire x1="0.25" y1="5.5" x2="-0.25" y2="5.5" width="0.2" layer="21"/>
<wire x1="-0.25" y1="5.5" x2="-0.25" y2="3.75" width="0.2" layer="21"/>
<wire x1="-0.25" y1="3.75" x2="-1" y2="3.75" width="0.2" layer="21"/>
<wire x1="-1" y1="3.75" x2="-1" y2="10" width="0.2" layer="21"/>
<wire x1="-1" y1="10" x2="-1.5" y2="10" width="0.2" layer="21"/>
<text x="2" y="14" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="1.75" y="-3.5" size="1.27" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.9" y1="12" x2="0.9" y2="15.825" layer="51"/>
<rectangle x1="-0.9" y1="-3.625" x2="0.9" y2="-0.5" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="CH291-1220LF" urn="urn:adsk.eagle:package:4617/1" type="box" library_version="3">
<description>Battery Holder, SMT, 12mm
multicomp PART NO. CH291-1220LF
Source:  Data sheet </description>
<packageinstances>
<packageinstance name="CH291-1220LF"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="1V2" urn="urn:adsk.eagle:symbol:4515/1" library_version="3">
<wire x1="-0.635" y1="0.635" x2="-0.635" y2="0" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="0" x2="-0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="0.635" y1="2.54" x2="0.635" y2="0" width="0.4064" layer="94"/>
<wire x1="0.635" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-2.54" width="0.4064" layer="94"/>
<text x="-1.27" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.27" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="-" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CH291-1220LF" urn="urn:adsk.eagle:component:4678/2" prefix="G" library_version="3">
<description>&lt;b&gt;Battery Holder, SMT, 12mm&lt;/b&gt;&lt;p&gt;
multicomp PART NO. CH291-1220LF&lt;br&gt;
Source: &lt;a href="http://www.farnell.com/datasheets/1505860.pdf"&gt; Data sheet &lt;/a&gt;</description>
<gates>
<gate name="G1" symbol="1V2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CH291-1220LF">
<connects>
<connect gate="G1" pin="+" pad="+"/>
<connect gate="G1" pin="-" pad="-"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:4617/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="DS3231MZ+">
<description>&lt;Real Time Clock 5+/-ppm RTC&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SOIC127P600X175-8N">
<description>&lt;b&gt;8L SOIC (150MIL)&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-2.712" y="1.905" dx="1.525" dy="0.65" layer="1"/>
<smd name="2" x="-2.712" y="0.635" dx="1.525" dy="0.65" layer="1"/>
<smd name="3" x="-2.712" y="-0.635" dx="1.525" dy="0.65" layer="1"/>
<smd name="4" x="-2.712" y="-1.905" dx="1.525" dy="0.65" layer="1"/>
<smd name="5" x="2.712" y="-1.905" dx="1.525" dy="0.65" layer="1"/>
<smd name="6" x="2.712" y="-0.635" dx="1.525" dy="0.65" layer="1"/>
<smd name="7" x="2.712" y="0.635" dx="1.525" dy="0.65" layer="1"/>
<smd name="8" x="2.712" y="1.905" dx="1.525" dy="0.65" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-3.725" y1="2.75" x2="3.725" y2="2.75" width="0.05" layer="51"/>
<wire x1="3.725" y1="2.75" x2="3.725" y2="-2.75" width="0.05" layer="51"/>
<wire x1="3.725" y1="-2.75" x2="-3.725" y2="-2.75" width="0.05" layer="51"/>
<wire x1="-3.725" y1="-2.75" x2="-3.725" y2="2.75" width="0.05" layer="51"/>
<wire x1="-1.95" y1="2.45" x2="1.95" y2="2.45" width="0.1" layer="51"/>
<wire x1="1.95" y1="2.45" x2="1.95" y2="-2.45" width="0.1" layer="51"/>
<wire x1="1.95" y1="-2.45" x2="-1.95" y2="-2.45" width="0.1" layer="51"/>
<wire x1="-1.95" y1="-2.45" x2="-1.95" y2="2.45" width="0.1" layer="51"/>
<wire x1="-1.95" y1="1.18" x2="-0.68" y2="2.45" width="0.1" layer="51"/>
<wire x1="-1.6" y1="2.45" x2="1.6" y2="2.45" width="0.2" layer="21"/>
<wire x1="1.6" y1="2.45" x2="1.6" y2="-2.45" width="0.2" layer="21"/>
<wire x1="1.6" y1="-2.45" x2="-1.6" y2="-2.45" width="0.2" layer="21"/>
<wire x1="-1.6" y1="-2.45" x2="-1.6" y2="2.45" width="0.2" layer="21"/>
<wire x1="-3.475" y1="2.58" x2="-1.95" y2="2.58" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="DS3231MZ+">
<wire x1="5.08" y1="2.54" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-10.16" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<text x="29.21" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="29.21" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="32KHZ" x="0" y="0" length="middle"/>
<pin name="VCC" x="0" y="-2.54" length="middle" direction="pwr"/>
<pin name="!INT!/SQW" x="0" y="-5.08" length="middle" direction="in"/>
<pin name="!RST" x="0" y="-7.62" length="middle" direction="in"/>
<pin name="SCL" x="33.02" y="0" length="middle" rot="R180"/>
<pin name="SDA" x="33.02" y="-2.54" length="middle" rot="R180"/>
<pin name="VBAT" x="33.02" y="-5.08" length="middle" rot="R180"/>
<pin name="GND" x="33.02" y="-7.62" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DS3231MZ+" prefix="IC">
<description>&lt;b&gt;Real Time Clock 5+/-ppm RTC&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://uk.rs-online.com/web/p/products/1897249"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="DS3231MZ+" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC127P600X175-8N">
<connects>
<connect gate="G$1" pin="!INT!/SQW" pad="3"/>
<connect gate="G$1" pin="!RST" pad="4"/>
<connect gate="G$1" pin="32KHZ" pad="1"/>
<connect gate="G$1" pin="GND" pad="5"/>
<connect gate="G$1" pin="SCL" pad="8"/>
<connect gate="G$1" pin="SDA" pad="7"/>
<connect gate="G$1" pin="VBAT" pad="6"/>
<connect gate="G$1" pin="VCC" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Real Time Clock 5+/-ppm RTC" constant="no"/>
<attribute name="HEIGHT" value="1.75mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Maxim Integrated" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="DS3231MZ+" constant="no"/>
<attribute name="RS_PART_NUMBER" value="1897249" constant="no"/>
<attribute name="RS_PRICE-STOCK" value="http://uk.rs-online.com/web/p/products/1897249" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="sim800L_module">
<packages>
<package name="SIM800L">
<pad name="NET" x="-10.414" y="6.35" drill="1" shape="long"/>
<pad name="VCC" x="-10.414" y="3.81" drill="1" shape="long"/>
<pad name="RST" x="-10.414" y="1.27" drill="1" shape="long"/>
<pad name="RXD" x="-10.414" y="-1.27" drill="1" shape="long"/>
<pad name="TXD" x="-10.414" y="-3.81" drill="1" shape="long"/>
<pad name="GND" x="-10.414" y="-6.35" drill="1" shape="long"/>
<pad name="RING" x="11.176" y="3.81" drill="1" shape="long"/>
<pad name="DTR" x="11.176" y="1.27" drill="1" shape="long"/>
<pad name="MICP" x="11.176" y="-1.27" drill="1" shape="long"/>
<pad name="MICN" x="11.176" y="-3.81" drill="1" shape="long"/>
<pad name="SPKP" x="11.176" y="-6.35" drill="1" shape="long"/>
<pad name="SPKN" x="11.176" y="-8.89" drill="1" shape="long"/>
<wire x1="-12.192" y1="-11.684" x2="12.954" y2="-11.684" width="0.1524" layer="21"/>
<wire x1="12.954" y1="-11.684" x2="12.954" y2="11.43" width="0.1524" layer="21"/>
<wire x1="-12.192" y1="-11.684" x2="-12.192" y2="11.43" width="0.1524" layer="21"/>
<wire x1="-12.192" y1="11.43" x2="12.954" y2="11.43" width="0.1524" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="SIM800L">
<pin name="GND" x="-12.7" y="-7.62" length="middle"/>
<pin name="TXD" x="-12.7" y="-2.54" length="middle"/>
<pin name="RXD" x="-12.7" y="2.54" length="middle"/>
<pin name="RST" x="-12.7" y="7.62" length="middle"/>
<pin name="VCC" x="-12.7" y="12.7" length="middle"/>
<pin name="NET" x="-12.7" y="17.78" length="middle"/>
<pin name="RING" x="17.78" y="17.78" length="middle" rot="R180"/>
<pin name="DTR" x="17.78" y="12.7" length="middle" rot="R180"/>
<pin name="MICP" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="MICN" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="SPKP" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="SPKN" x="17.78" y="-7.62" length="middle" rot="R180"/>
<wire x1="-7.62" y1="22.86" x2="12.7" y2="22.86" width="0.1524" layer="94"/>
<wire x1="12.7" y1="22.86" x2="12.7" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="12.7" y1="-12.7" x2="-7.62" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-12.7" x2="-7.62" y2="22.86" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SIM800L_MODULE">
<gates>
<gate name="G$1" symbol="SIM800L" x="-2.54" y="-5.08"/>
</gates>
<devices>
<device name="" package="SIM800L">
<connects>
<connect gate="G$1" pin="DTR" pad="DTR"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="MICN" pad="MICN"/>
<connect gate="G$1" pin="MICP" pad="MICP"/>
<connect gate="G$1" pin="NET" pad="NET"/>
<connect gate="G$1" pin="RING" pad="RING"/>
<connect gate="G$1" pin="RST" pad="RST"/>
<connect gate="G$1" pin="RXD" pad="RXD"/>
<connect gate="G$1" pin="SPKN" pad="SPKN"/>
<connect gate="G$1" pin="SPKP" pad="SPKP"/>
<connect gate="G$1" pin="TXD" pad="TXD"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="due_shield_pad">
<packages>
<package name="DUESHIELD">
<pad name="P$1" x="-21.082" y="8.89" drill="1" shape="long"/>
<pad name="P$2" x="-21.082" y="6.35" drill="1" shape="long"/>
<pad name="P$3" x="-21.082" y="3.81" drill="1" shape="long"/>
<pad name="P$4" x="-21.082" y="1.27" drill="1" shape="long"/>
<pad name="P$5" x="-21.082" y="-1.27" drill="1" shape="long"/>
<pad name="P$6" x="21.59" y="3.048" drill="1" shape="long"/>
<pad name="P$7" x="21.59" y="0.508" drill="1" shape="long"/>
<pad name="P$8" x="21.59" y="-2.032" drill="1" shape="long"/>
<pad name="P$9" x="21.59" y="-4.572" drill="1" shape="long"/>
<pad name="P$10" x="21.59" y="-7.112" drill="1" shape="long"/>
<pad name="P$11" x="21.59" y="-9.652" drill="1" shape="long"/>
<wire x1="25.654" y1="18.154" x2="25.654" y2="-19.368" width="0.127" layer="21"/>
<wire x1="25.654" y1="-19.368" x2="23.654" y2="-21.368" width="0.127" layer="21" curve="-90"/>
<wire x1="23.654" y1="-21.368" x2="-24.146" y2="-21.368" width="0.127" layer="21"/>
<wire x1="-24.146" y1="-21.368" x2="-26.146" y2="-19.368" width="0.127" layer="21" curve="-90"/>
<wire x1="-26.146" y1="-19.368" x2="-26.146" y2="18.154" width="0.127" layer="21"/>
<wire x1="-26.146" y1="18.154" x2="-24.146" y2="20.154" width="0.127" layer="21" curve="-90"/>
<wire x1="-24.146" y1="20.154" x2="23.654" y2="20.154" width="0.127" layer="21"/>
<wire x1="23.654" y1="20.154" x2="25.654" y2="18.154" width="0.127" layer="21" curve="-90"/>
</package>
</packages>
<symbols>
<symbol name="DUESHIELD">
<pin name="3V3" x="-17.78" y="12.7" length="middle"/>
<pin name="SDA" x="-17.78" y="7.62" length="middle"/>
<pin name="SCL" x="-17.78" y="2.54" length="middle"/>
<pin name="N.O." x="-17.78" y="-2.54" length="middle"/>
<pin name="GND0" x="-17.78" y="-7.62" length="middle"/>
<pin name="GND" x="17.78" y="-12.7" length="middle" rot="R180"/>
<pin name="PB0" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="PB1" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="GND1" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="TX" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="RX" x="17.78" y="12.7" length="middle" rot="R180"/>
<wire x1="-12.7" y1="17.78" x2="12.7" y2="17.78" width="0.254" layer="94"/>
<wire x1="12.7" y1="17.78" x2="12.7" y2="-17.78" width="0.254" layer="94"/>
<wire x1="12.7" y1="-17.78" x2="-12.7" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-17.78" x2="-12.7" y2="17.78" width="0.254" layer="94"/>
<text x="-10.16" y="-15.24" size="1.778" layer="94">Custom Due Shield</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DUE_PADS">
<gates>
<gate name="G$1" symbol="DUESHIELD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DUESHIELD">
<connects>
<connect gate="G$1" pin="3V3" pad="P$1"/>
<connect gate="G$1" pin="GND" pad="P$11"/>
<connect gate="G$1" pin="GND0" pad="P$5"/>
<connect gate="G$1" pin="GND1" pad="P$8"/>
<connect gate="G$1" pin="N.O." pad="P$4"/>
<connect gate="G$1" pin="PB0" pad="P$10"/>
<connect gate="G$1" pin="PB1" pad="P$9"/>
<connect gate="G$1" pin="RX" pad="P$6"/>
<connect gate="G$1" pin="SCL" pad="P$3"/>
<connect gate="G$1" pin="SDA" pad="P$2"/>
<connect gate="G$1" pin="TX" pad="P$7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="ATSAMD21G18A-AU" deviceset="ATSAMD21G18A-AU" device=""/>
<part name="C2" library="microbuilder" deviceset="CAP_CERAMIC" device="0603_NO" value="22pF"/>
<part name="C4" library="microbuilder" deviceset="CAP_CERAMIC" device="0603_NO" value="22pF"/>
<part name="U$8" library="microbuilder" deviceset="GND" device=""/>
<part name="U$10" library="microbuilder" deviceset="GND" device=""/>
<part name="X2" library="adafruit2" deviceset="XTAL" device="-3.2X1.5" value="32.768"/>
<part name="C1" library="microbuilder" deviceset="CAP_CERAMIC" device="0603_NO" value="1uF"/>
<part name="U$1" library="microbuilder" deviceset="GND" device=""/>
<part name="U$2" library="microbuilder" deviceset="GND" device=""/>
<part name="+3V2" library="supply1" deviceset="+3V3" device=""/>
<part name="+3V1" library="supply1" deviceset="+3V3" device=""/>
<part name="C3" library="microbuilder" deviceset="CAP_CERAMIC" device="0603_NO" value="100nF"/>
<part name="U$3" library="microbuilder" deviceset="GND" device=""/>
<part name="L" library="microbuilder" deviceset="LED" device="0805_NOOUTLINE" value="RED"/>
<part name="R7" library="microbuilder" deviceset="RESISTOR" device="_0603_NOOUT" value="2.2K"/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="SV2" library="con-lsta" library_urn="urn:adsk.eagle:library:161" deviceset="FE05-1" device="" package3d_urn="urn:adsk.eagle:package:8190/1"/>
<part name="SV1" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA03-1" device="" package3d_urn="urn:adsk.eagle:package:8339/1"/>
<part name="R2" library="microbuilder" deviceset="RESISTOR" device="_0603_NOOUT" value="10K"/>
<part name="R1" library="microbuilder" deviceset="RESISTOR" device="_0603_NOOUT" value="10K"/>
<part name="U$19" library="microbuilder" deviceset="VBUS" device=""/>
<part name="U$20" library="microbuilder" deviceset="VBAT" device=""/>
<part name="JP1" library="microbuilder" deviceset="HEADER-1X16" device="ROUND"/>
<part name="+3V3" library="supply1" deviceset="+3V3" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="JP3" library="microbuilder" deviceset="HEADER-1X12" device=""/>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A4L-LOC" device=""/>
<part name="R3" library="microbuilder" deviceset="RESISTOR" device="_0603_NOOUT" value="10K"/>
<part name="+3V4" library="supply1" deviceset="+3V3" device=""/>
<part name="G1" library="battery" library_urn="urn:adsk.eagle:library:109" deviceset="CH291-1220LF" device="" package3d_urn="urn:adsk.eagle:package:4617/1"/>
<part name="IC1" library="DS3231MZ+" deviceset="DS3231MZ+" device=""/>
<part name="U$5" library="microbuilder" deviceset="GND" device=""/>
<part name="U$6" library="microbuilder" deviceset="GND" device=""/>
<part name="R4" library="microbuilder" deviceset="RESISTOR" device="_0603_NOOUT" value="47k"/>
<part name="U$7" library="sim800L_module" deviceset="SIM800L_MODULE" device=""/>
<part name="U$9" library="due_shield_pad" deviceset="DUE_PADS" device=""/>
<part name="U$14" library="microbuilder" deviceset="GND" device=""/>
<part name="C9" library="microbuilder" deviceset="CAP_CERAMIC" device="0805-NOOUTLINE" value="10uF"/>
<part name="U$15" library="microbuilder" deviceset="GND" device=""/>
<part name="+3V5" library="supply1" deviceset="+3V3" device=""/>
<part name="JP2" library="microbuilder" deviceset="HEADER-1X1" device="ROUND"/>
<part name="U4" library="microbuilder" deviceset="RFM69HCW" device="_SMT" value="RFM69HCW"/>
<part name="U$17" library="microbuilder" deviceset="GND" device=""/>
<part name="U$18" library="microbuilder" deviceset="GND" device=""/>
<part name="X4" library="microbuilder" deviceset="ANTENNA_U.FL" device="" value="uFL"/>
<part name="U$23" library="microbuilder" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="172.72" y="129.54" size="1.778" layer="94">BREAKOUTS</text>
</plain>
<instances>
<instance part="U1" gate="G$1" x="55.88" y="115.57" smashed="yes">
<attribute name="NAME" x="40.632" y="159.2809" size="1.77893125" layer="95"/>
<attribute name="VALUE" x="40.6179" y="69.7837" size="1.78058125" layer="96"/>
</instance>
<instance part="C2" gate="G$1" x="11.43" y="162.56" smashed="yes" rot="R180">
<attribute name="NAME" x="13.72" y="161.31" size="1.27" layer="95" font="vector" rot="R270" align="center"/>
<attribute name="VALUE" x="9.13" y="161.31" size="1.27" layer="96" font="vector" rot="R270" align="center"/>
</instance>
<instance part="C4" gate="G$1" x="21.59" y="162.56" smashed="yes" rot="R180">
<attribute name="NAME" x="23.88" y="161.31" size="1.27" layer="95" font="vector" rot="R270" align="center"/>
<attribute name="VALUE" x="19.29" y="161.31" size="1.27" layer="96" font="vector" rot="R270" align="center"/>
</instance>
<instance part="U$8" gate="G$1" x="11.43" y="167.64" smashed="yes" rot="R180">
<attribute name="VALUE" x="12.954" y="170.18" size="1.27" layer="96" rot="R180"/>
</instance>
<instance part="U$10" gate="G$1" x="21.59" y="167.64" smashed="yes" rot="R180">
<attribute name="VALUE" x="23.114" y="170.18" size="1.27" layer="96" rot="R180"/>
</instance>
<instance part="X2" gate="G$1" x="16.51" y="152.4" smashed="yes">
<attribute name="NAME" x="13.97" y="156.21" size="1.27" layer="95" font="vector"/>
<attribute name="VALUE" x="12.7" y="147.32" size="1.27" layer="96" font="vector"/>
</instance>
<instance part="C1" gate="G$1" x="81.28" y="146.05" smashed="yes" rot="R270">
<attribute name="NAME" x="82.53" y="148.34" size="1.27" layer="95" font="vector" align="center"/>
<attribute name="VALUE" x="82.53" y="143.75" size="1.27" layer="96" font="vector" align="center"/>
</instance>
<instance part="U$1" gate="G$1" x="92.71" y="146.05" smashed="yes" rot="R90">
<attribute name="VALUE" x="95.25" y="144.526" size="1.27" layer="96" rot="R90"/>
</instance>
<instance part="U$2" gate="G$1" x="82.55" y="73.66" smashed="yes">
<attribute name="VALUE" x="81.026" y="71.12" size="1.27" layer="96"/>
</instance>
<instance part="+3V2" gate="G$1" x="78.74" y="165.1" smashed="yes" rot="MR0">
<attribute name="VALUE" x="81.28" y="160.02" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="+3V1" gate="G$1" x="102.87" y="166.37" smashed="yes" rot="MR0">
<attribute name="VALUE" x="105.41" y="161.29" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="C3" gate="G$1" x="102.87" y="153.67" smashed="yes">
<attribute name="NAME" x="100.58" y="154.92" size="1.27" layer="95" font="vector" rot="R90" align="center"/>
<attribute name="VALUE" x="105.17" y="154.92" size="1.27" layer="96" font="vector" rot="R90" align="center"/>
</instance>
<instance part="U$3" gate="G$1" x="102.87" y="144.78" smashed="yes">
<attribute name="VALUE" x="101.346" y="142.24" size="1.27" layer="96"/>
</instance>
<instance part="L" gate="G$1" x="111.76" y="149.86" smashed="yes" rot="R270">
<attribute name="NAME" x="116.205" y="151.13" size="1.27" layer="95" rot="R270" align="center"/>
<attribute name="VALUE" x="108.966" y="151.13" size="1.27" layer="96" rot="R270" align="center"/>
</instance>
<instance part="R7" gate="G$1" x="111.76" y="162.56" smashed="yes" rot="R270">
<attribute name="NAME" x="114.3" y="162.56" size="1.27" layer="95" font="vector" rot="R270" align="center"/>
<attribute name="VALUE" x="111.76" y="162.56" size="1.016" layer="96" font="vector" ratio="15" rot="R270" align="center"/>
</instance>
<instance part="GND10" gate="1" x="111.76" y="142.24" smashed="yes" rot="MR0">
<attribute name="VALUE" x="114.3" y="139.7" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="SV2" gate="G$1" x="152.4" y="33.02" smashed="yes">
<attribute name="VALUE" x="151.13" y="22.86" size="1.778" layer="96"/>
<attribute name="NAME" x="151.13" y="41.402" size="1.778" layer="95"/>
</instance>
<instance part="SV1" gate="G$1" x="177.8" y="33.02" smashed="yes">
<attribute name="VALUE" x="176.53" y="25.4" size="1.778" layer="96"/>
<attribute name="NAME" x="176.53" y="38.862" size="1.778" layer="95"/>
</instance>
<instance part="R2" gate="G$1" x="134.62" y="154.94" smashed="yes" rot="R90">
<attribute name="NAME" x="132.08" y="154.94" size="1.27" layer="95" font="vector" rot="R90" align="center"/>
<attribute name="VALUE" x="134.62" y="154.94" size="1.016" layer="96" font="vector" ratio="15" rot="R90" align="center"/>
</instance>
<instance part="R1" gate="G$1" x="142.24" y="154.94" smashed="yes" rot="R90">
<attribute name="NAME" x="139.7" y="154.94" size="1.27" layer="95" font="vector" rot="R90" align="center"/>
<attribute name="VALUE" x="142.24" y="154.94" size="1.016" layer="96" font="vector" ratio="15" rot="R90" align="center"/>
</instance>
<instance part="U$19" gate="G$1" x="162.56" y="162.56" smashed="yes" rot="R90">
<attribute name="VALUE" x="161.544" y="161.036" size="1.27" layer="96" rot="R90"/>
</instance>
<instance part="U$20" gate="G$1" x="162.56" y="167.64" smashed="yes" rot="R90">
<attribute name="VALUE" x="161.544" y="166.116" size="1.27" layer="96" rot="R90"/>
</instance>
<instance part="JP1" gate="A" x="226.06" y="147.32" smashed="yes" rot="R180">
<attribute name="NAME" x="232.41" y="126.365" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="232.41" y="172.72" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="+3V3" gate="G$1" x="213.36" y="170.18" smashed="yes">
<attribute name="VALUE" x="210.82" y="165.1" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND4" gate="1" x="241.3" y="167.64" smashed="yes" rot="R90">
<attribute name="VALUE" x="243.84" y="165.1" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="JP3" gate="G$1" x="195.58" y="152.4" smashed="yes">
<attribute name="NAME" x="189.23" y="170.815" size="1.778" layer="95"/>
<attribute name="VALUE" x="189.23" y="134.62" size="1.778" layer="96"/>
</instance>
<instance part="FRAME1" gate="G$1" x="0" y="0" smashed="yes">
<attribute name="DRAWING_NAME" x="217.17" y="15.24" size="2.54" layer="94"/>
<attribute name="LAST_DATE_TIME" x="217.17" y="10.16" size="2.286" layer="94"/>
<attribute name="SHEET" x="230.505" y="5.08" size="2.54" layer="94"/>
</instance>
<instance part="R3" gate="G$1" x="121.92" y="154.94" smashed="yes" rot="R270">
<attribute name="NAME" x="124.46" y="154.94" size="1.27" layer="95" font="vector" rot="R270" align="center"/>
<attribute name="VALUE" x="121.92" y="154.94" size="1.016" layer="96" font="vector" ratio="15" rot="R270" align="center"/>
</instance>
<instance part="+3V4" gate="G$1" x="123.19" y="168.91" smashed="yes" rot="MR0">
<attribute name="VALUE" x="125.73" y="163.83" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="G1" gate="G1" x="68.58" y="27.94" smashed="yes" rot="R90">
<attribute name="NAME" x="65.405" y="26.67" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="73.66" y="26.67" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="IC1" gate="G$1" x="25.4" y="38.1" smashed="yes">
<attribute name="NAME" x="54.61" y="45.72" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="54.61" y="43.18" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="U$5" gate="G$1" x="59.69" y="15.24" smashed="yes">
<attribute name="VALUE" x="58.166" y="12.7" size="1.27" layer="96"/>
</instance>
<instance part="U$6" gate="G$1" x="68.579978125" y="15.11135" smashed="yes">
<attribute name="VALUE" x="67.055978125" y="12.57135" size="1.27" layer="96"/>
</instance>
<instance part="R4" gate="G$1" x="9.98" y="41.66" smashed="yes" rot="R90">
<attribute name="NAME" x="7.44" y="41.66" size="1.27" layer="95" font="vector" rot="R90" align="center"/>
<attribute name="VALUE" x="9.98" y="41.66" size="1.016" layer="96" font="vector" ratio="15" rot="R90" align="center"/>
</instance>
<instance part="U$7" gate="G$1" x="127.92" y="85.34" smashed="yes"/>
<instance part="U$9" gate="G$1" x="106.68" y="30.48" smashed="yes"/>
<instance part="U$14" gate="G$1" x="251.46" y="78.74" smashed="yes">
<attribute name="VALUE" x="249.936" y="76.2" size="1.27" layer="96"/>
</instance>
<instance part="C9" gate="G$1" x="251.46" y="86.36" smashed="yes">
<attribute name="NAME" x="249.17" y="87.61" size="1.27" layer="95" font="vector" rot="R90" align="center"/>
<attribute name="VALUE" x="253.76" y="87.61" size="1.27" layer="96" font="vector" rot="R90" align="center"/>
</instance>
<instance part="U$15" gate="G$1" x="193.04" y="86.36" smashed="yes" rot="R270">
<attribute name="VALUE" x="190.5" y="87.884" size="1.27" layer="96" rot="R270"/>
</instance>
<instance part="+3V5" gate="G$1" x="251.46" y="101.6" smashed="yes" rot="MR0">
<attribute name="VALUE" x="254" y="96.52" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="JP2" gate="G$1" x="236.22" y="83.82" smashed="yes">
<attribute name="NAME" x="229.87" y="86.995" size="1.778" layer="95"/>
<attribute name="VALUE" x="229.87" y="78.74" size="1.778" layer="96"/>
</instance>
<instance part="U4" gate="G$1" x="213.36" y="96.52" smashed="yes">
<attribute name="NAME" x="203.2" y="114.3" size="1.27" layer="95"/>
<attribute name="VALUE" x="203.2" y="76.2" size="1.27" layer="95"/>
</instance>
<instance part="U$17" gate="G$1" x="193.04" y="104.14" smashed="yes" rot="R270">
<attribute name="VALUE" x="190.5" y="105.664" size="1.27" layer="96" rot="R270"/>
</instance>
<instance part="U$18" gate="G$1" x="243.84" y="88.9" smashed="yes" rot="R90">
<attribute name="VALUE" x="246.38" y="87.376" size="1.27" layer="96" rot="R90"/>
</instance>
<instance part="X4" gate="G$1" x="228.6" y="83.82" smashed="yes">
<attribute name="NAME" x="226.06" y="87.122" size="1.27" layer="95"/>
<attribute name="VALUE" x="226.06" y="73.66" size="1.27" layer="96"/>
</instance>
<instance part="U$23" gate="G$1" x="226.06" y="73.66" smashed="yes">
<attribute name="VALUE" x="224.536" y="71.12" size="1.27" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="U$8" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="U$10" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="1"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="86.36" y1="146.05" x2="90.17" y2="146.05" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GNDANA"/>
<wire x1="73.66" y1="87.63" x2="82.55" y2="87.63" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="82.55" y1="87.63" x2="82.55" y2="85.09" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="GND1"/>
<wire x1="82.55" y1="85.09" x2="82.55" y2="82.55" width="0.1524" layer="91"/>
<wire x1="82.55" y1="82.55" x2="82.55" y2="80.01" width="0.1524" layer="91"/>
<wire x1="82.55" y1="80.01" x2="82.55" y2="76.2" width="0.1524" layer="91"/>
<wire x1="73.66" y1="85.09" x2="82.55" y2="85.09" width="0.1524" layer="91"/>
<junction x="82.55" y="85.09"/>
<pinref part="U1" gate="G$1" pin="GND2"/>
<wire x1="73.66" y1="82.55" x2="82.55" y2="82.55" width="0.1524" layer="91"/>
<junction x="82.55" y="82.55"/>
<pinref part="U1" gate="G$1" pin="GND3"/>
<wire x1="73.66" y1="80.01" x2="82.55" y2="80.01" width="0.1524" layer="91"/>
<junction x="82.55" y="80.01"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND"/>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="102.87" y1="147.32" x2="102.87" y2="151.13" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="L" gate="G$1" pin="C"/>
<pinref part="GND10" gate="1" pin="GND"/>
<wire x1="111.76" y1="147.32" x2="111.76" y2="144.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="1"/>
<wire x1="160.02" y1="27.94" x2="170.18" y2="27.94" width="0.1524" layer="91"/>
<label x="162.56" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SV1" gate="G$1" pin="1"/>
<wire x1="185.42" y1="30.48" x2="195.58" y2="30.48" width="0.1524" layer="91"/>
<label x="187.96" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="15"/>
<wire x1="228.6" y1="165.1" x2="233.68" y2="165.1" width="0.1524" layer="91"/>
<wire x1="233.68" y1="165.1" x2="233.68" y2="167.64" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="233.68" y1="167.64" x2="238.76" y2="167.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GND"/>
<pinref part="U$5" gate="G$1" pin="GND"/>
<wire x1="58.42" y1="30.48" x2="59.69" y2="30.48" width="0.1524" layer="91"/>
<wire x1="59.69" y1="30.48" x2="59.69" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="G1" gate="G1" pin="-"/>
<pinref part="U$6" gate="G$1" pin="GND"/>
<wire x1="68.58" y1="22.86" x2="68.58" y2="17.681234375" width="0.1524" layer="91"/>
<wire x1="68.58" y1="17.681234375" x2="68.579978125" y2="17.65135" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$9" gate="G$1" pin="GND0"/>
<wire x1="88.9" y1="22.86" x2="78.74" y2="22.86" width="0.1524" layer="91"/>
<label x="78.74" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$9" gate="G$1" pin="GND1"/>
<wire x1="124.46" y1="33.02" x2="134.62" y2="33.02" width="0.1524" layer="91"/>
<label x="127" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$9" gate="G$1" pin="GND"/>
<wire x1="124.46" y1="17.78" x2="134.62" y2="17.78" width="0.1524" layer="91"/>
<label x="129.54" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C9" gate="G$1" pin="2"/>
<pinref part="U$14" gate="G$1" pin="GND"/>
<wire x1="251.46" y1="83.82" x2="251.46" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$15" gate="G$1" pin="GND"/>
<wire x1="200.66" y1="86.36" x2="195.58" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="GND@3"/>
</segment>
<segment>
<pinref part="U$17" gate="G$1" pin="GND"/>
<wire x1="200.66" y1="104.14" x2="195.58" y2="104.14" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="GND@2"/>
</segment>
<segment>
<pinref part="U$18" gate="G$1" pin="GND"/>
<wire x1="226.06" y1="88.9" x2="241.3" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="GND@1"/>
</segment>
<segment>
<pinref part="X4" gate="G$1" pin="GND@1"/>
<pinref part="U$23" gate="G$1" pin="GND"/>
<pinref part="X4" gate="G$1" pin="GND@0"/>
<wire x1="226.06" y1="78.74" x2="226.06" y2="76.2" width="0.1524" layer="91"/>
<junction x="226.06" y="76.2"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="X2" gate="G$1" pin="P$1"/>
<junction x="11.43" y="157.48"/>
<wire x1="11.43" y1="157.48" x2="11.43" y2="152.4" width="0.1524" layer="91"/>
<junction x="11.43" y="152.4"/>
<pinref part="U1" gate="G$1" pin="PA01"/>
<wire x1="38.1" y1="146.05" x2="11.43" y2="146.05" width="0.1524" layer="91"/>
<wire x1="11.43" y1="146.05" x2="11.43" y2="152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="C4" gate="G$1" pin="1"/>
<pinref part="X2" gate="G$1" pin="P$2"/>
<wire x1="21.59" y1="152.4" x2="21.59" y2="157.48" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="PA00"/>
<wire x1="38.1" y1="148.59" x2="21.59" y2="148.59" width="0.1524" layer="91"/>
<wire x1="21.59" y1="148.59" x2="21.59" y2="152.4" width="0.1524" layer="91"/>
<junction x="21.59" y="152.4"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VDDCORE"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="73.66" y1="146.05" x2="78.74" y2="146.05" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+3V3" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VDDANA"/>
<wire x1="73.66" y1="156.21" x2="78.74" y2="156.21" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="VDDIN"/>
<wire x1="73.66" y1="148.59" x2="78.74" y2="148.59" width="0.1524" layer="91"/>
<wire x1="78.74" y1="148.59" x2="78.74" y2="151.13" width="0.1524" layer="91"/>
<junction x="78.74" y="156.21"/>
<pinref part="U1" gate="G$1" pin="VDDIO1"/>
<wire x1="78.74" y1="151.13" x2="78.74" y2="153.67" width="0.1524" layer="91"/>
<wire x1="78.74" y1="153.67" x2="78.74" y2="156.21" width="0.1524" layer="91"/>
<wire x1="73.66" y1="153.67" x2="78.74" y2="153.67" width="0.1524" layer="91"/>
<junction x="78.74" y="153.67"/>
<pinref part="+3V2" gate="G$1" pin="+3V3"/>
<wire x1="78.74" y1="156.21" x2="78.74" y2="162.56" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="VDDIO2"/>
<wire x1="73.66" y1="151.13" x2="78.74" y2="151.13" width="0.1524" layer="91"/>
<junction x="78.74" y="151.13"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="1"/>
<pinref part="+3V1" gate="G$1" pin="+3V3"/>
<wire x1="102.87" y1="158.75" x2="102.87" y2="163.83" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="2"/>
<wire x1="160.02" y1="30.48" x2="170.18" y2="30.48" width="0.1524" layer="91"/>
<label x="162.56" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="134.62" y1="160.02" x2="134.62" y2="165.1" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="142.24" y1="165.1" x2="142.24" y2="160.02" width="0.1524" layer="91"/>
<wire x1="142.24" y1="165.1" x2="134.62" y2="165.1" width="0.1524" layer="91"/>
<wire x1="134.62" y1="165.1" x2="134.62" y2="167.64" width="0.1524" layer="91"/>
<junction x="134.62" y="165.1"/>
<label x="134.62" y="167.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="+3V3" gate="G$1" pin="+3V3"/>
<pinref part="JP1" gate="A" pin="13"/>
<wire x1="228.6" y1="160.02" x2="213.36" y2="160.02" width="0.1524" layer="91"/>
<wire x1="213.36" y1="160.02" x2="213.36" y2="167.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R3" gate="G$1" pin="1"/>
<pinref part="+3V4" gate="G$1" pin="+3V3"/>
<wire x1="121.92" y1="160.02" x2="123.19" y2="160.02" width="0.1524" layer="91"/>
<wire x1="123.19" y1="160.02" x2="123.19" y2="166.37" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="9.98" y1="46.74" x2="14.22" y2="46.74" width="0.1524" layer="91"/>
<wire x1="14.22" y1="46.74" x2="14.22" y2="46.92" width="0.1524" layer="91"/>
<wire x1="14.22" y1="46.92" x2="15.22" y2="46.92" width="0.1524" layer="91"/>
<wire x1="15.22" y1="46.92" x2="15.22" y2="35.56" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="VCC"/>
<wire x1="15.22" y1="35.56" x2="25.4" y2="35.56" width="0.1524" layer="91"/>
<label x="10.22" y="46.92" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="226.06" y1="96.52" x2="251.46" y2="96.52" width="0.1524" layer="91"/>
<wire x1="251.46" y1="96.52" x2="251.46" y2="99.06" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="251.46" y1="96.52" x2="251.46" y2="91.44" width="0.1524" layer="91"/>
<junction x="251.46" y="96.52"/>
<pinref part="+3V5" gate="G$1" pin="+3V3"/>
<pinref part="U4" gate="G$1" pin="VDD"/>
</segment>
</net>
<net name="RST" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="!RESETN"/>
<wire x1="38.1" y1="156.21" x2="30.48" y2="156.21" width="0.1524" layer="91"/>
<label x="30.48" y="156.21" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="3"/>
<wire x1="160.02" y1="33.02" x2="170.18" y2="33.02" width="0.1524" layer="91"/>
<label x="162.56" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="121.92" y1="149.86" x2="121.92" y2="144.78" width="0.1524" layer="91"/>
<label x="121.92" y="144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="A0" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA02"/>
<wire x1="38.1" y1="143.51" x2="27.94" y2="143.51" width="0.1524" layer="91"/>
<wire x1="27.94" y1="143.51" x2="27.94" y2="144.78" width="0.1524" layer="91"/>
<label x="27.94" y="144.78" size="1.778" layer="95" rot="R180"/>
<label x="27.94" y="144.78" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="228.6" y1="157.48" x2="213.36" y2="157.48" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="12"/>
<label x="213.36" y="157.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="AREF" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA03"/>
<wire x1="38.1" y1="140.97" x2="27.94" y2="140.97" width="0.1524" layer="91"/>
<wire x1="27.94" y1="140.97" x2="27.94" y2="142.24" width="0.1524" layer="91"/>
<label x="27.94" y="142.24" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="213.36" y1="154.94" x2="228.6" y2="154.94" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="11"/>
<label x="213.36" y="154.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="A3" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA04"/>
<wire x1="38.1" y1="138.43" x2="27.94" y2="138.43" width="0.1524" layer="91"/>
<wire x1="27.94" y1="138.43" x2="27.94" y2="139.7" width="0.1524" layer="91"/>
<label x="27.94" y="139.7" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="228.6" y1="147.32" x2="213.36" y2="147.32" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="8"/>
<label x="213.36" y="147.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="A4" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA05"/>
<wire x1="38.1" y1="135.89" x2="27.94" y2="135.89" width="0.1524" layer="91"/>
<wire x1="27.94" y1="135.89" x2="27.94" y2="137.16" width="0.1524" layer="91"/>
<label x="27.94" y="137.16" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="213.36" y1="144.78" x2="228.6" y2="144.78" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="7"/>
<label x="213.36" y="144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="CS_D8" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA06"/>
<wire x1="38.1" y1="133.35" x2="27.94" y2="133.35" width="0.1524" layer="91"/>
<wire x1="27.94" y1="133.35" x2="27.94" y2="134.62" width="0.1524" layer="91"/>
<label x="27.94" y="134.62" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA07"/>
<wire x1="38.1" y1="130.81" x2="27.94" y2="130.81" width="0.1524" layer="91"/>
<wire x1="27.94" y1="130.81" x2="27.94" y2="132.08" width="0.1524" layer="91"/>
<label x="27.94" y="132.08" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="RST_D4" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA08"/>
<wire x1="38.1" y1="128.27" x2="27.94" y2="128.27" width="0.1524" layer="91"/>
<wire x1="27.94" y1="128.27" x2="27.94" y2="129.54" width="0.1524" layer="91"/>
<label x="27.94" y="129.54" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="IRQ_D3" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA09"/>
<wire x1="38.1" y1="125.73" x2="27.94" y2="125.73" width="0.1524" layer="91"/>
<wire x1="27.94" y1="125.73" x2="27.94" y2="127" width="0.1524" layer="91"/>
<label x="27.94" y="127" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="TX" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA10"/>
<wire x1="38.1" y1="123.19" x2="27.94" y2="123.19" width="0.1524" layer="91"/>
<wire x1="27.94" y1="123.19" x2="27.94" y2="124.46" width="0.1524" layer="91"/>
<label x="35.56" y="124.46" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="228.6" y1="134.62" x2="213.36" y2="134.62" width="0.1524" layer="91"/>
<label x="213.36" y="134.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$9" gate="G$1" pin="RX"/>
<wire x1="124.46" y1="43.18" x2="134.62" y2="43.18" width="0.1524" layer="91"/>
<label x="127" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="RX" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA11"/>
<wire x1="38.1" y1="120.65" x2="27.94" y2="120.65" width="0.1524" layer="91"/>
<wire x1="27.94" y1="120.65" x2="27.94" y2="121.92" width="0.1524" layer="91"/>
<label x="27.94" y="121.92" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="2"/>
<wire x1="213.36" y1="132.08" x2="228.6" y2="132.08" width="0.1524" layer="91"/>
<label x="213.36" y="132.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$9" gate="G$1" pin="TX"/>
<wire x1="124.46" y1="38.1" x2="134.62" y2="38.1" width="0.1524" layer="91"/>
<label x="127" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA12"/>
<wire x1="38.1" y1="118.11" x2="27.94" y2="118.11" width="0.1524" layer="91"/>
<wire x1="27.94" y1="118.11" x2="27.94" y2="119.38" width="0.1524" layer="91"/>
<label x="27.94" y="119.38" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="200.66" y1="101.6" x2="185.42" y2="101.6" width="0.1524" layer="91"/>
<label x="185.42" y="101.6" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="MISO"/>
</segment>
</net>
<net name="N/C" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA13"/>
<wire x1="38.1" y1="115.57" x2="27.94" y2="115.57" width="0.1524" layer="91"/>
<wire x1="27.94" y1="115.57" x2="27.94" y2="116.84" width="0.1524" layer="91"/>
<label x="27.94" y="116.84" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="D2" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA14"/>
<wire x1="38.1" y1="113.03" x2="27.94" y2="113.03" width="0.1524" layer="91"/>
<wire x1="27.94" y1="113.03" x2="27.94" y2="114.3" width="0.1524" layer="91"/>
<label x="27.94" y="114.3" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="D5" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA15"/>
<wire x1="38.1" y1="110.49" x2="27.94" y2="110.49" width="0.1524" layer="91"/>
<wire x1="27.94" y1="110.49" x2="27.94" y2="111.76" width="0.1524" layer="91"/>
<label x="27.94" y="111.76" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="172.72" y1="157.48" x2="193.04" y2="157.48" width="0.1524" layer="91"/>
<label x="172.72" y="157.48" size="1.778" layer="95"/>
<pinref part="JP3" gate="G$1" pin="5"/>
</segment>
</net>
<net name="D11" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA16"/>
<wire x1="38.1" y1="107.95" x2="27.94" y2="107.95" width="0.1524" layer="91"/>
<wire x1="27.94" y1="107.95" x2="27.94" y2="109.22" width="0.1524" layer="91"/>
<label x="27.94" y="109.22" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="193.04" y1="154.94" x2="172.72" y2="154.94" width="0.1524" layer="91"/>
<label x="172.72" y="154.94" size="1.778" layer="95"/>
<pinref part="JP3" gate="G$1" pin="6"/>
</segment>
</net>
<net name="D10" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA18"/>
<wire x1="38.1" y1="102.87" x2="27.94" y2="102.87" width="0.1524" layer="91"/>
<wire x1="27.94" y1="102.87" x2="27.94" y2="104.14" width="0.1524" layer="91"/>
<label x="27.94" y="104.14" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="D12" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA19"/>
<wire x1="38.1" y1="100.33" x2="27.94" y2="100.33" width="0.1524" layer="91"/>
<wire x1="27.94" y1="100.33" x2="27.94" y2="101.6" width="0.1524" layer="91"/>
<label x="27.94" y="101.6" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="193.04" y1="149.86" x2="172.72" y2="149.86" width="0.1524" layer="91"/>
<label x="172.72" y="149.86" size="1.778" layer="95"/>
<pinref part="JP3" gate="G$1" pin="8"/>
</segment>
</net>
<net name="D6" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA20"/>
<wire x1="38.1" y1="97.79" x2="27.94" y2="97.79" width="0.1524" layer="91"/>
<wire x1="27.94" y1="97.79" x2="27.94" y2="99.06" width="0.1524" layer="91"/>
<label x="27.94" y="99.06" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<wire x1="172.72" y1="147.32" x2="193.04" y2="147.32" width="0.1524" layer="91"/>
<label x="172.72" y="147.32" size="1.778" layer="95"/>
<pinref part="JP3" gate="G$1" pin="9"/>
</segment>
</net>
<net name="D7" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA21"/>
<wire x1="38.1" y1="95.25" x2="27.94" y2="95.25" width="0.1524" layer="91"/>
<wire x1="27.94" y1="95.25" x2="27.94" y2="96.52" width="0.1524" layer="91"/>
<label x="27.94" y="96.52" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="D-" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA24"/>
<wire x1="38.1" y1="87.63" x2="27.94" y2="87.63" width="0.1524" layer="91"/>
<wire x1="27.94" y1="87.63" x2="27.94" y2="88.9" width="0.1524" layer="91"/>
<label x="27.94" y="88.9" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="SV1" gate="G$1" pin="2"/>
<wire x1="185.42" y1="33.02" x2="195.58" y2="33.02" width="0.1524" layer="91"/>
<label x="187.96" y="33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="D+" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA25"/>
<wire x1="38.1" y1="85.09" x2="27.94" y2="85.09" width="0.1524" layer="91"/>
<wire x1="27.94" y1="85.09" x2="27.94" y2="86.36" width="0.1524" layer="91"/>
<label x="27.94" y="86.36" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="SV1" gate="G$1" pin="3"/>
<wire x1="185.42" y1="35.56" x2="195.58" y2="35.56" width="0.1524" layer="91"/>
<label x="187.96" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA27"/>
<wire x1="38.1" y1="82.55" x2="27.94" y2="82.55" width="0.1524" layer="91"/>
<wire x1="27.94" y1="82.55" x2="27.94" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA28"/>
<wire x1="38.1" y1="80.01" x2="27.94" y2="80.01" width="0.1524" layer="91"/>
<wire x1="27.94" y1="80.01" x2="27.94" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA22"/>
<wire x1="38.1" y1="92.71" x2="27.94" y2="92.71" width="0.1524" layer="91"/>
<wire x1="27.94" y1="92.71" x2="27.94" y2="93.98" width="0.1524" layer="91"/>
<label x="27.94" y="93.98" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="142.24" y1="149.86" x2="142.24" y2="147.32" width="0.1524" layer="91"/>
<wire x1="142.24" y1="147.32" x2="144.78" y2="147.32" width="0.1524" layer="91"/>
<label x="142.24" y="147.32" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="193.04" y1="142.24" x2="172.72" y2="142.24" width="0.1524" layer="91"/>
<label x="172.72" y="142.24" size="1.778" layer="95"/>
<pinref part="JP3" gate="G$1" pin="11"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="SDA"/>
<wire x1="58.42" y1="35.56" x2="68.312228125" y2="35.56" width="0.1524" layer="91"/>
<wire x1="68.312228125" y1="35.56" x2="68.312228125" y2="35.560021875" width="0.1524" layer="91"/>
<label x="61.594403125" y="35.4934375" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA23"/>
<wire x1="38.1" y1="90.17" x2="27.94" y2="90.17" width="0.1524" layer="91"/>
<wire x1="27.94" y1="90.17" x2="27.94" y2="91.44" width="0.1524" layer="91"/>
<label x="27.94" y="91.44" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="134.62" y1="149.86" x2="134.62" y2="144.78" width="0.1524" layer="91"/>
<wire x1="134.62" y1="144.78" x2="144.78" y2="144.78" width="0.1524" layer="91"/>
<label x="142.24" y="144.78" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="172.72" y1="139.7" x2="193.04" y2="139.7" width="0.1524" layer="91"/>
<label x="172.72" y="139.7" size="1.778" layer="95"/>
<pinref part="JP3" gate="G$1" pin="12"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="SCL"/>
<wire x1="58.42" y1="38.1" x2="68.204746875" y2="38.1" width="0.1524" layer="91"/>
<wire x1="68.204746875" y1="38.1" x2="68.204746875" y2="38.032828125" width="0.1524" layer="91"/>
<label x="61.360521875" y="38.1336125" size="1.778" layer="95"/>
</segment>
</net>
<net name="A5" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB02"/>
<wire x1="73.66" y1="133.35" x2="83.82" y2="133.35" width="0.1524" layer="91"/>
<wire x1="83.82" y1="133.35" x2="83.82" y2="134.62" width="0.1524" layer="91"/>
<label x="83.82" y="134.62" size="1.778" layer="95" rot="MR180"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="16"/>
<wire x1="228.6" y1="167.64" x2="215.9" y2="167.64" width="0.1524" layer="91"/>
<label x="215.9" y="167.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="RXLED" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB03"/>
<wire x1="73.66" y1="130.81" x2="83.82" y2="130.81" width="0.1524" layer="91"/>
<wire x1="83.82" y1="130.81" x2="83.82" y2="132.08" width="0.1524" layer="91"/>
<label x="83.82" y="132.08" size="1.778" layer="95" rot="MR180"/>
</segment>
</net>
<net name="A1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB08"/>
<wire x1="73.66" y1="128.27" x2="83.82" y2="128.27" width="0.1524" layer="91"/>
<wire x1="83.82" y1="128.27" x2="83.82" y2="129.54" width="0.1524" layer="91"/>
<label x="83.82" y="129.54" size="1.778" layer="95" rot="MR180"/>
</segment>
<segment>
<wire x1="228.6" y1="152.4" x2="213.36" y2="152.4" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="10"/>
<label x="213.36" y="152.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="A2" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB09"/>
<wire x1="73.66" y1="125.73" x2="83.82" y2="125.73" width="0.1524" layer="91"/>
<wire x1="83.82" y1="125.73" x2="83.82" y2="127" width="0.1524" layer="91"/>
<label x="83.82" y="127" size="1.778" layer="95" rot="MR180"/>
</segment>
<segment>
<wire x1="213.36" y1="149.86" x2="228.6" y2="149.86" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="9"/>
<label x="213.36" y="149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="MOSI" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB10"/>
<wire x1="73.66" y1="123.19" x2="83.82" y2="123.19" width="0.1524" layer="91"/>
<wire x1="83.82" y1="123.19" x2="83.82" y2="124.46" width="0.1524" layer="91"/>
<label x="83.82" y="124.46" size="1.778" layer="95" rot="MR180"/>
</segment>
<segment>
<wire x1="185.42" y1="99.06" x2="200.66" y2="99.06" width="0.1524" layer="91"/>
<label x="187.96" y="99.06" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="MOSI"/>
</segment>
</net>
<net name="SCK" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB11"/>
<wire x1="73.66" y1="120.65" x2="83.82" y2="120.65" width="0.1524" layer="91"/>
<wire x1="83.82" y1="120.65" x2="83.82" y2="121.92" width="0.1524" layer="91"/>
<label x="83.82" y="121.92" size="1.778" layer="95" rot="MR180"/>
</segment>
<segment>
<wire x1="185.42" y1="96.52" x2="200.66" y2="96.52" width="0.1524" layer="91"/>
<label x="187.96" y="96.52" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="SCK"/>
</segment>
</net>
<net name="TXD" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB22"/>
<wire x1="73.66" y1="118.11" x2="83.82" y2="118.11" width="0.1524" layer="91"/>
<wire x1="83.82" y1="118.11" x2="83.82" y2="119.38" width="0.1524" layer="91"/>
<label x="83.82" y="119.38" size="1.778" layer="95" rot="MR180"/>
</segment>
</net>
<net name="RXD" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB23"/>
<wire x1="73.66" y1="115.57" x2="83.82" y2="115.57" width="0.1524" layer="91"/>
<wire x1="83.82" y1="115.57" x2="83.82" y2="116.84" width="0.1524" layer="91"/>
<label x="83.82" y="116.84" size="1.778" layer="95" rot="MR180"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="L" gate="G$1" pin="A"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="111.76" y1="157.48" x2="111.76" y2="154.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D13" class="0">
<segment>
<wire x1="111.76" y1="167.64" x2="111.76" y2="172.72" width="0.1524" layer="91"/>
<label x="111.76" y="172.72" size="1.778" layer="95" rot="R270"/>
<pinref part="R7" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PA17"/>
<wire x1="38.1" y1="105.41" x2="27.94" y2="105.41" width="0.1524" layer="91"/>
<wire x1="27.94" y1="105.41" x2="27.94" y2="106.68" width="0.1524" layer="91"/>
<label x="27.94" y="106.68" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="SWCLK" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA30"/>
<wire x1="38.1" y1="77.47" x2="27.94" y2="77.47" width="0.1524" layer="91"/>
<wire x1="27.94" y1="77.47" x2="27.94" y2="78.74" width="0.1524" layer="91"/>
<label x="27.94" y="78.74" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="5"/>
<wire x1="160.02" y1="38.1" x2="170.18" y2="38.1" width="0.1524" layer="91"/>
<label x="162.56" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="SWDIO" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA31"/>
<wire x1="38.1" y1="74.93" x2="27.94" y2="74.93" width="0.1524" layer="91"/>
<wire x1="27.94" y1="74.93" x2="27.94" y2="76.2" width="0.1524" layer="91"/>
<label x="27.94" y="76.2" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="4"/>
<wire x1="160.02" y1="35.56" x2="170.18" y2="35.56" width="0.1524" layer="91"/>
<label x="162.56" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="VBUS" class="0">
<segment>
<pinref part="U$19" gate="G$1" pin="VBUS"/>
<wire x1="193.04" y1="162.56" x2="165.1" y2="162.56" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="3"/>
</segment>
</net>
<net name="VBAT" class="0">
<segment>
<pinref part="U$20" gate="G$1" pin="VBAT"/>
<wire x1="165.1" y1="167.64" x2="193.04" y2="167.64" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="1"/>
</segment>
</net>
<net name="EN" class="0">
<segment>
<wire x1="172.72" y1="165.1" x2="193.04" y2="165.1" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="2"/>
<label x="172.72" y="165.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIO1" class="0">
<segment>
<pinref part="JP1" gate="A" pin="1"/>
<wire x1="213.36" y1="129.54" x2="228.6" y2="129.54" width="0.1524" layer="91"/>
<label x="213.36" y="129.54" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="226.06" y1="101.6" x2="241.3" y2="101.6" width="0.1524" layer="91"/>
<label x="241.3" y="101.6" size="1.778" layer="95" rot="MR0"/>
<pinref part="U4" gate="G$1" pin="DIO1"/>
</segment>
</net>
<net name="D0" class="0">
<segment>
<wire x1="193.04" y1="160.02" x2="172.72" y2="160.02" width="0.1524" layer="91"/>
<label x="172.72" y="160.02" size="1.778" layer="95"/>
<pinref part="JP3" gate="G$1" pin="4"/>
</segment>
</net>
<net name="D51" class="0">
<segment>
<wire x1="193.04" y1="144.78" x2="172.72" y2="144.78" width="0.1524" layer="91"/>
<label x="172.72" y="144.78" size="1.778" layer="95"/>
<pinref part="JP3" gate="G$1" pin="10"/>
</segment>
</net>
<net name="D131" class="0">
<segment>
<wire x1="172.72" y1="152.4" x2="193.04" y2="152.4" width="0.1524" layer="91"/>
<label x="172.72" y="152.4" size="1.778" layer="95"/>
<pinref part="JP3" gate="G$1" pin="7"/>
</segment>
</net>
<net name="AREF1" class="0">
<segment>
<pinref part="JP1" gate="A" pin="14"/>
<wire x1="228.6" y1="162.56" x2="238.76" y2="162.56" width="0.1524" layer="91"/>
<label x="233.68" y="162.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCK1" class="0">
<segment>
<wire x1="228.6" y1="142.24" x2="213.36" y2="142.24" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="6"/>
<label x="213.36" y="142.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="MOSI1" class="0">
<segment>
<wire x1="228.6" y1="139.7" x2="213.36" y2="139.7" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="5"/>
<label x="213.36" y="139.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="MISO1" class="0">
<segment>
<wire x1="213.36" y1="137.16" x2="228.6" y2="137.16" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="4"/>
<label x="213.36" y="137.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VBAT"/>
<pinref part="G1" gate="G1" pin="+"/>
<wire x1="58.42" y1="33.02" x2="68.58" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="INTPIN6" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="1"/>
<pinref part="IC1" gate="G$1" pin="!INT!/SQW"/>
<wire x1="9.98" y1="36.58" x2="9.98" y2="33.02" width="0.1524" layer="91"/>
<wire x1="9.98" y1="33.02" x2="25.4" y2="33.02" width="0.1524" layer="91"/>
<label x="10.22" y="32.92" size="1.778" layer="95"/>
</segment>
</net>
<net name="D3_IRQ" class="0">
<segment>
<wire x1="226.06" y1="99.06" x2="241.3" y2="99.06" width="0.1524" layer="91"/>
<label x="231.14" y="99.06" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="DIO0"/>
</segment>
</net>
<net name="D4_RST" class="0">
<segment>
<wire x1="185.42" y1="91.44" x2="200.66" y2="91.44" width="0.1524" layer="91"/>
<label x="185.42" y="91.44" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="RESET"/>
</segment>
</net>
<net name="D8_CS" class="0">
<segment>
<wire x1="185.42" y1="93.98" x2="200.66" y2="93.98" width="0.1524" layer="91"/>
<label x="187.96" y="93.98" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="NSS"/>
</segment>
</net>
<net name="ANT" class="0">
<segment>
<wire x1="226.06" y1="86.36" x2="233.68" y2="86.36" width="0.1524" layer="91"/>
<wire x1="233.68" y1="86.36" x2="233.68" y2="83.82" width="0.1524" layer="91"/>
<pinref part="JP2" gate="G$1" pin="1"/>
<junction x="233.68" y="83.82"/>
<pinref part="U4" gate="G$1" pin="ANT"/>
<pinref part="X4" gate="G$1" pin="SIGNAL"/>
</segment>
</net>
<net name="DIO3" class="0">
<segment>
<wire x1="226.06" y1="91.44" x2="241.3" y2="91.44" width="0.1524" layer="91"/>
<label x="228.6" y="91.44" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="DIO3"/>
</segment>
</net>
<net name="DIO2" class="0">
<segment>
<wire x1="226.06" y1="104.14" x2="241.3" y2="104.14" width="0.1524" layer="91"/>
<label x="241.3" y="104.14" size="1.778" layer="95" rot="MR0"/>
<pinref part="U4" gate="G$1" pin="DIO2"/>
</segment>
</net>
<net name="DIO5" class="0">
<segment>
<wire x1="200.66" y1="88.9" x2="185.42" y2="88.9" width="0.1524" layer="91"/>
<label x="185.42" y="88.9" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="DIO5"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>

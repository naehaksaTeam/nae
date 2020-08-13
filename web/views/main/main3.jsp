<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.util.Calendar"%>
    <%@ page contentType="text/html; charset=UTF-8"%>
    <%	request.setCharacterEncoding("utf-8");
	Calendar now = Calendar.getInstance();
	int month = now.get(Calendar.MONTH)+1;%>
<!DOCTYPE html>


<html lang="ko" class="yui3-js-enabled -webkit-"><head>
<style media="" data-href="/eXPortal/css/hyw/portal.css">/*# sourceURL=/eXPortal/css/hyw/portal.css */
/*@ sourceURL=/eXPortal/css/hyw/portal.css */
@CHARSET "UTF-8";

/* CSS Document */

/* ------------------------------------------------------------
 * Name      : portal.css
 * Desc      : 한양여자대학교 포털시스템
 * Created   : 2018/03/06 by YSK
 * Updated   : 
------------------------------------------------------------ */

/* Portal Common */
* {margin:0;padding:0}
html,body{height:100%} 
body{font-family:"맑은고딕", Malgun Gothic, "돋움", Dotum, AppleGothic, Sans-serif;font-size:12px;color:#333;-webkit-text-size-adjust:none;-webkit-tap-highlight-color:rgba(0, 0, 0, 0)} 
body,p,h1,h2,h3,h4,h5,h6,menu,ul,ol,li,dl,dt,dd,table,th,td,form,fieldset,legend,input,textarea,button{margin:0;padding:0}
div, p, span, li, table td{word-break:break-all}
.ep_pg, .ep_pg_body, .ep_pg_main, .ep_pg_block, .ep_pg_grid, .ep_pg_play, .list, .item{margin:0;padding:0}
.ep_pg{margin:auto 0px;text-align:left;width:auto}
.ep_pg_block{position:static}
.ep_pg .ep_pg_main{width:100%;float:right;margin-left:0}
.ep_pg_main .ep_pg_block{float:none;width:auto}
.ep_pg_play li.moving{background:#f6f6f6;border:1px solid #afb1b4}
.ep_pg_play{margin-top:0px}
ul.list{float:left;margin-top:0;zoom:1;margin-left:0;margin-right:-1px}
.mod{position:relative;margin:0;padding-bottom:0;height:230px;background:#fff;border:1px solid #d6d6d6;overflow:hidden;margin-bottom:-1px}
.mod div.portlet-body{overflow:hidden;zoom:1}
.portlet-header{position:relative;margin:0;padding:0;font-size:100%;display:block;cursor:move;height:36px}
.portlet-title{float:left;display:block;padding:7px 0 0 16px;font-size:17px;color:#1866a6;vertical-align:middle;font-weight:600}
.portlet-title span.point{color:#44a5b8}
.portlet-title-text{height:20px;vertical-align:middle}
.portlet-icon{position:absolute;right:1px;top:0;z-index:10}
.portlet-body{padding:27px 19px}
#nav{margin:0px;padding:0px}

/* i5 */
@media (min-width:319px) and (max-width:320px){
#grad{margin-top:47px!important; margin-left:-146px!important;}	
#chart01{left:81px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}	

/* 겔 */
@media (min-width:359px) and (max-width:360px){
#grad{margin-top:47px!important; margin-left:-146px!important;}	
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* i678X */
@media (min-width:374px) and (max-width:375px){
#grad{margin-top:47px!important; margin-left:-153px!important;}	
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* LG Optimus */
@media (min-width:383px) and (max-width:384px){	
#chart01{left:112px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* pixel2 */
@media (min-width:410px) and (max-width:411px){
#grad{margin-top:47px!important; margin-left:-146px!important;}	
#chart01{left:125px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* nexus 5x */
@media (min-width:411px) and (max-width:412px){	
#chart01{left:125px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* i678+ */
@media (min-width:413px) and (max-width:414px){
#grad{margin-top:47px!important; margin-left:-146px!important;}	
#chart01{left:127px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

@media (min-width:479px) and (max-width:480px){	
#chart01{left:160px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* blackberry playbook */
@media (min-width:599px) and (max-width:600px){
#grad{margin-top:47px!important; margin-left:-146px!important;}	
#chart01{left:220px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* macrosoft lumia 550 */
@media (min-width:639px) and (max-width:640px){	
#chart01{left:241px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

@media (min-width:719px) and (max-width:720px){	
#chart01{left:278px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

@media (min-width:749px) and (max-width:750px){	
#chart01{left:294px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* 해당픽셀부터는 피씨화면 대체 필요 */
/* ipad */
@media (min-width:767px) and (max-width:768px){	
#chart01{left:50px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
.state_box2 li{width:100%!important;}
}

/* kindle fire */
@media (min-width:799px) and (max-width:800px){	
#chart01{left:50px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
.state_box2 li{width:100%!important;}
}

/* ipad */
@media (min-width:1023px) and (max-width:1024px){	
#chart01{left:50px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
.state_box2 li{width:100%!important;}
}

/* Laptop with MDPI */
@media (min-width:1279px) and (max-width:1280px){	
#chart01{left:50px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
.state_box2 li{width:100%!important;}
}

/* Laptop with HIDPI */
@media (min-width:1439px) and (max-width:1440px){	
#chart01{left:50px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
.state_box2 li{width:100%!important;}
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<title> 한양여대 포털 </title>



<link rel="shortcut icon" href="/eXPortal/images/tomato.ico">
<style media="" data-href="/eXPortal/css/jquery.jqplot.min.css">/*# sourceURL=/eXPortal/css/jquery.jqplot.min.css */
/*@ sourceURL=/eXPortal/css/jquery.jqplot.min.css */
.jqplot-target{position:relative;color:#666;font-family:"Trebuchet MS",Arial,Helvetica,sans-serif;font-size:1em}.jqplot-axis{font-size:.75em}.jqplot-xaxis{margin-top:10px}.jqplot-x2axis{margin-bottom:10px}.jqplot-yaxis{margin-right:10px}.jqplot-y2axis,.jqplot-y3axis,.jqplot-y4axis,.jqplot-y5axis,.jqplot-y6axis,.jqplot-y7axis,.jqplot-y8axis,.jqplot-y9axis,.jqplot-yMidAxis{margin-left:10px;margin-right:10px}.jqplot-axis-tick,.jqplot-xaxis-tick,.jqplot-yaxis-tick,.jqplot-x2axis-tick,.jqplot-y2axis-tick,.jqplot-y3axis-tick,.jqplot-y4axis-tick,.jqplot-y5axis-tick,.jqplot-y6axis-tick,.jqplot-y7axis-tick,.jqplot-y8axis-tick,.jqplot-y9axis-tick,.jqplot-yMidAxis-tick{position:absolute;white-space:pre}.jqplot-xaxis-tick{top:0;left:15px;vertical-align:top}.jqplot-x2axis-tick{bottom:0;left:15px;vertical-align:bottom}.jqplot-yaxis-tick{right:0;top:15px;text-align:right}.jqplot-yaxis-tick.jqplot-breakTick{right:-20px;margin-right:0;padding:1px 5px 1px 5px;z-index:2;font-size:1.5em}.jqplot-y2axis-tick,.jqplot-y3axis-tick,.jqplot-y4axis-tick,.jqplot-y5axis-tick,.jqplot-y6axis-tick,.jqplot-y7axis-tick,.jqplot-y8axis-tick,.jqplot-y9axis-tick{left:0;top:15px;text-align:left}.jqplot-yMidAxis-tick{text-align:center;white-space:nowrap}.jqplot-xaxis-label{margin-top:10px;font-size:11pt;position:absolute}.jqplot-x2axis-label{margin-bottom:10px;font-size:11pt;position:absolute}.jqplot-yaxis-label{margin-right:10px;font-size:11pt;position:absolute}.jqplot-yMidAxis-label{font-size:11pt;position:absolute}.jqplot-y2axis-label,.jqplot-y3axis-label,.jqplot-y4axis-label,.jqplot-y5axis-label,.jqplot-y6axis-label,.jqplot-y7axis-label,.jqplot-y8axis-label,.jqplot-y9axis-label{font-size:11pt;margin-left:10px;position:absolute}.jqplot-meterGauge-tick{font-size:.75em;color:#999}.jqplot-meterGauge-label{font-size:1em;color:#999}/*table.jqplot-table-legend{margin-top:12px;margin-bottom:12px;margin-left:12px;margin-right:12px}*/table.jqplot-table-legend,table.jqplot-cursor-legend{background-color:rgba(255,255,255,0.6);border:1px solid #ccc;position:absolute;font-size:.75em}td.jqplot-table-legend{vertical-align:middle}td.jqplot-seriesToggle:hover,td.jqplot-seriesToggle:active{cursor:pointer}.jqplot-table-legend .jqplot-series-hidden{text-decoration:line-through}div.jqplot-table-legend-swatch-outline{border:1px solid #ccc;padding:1px}div.jqplot-table-legend-swatch{width:0;height:0;border-top-width:5px;border-bottom-width:5px;border-left-width:6px;border-right-width:6px;border-top-style:solid;border-bottom-style:solid;border-left-style:solid;border-right-style:solid}.jqplot-title{top:0;left:0;padding-bottom:.5em;font-size:1.2em}table.jqplot-cursor-tooltip{border:1px solid #ccc;font-size:.75em}.jqplot-cursor-tooltip{border:1px solid #ccc;font-size:.75em;white-space:nowrap;background:rgba(208,208,208,0.5);padding:1px}.jqplot-highlighter-tooltip,.jqplot-canvasOverlay-tooltip{border:1px solid #ccc;font-size:.75em;white-space:nowrap;background:rgba(208,208,208,0.5);padding:1px}.jqplot-point-label{font-size:.75em;z-index:2}td.jqplot-cursor-legend-swatch{vertical-align:middle;text-align:center}div.jqplot-cursor-legend-swatch{width:1.2em;height:.7em}.jqplot-error{text-align:center}.jqplot-error-message{position:relative;top:46%;display:inline-block}div.jqplot-bubble-label{font-size:.8em;padding-left:2px;padding-right:2px;color:rgb(20%,20%,20%)}div.jqplot-bubble-label.jqplot-bubble-label-highlight{background:rgba(90%,90%,90%,0.7)}div.jqplot-noData-container{text-align:center;background-color:rgba(96%,96%,96%,0.3)}</style>
<style media="all" data-href="/eXPortal/css/jquery-ui.css">/*# sourceURL=/eXPortal/css/jquery-ui.css */
/*@ sourceURL=/eXPortal/css/jquery-ui.css */
/*!
 * jQuery UI CSS Framework 1.8.24
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Theming/API
 */

/* Layout helpers
----------------------------------*/
.ui-helper-hidden { display: none; }
.ui-helper-hidden-accessible { position: absolute !important; clip: rect(1px 1px 1px 1px); clip: rect(1px,1px,1px,1px); }
.ui-helper-reset { margin: 0; padding: 0; border: 0; outline: 0; line-height: 1.3; text-decoration: none; font-size: 100%; list-style: none; }
.ui-helper-clearfix:before, .ui-helper-clearfix:after { content: ""; display: table; }
.ui-helper-clearfix:after { clear: both; }
.ui-helper-clearfix { zoom: 1; }
.ui-helper-zfix { width: 100%; height: 100%; top: 0; left: 0; position: absolute; opacity: 0; filter:Alpha(Opacity=0); }


/* Interaction Cues
----------------------------------*/
.ui-state-disabled { cursor: default !important; }


/* Icons
----------------------------------*/

/* states and images */
.ui-icon { display: block; text-indent: -99999px; overflow: hidden; background-repeat: no-repeat; }


/* Misc visuals
----------------------------------*/

/* Overlays */
.ui-widget-overlay { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }


/*!
 * jQuery UI CSS Framework 1.8.24
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Theming/API
 *
 * To view and modify this theme, visit http://jqueryui.com/themeroller/?ffDefault=Verdana,Arial,sans-serif&fwDefault=normal&fsDefault=1.1em&cornerRadius=4px&bgColorHeader=cccccc&bgTextureHeader=03_highlight_soft.png&bgImgOpacityHeader=75&borderColorHeader=aaaaaa&fcHeader=222222&iconColorHeader=222222&bgColorContent=ffffff&bgTextureContent=01_flat.png&bgImgOpacityContent=75&borderColorContent=aaaaaa&fcContent=222222&iconColorContent=222222&bgColorDefault=e6e6e6&bgTextureDefault=02_glass.png&bgImgOpacityDefault=75&borderColorDefault=d3d3d3&fcDefault=555555&iconColorDefault=888888&bgColorHover=dadada&bgTextureHover=02_glass.png&bgImgOpacityHover=75&borderColorHover=999999&fcHover=212121&iconColorHover=454545&bgColorActive=e8e8e8&bgTextureActive=02_glass.png&bgImgOpacityActive=65&borderColorActive=aaaaaa&fcActive=212121&iconColorActive=454545&bgColorHighlight=fbf9ee&bgTextureHighlight=02_glass.png&bgImgOpacityHighlight=55&borderColorHighlight=fcefa1&fcHighlight=363636&iconColorHighlight=2e83ff&bgColorError=fef1ec&bgTextureError=02_glass.png&bgImgOpacityError=95&borderColorError=cd0a0a&fcError=cd0a0a&iconColorError=cd0a0a&bgColorOverlay=aaaaaa&bgTextureOverlay=01_flat.png&bgImgOpacityOverlay=0&opacityOverlay=30&bgColorShadow=aaaaaa&bgTextureShadow=01_flat.png&bgImgOpacityShadow=0&opacityShadow=30&thicknessShadow=8px&offsetTopShadow=-8px&offsetLeftShadow=-8px&cornerRadiusShadow=8px
 */


/* Component containers
----------------------------------*/
.ui-widget { font-family: Verdana,Arial,sans-serif; font-size: 1.1em; }
.ui-widget .ui-widget { font-size: 1em; }
.ui-widget input, .ui-widget select, .ui-widget textarea, .ui-widget button { font-family: Verdana,Arial,sans-serif; font-size: 1em; }
.ui-widget-content { border: 1px solid #aaaaaa; background: #ffffff url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-bg_flat_75_ffffff_40x100.png") 50% 50% repeat-x; color: #222222; }
.ui-widget-content a { color: #222222; }
.ui-widget-header { border: 1px solid #aaaaaa; background: #cccccc url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-bg_highlight-soft_75_cccccc_1x100.png") 50% 50% repeat-x; color: #222222; font-weight: bold; }
.ui-widget-header a { color: #222222; }

/* Interaction states
----------------------------------*/
.ui-state-default, .ui-widget-content .ui-state-default, .ui-widget-header .ui-state-default { border: 1px solid #d3d3d3; background: #e6e6e6 url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-bg_glass_75_e6e6e6_1x400.png") 50% 50% repeat-x; font-weight: normal; color: #555555; }
.ui-state-default a, .ui-state-default a:link, .ui-state-default a:visited { color: #555555; text-decoration: none; }
.ui-state-hover, .ui-widget-content .ui-state-hover, .ui-widget-header .ui-state-hover, .ui-state-focus, .ui-widget-content .ui-state-focus, .ui-widget-header .ui-state-focus { border: 1px solid #999999; background: #dadada url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-bg_glass_75_dadada_1x400.png") 50% 50% repeat-x; font-weight: normal; color: #212121; }
.ui-state-hover a, .ui-state-hover a:hover { color: #212121; text-decoration: none; }
.ui-state-active, .ui-widget-content .ui-state-active, .ui-widget-header .ui-state-active { border: 1px solid #aaaaaa; background: #e8e8e8 url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-bg_glass_65_e8e8e8_1x400.png") 50% 50% repeat-x; font-weight: normal; color: #212121; }
.ui-state-active a, .ui-state-active a:link, .ui-state-active a:visited { color: #212121; text-decoration: none; }
.ui-widget :active { outline: none; }

/* Interaction Cues
----------------------------------*/
.ui-state-highlight, .ui-widget-content .ui-state-highlight, .ui-widget-header .ui-state-highlight  {border: 1px solid #fcefa1; background: #fbf9ee url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-bg_glass_55_fbf9ee_1x400.png") 50% 50% repeat-x; color: #363636; }
.ui-state-highlight a, .ui-widget-content .ui-state-highlight a,.ui-widget-header .ui-state-highlight a { color: #363636; }
.ui-state-error, .ui-widget-content .ui-state-error, .ui-widget-header .ui-state-error {border: 1px solid #cd0a0a; background: #fef1ec url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-bg_glass_95_fef1ec_1x400.png") 50% 50% repeat-x; color: #cd0a0a; }
.ui-state-error a, .ui-widget-content .ui-state-error a, .ui-widget-header .ui-state-error a { color: #cd0a0a; }
.ui-state-error-text, .ui-widget-content .ui-state-error-text, .ui-widget-header .ui-state-error-text { color: #cd0a0a; }
.ui-priority-primary, .ui-widget-content .ui-priority-primary, .ui-widget-header .ui-priority-primary { font-weight: bold; }
.ui-priority-secondary, .ui-widget-content .ui-priority-secondary,  .ui-widget-header .ui-priority-secondary { opacity: .7; filter:Alpha(Opacity=70); font-weight: normal; }
.ui-state-disabled, .ui-widget-content .ui-state-disabled, .ui-widget-header .ui-state-disabled { filter:Alpha(Opacity=35); background-image: none; }

/* Icons
----------------------------------*/

/* states and images */
.ui-icon { width: 16px; height: 16px; background-image: url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-icons_222222_256x240.png"); }
.ui-widget-content .ui-icon {background-image: url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-icons_222222_256x240.png"); }
.ui-widget-header .ui-icon {background-image: url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-icons_222222_256x240.png"); }
.ui-state-default .ui-icon { background-image: url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-icons_888888_256x240.png"); }
.ui-state-hover .ui-icon, .ui-state-focus .ui-icon {background-image: url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-icons_454545_256x240.png"); }
.ui-state-active .ui-icon {background-image: url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-icons_454545_256x240.png"); }
.ui-state-highlight .ui-icon {background-image: url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-icons_2e83ff_256x240.png"); }
.ui-state-error .ui-icon, .ui-state-error-text .ui-icon {background-image: url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-icons_cd0a0a_256x240.png"); }

/* positioning */
.ui-icon-carat-1-n { background-position: 0 0; }
.ui-icon-carat-1-ne { background-position: -16px 0; }
.ui-icon-carat-1-e { background-position: -32px 0; }
.ui-icon-carat-1-se { background-position: -48px 0; }
.ui-icon-carat-1-s { background-position: -64px 0; }
.ui-icon-carat-1-sw { background-position: -80px 0; }
.ui-icon-carat-1-w { background-position: -96px 0; }
.ui-icon-carat-1-nw { background-position: -112px 0; }
.ui-icon-carat-2-n-s { background-position: -128px 0; }
.ui-icon-carat-2-e-w { background-position: -144px 0; }
.ui-icon-triangle-1-n { background-position: 0 -16px; }
.ui-icon-triangle-1-ne { background-position: -16px -16px; }
.ui-icon-triangle-1-e { background-position: -32px -16px; }
.ui-icon-triangle-1-se { background-position: -48px -16px; }
.ui-icon-triangle-1-s { background-position: -64px -16px; }
.ui-icon-triangle-1-sw { background-position: -80px -16px; }
.ui-icon-triangle-1-w { background-position: -96px -16px; }
.ui-icon-triangle-1-nw { background-position: -112px -16px; }
.ui-icon-triangle-2-n-s { background-position: -128px -16px; }
.ui-icon-triangle-2-e-w { background-position: -144px -16px; }
.ui-icon-arrow-1-n { background-position: 0 -32px; }
.ui-icon-arrow-1-ne { background-position: -16px -32px; }
.ui-icon-arrow-1-e { background-position: -32px -32px; }
.ui-icon-arrow-1-se { background-position: -48px -32px; }
.ui-icon-arrow-1-s { background-position: -64px -32px; }
.ui-icon-arrow-1-sw { background-position: -80px -32px; }
.ui-icon-arrow-1-w { background-position: -96px -32px; }
.ui-icon-arrow-1-nw { background-position: -112px -32px; }
.ui-icon-arrow-2-n-s { background-position: -128px -32px; }
.ui-icon-arrow-2-ne-sw { background-position: -144px -32px; }
.ui-icon-arrow-2-e-w { background-position: -160px -32px; }
.ui-icon-arrow-2-se-nw { background-position: -176px -32px; }
.ui-icon-arrowstop-1-n { background-position: -192px -32px; }
.ui-icon-arrowstop-1-e { background-position: -208px -32px; }
.ui-icon-arrowstop-1-s { background-position: -224px -32px; }
.ui-icon-arrowstop-1-w { background-position: -240px -32px; }
.ui-icon-arrowthick-1-n { background-position: 0 -48px; }
.ui-icon-arrowthick-1-ne { background-position: -16px -48px; }
.ui-icon-arrowthick-1-e { background-position: -32px -48px; }
.ui-icon-arrowthick-1-se { background-position: -48px -48px; }
.ui-icon-arrowthick-1-s { background-position: -64px -48px; }
.ui-icon-arrowthick-1-sw { background-position: -80px -48px; }
.ui-icon-arrowthick-1-w { background-position: -96px -48px; }
.ui-icon-arrowthick-1-nw { background-position: -112px -48px; }
.ui-icon-arrowthick-2-n-s { background-position: -128px -48px; }
.ui-icon-arrowthick-2-ne-sw { background-position: -144px -48px; }
.ui-icon-arrowthick-2-e-w { background-position: -160px -48px; }
.ui-icon-arrowthick-2-se-nw { background-position: -176px -48px; }
.ui-icon-arrowthickstop-1-n { background-position: -192px -48px; }
.ui-icon-arrowthickstop-1-e { background-position: -208px -48px; }
.ui-icon-arrowthickstop-1-s { background-position: -224px -48px; }
.ui-icon-arrowthickstop-1-w { background-position: -240px -48px; }
.ui-icon-arrowreturnthick-1-w { background-position: 0 -64px; }
.ui-icon-arrowreturnthick-1-n { background-position: -16px -64px; }
.ui-icon-arrowreturnthick-1-e { background-position: -32px -64px; }
.ui-icon-arrowreturnthick-1-s { background-position: -48px -64px; }
.ui-icon-arrowreturn-1-w { background-position: -64px -64px; }
.ui-icon-arrowreturn-1-n { background-position: -80px -64px; }
.ui-icon-arrowreturn-1-e { background-position: -96px -64px; }
.ui-icon-arrowreturn-1-s { background-position: -112px -64px; }
.ui-icon-arrowrefresh-1-w { background-position: -128px -64px; }
.ui-icon-arrowrefresh-1-n { background-position: -144px -64px; }
.ui-icon-arrowrefresh-1-e { background-position: -160px -64px; }
.ui-icon-arrowrefresh-1-s { background-position: -176px -64px; }
.ui-icon-arrow-4 { background-position: 0 -80px; }
.ui-icon-arrow-4-diag { background-position: -16px -80px; }
.ui-icon-extlink { background-position: -32px -80px; }
.ui-icon-newwin { background-position: -48px -80px; }
.ui-icon-refresh { background-position: -64px -80px; }
.ui-icon-shuffle { background-position: -80px -80px; }
.ui-icon-transfer-e-w { background-position: -96px -80px; }
.ui-icon-transferthick-e-w { background-position: -112px -80px; }
.ui-icon-folder-collapsed { background-position: 0 -96px; }
.ui-icon-folder-open { background-position: -16px -96px; }
.ui-icon-document { background-position: -32px -96px; }
.ui-icon-document-b { background-position: -48px -96px; }
.ui-icon-note { background-position: -64px -96px; }
.ui-icon-mail-closed { background-position: -80px -96px; }
.ui-icon-mail-open { background-position: -96px -96px; }
.ui-icon-suitcase { background-position: -112px -96px; }
.ui-icon-comment { background-position: -128px -96px; }
.ui-icon-person { background-position: -144px -96px; }
.ui-icon-print { background-position: -160px -96px; }
.ui-icon-trash { background-position: -176px -96px; }
.ui-icon-locked { background-position: -192px -96px; }
.ui-icon-unlocked { background-position: -208px -96px; }
.ui-icon-bookmark { background-position: -224px -96px; }
.ui-icon-tag { background-position: -240px -96px; }
.ui-icon-home { background-position: 0 -112px; }
.ui-icon-flag { background-position: -16px -112px; }
.ui-icon-calendar { background-position: -32px -112px; }
.ui-icon-cart { background-position: -48px -112px; }
.ui-icon-pencil { background-position: -64px -112px; }
.ui-icon-clock { background-position: -80px -112px; }
.ui-icon-disk { background-position: -96px -112px; }
.ui-icon-calculator { background-position: -112px -112px; }
.ui-icon-zoomin { background-position: -128px -112px; }
.ui-icon-zoomout { background-position: -144px -112px; }
.ui-icon-search { background-position: -160px -112px; }
.ui-icon-wrench { background-position: -176px -112px; }
.ui-icon-gear { background-position: -192px -112px; }
.ui-icon-heart { background-position: -208px -112px; }
.ui-icon-star { background-position: -224px -112px; }
.ui-icon-link { background-position: -240px -112px; }
.ui-icon-cancel { background-position: 0 -128px; }
.ui-icon-plus { background-position: -16px -128px; }
.ui-icon-plusthick { background-position: -32px -128px; }
.ui-icon-minus { background-position: -48px -128px; }
.ui-icon-minusthick { background-position: -64px -128px; }
.ui-icon-close { background-position: -80px -128px; }
.ui-icon-closethick { background-position: -96px -128px; }
.ui-icon-key { background-position: -112px -128px; }
.ui-icon-lightbulb { background-position: -128px -128px; }
.ui-icon-scissors { background-position: -144px -128px; }
.ui-icon-clipboard { background-position: -160px -128px; }
.ui-icon-copy { background-position: -176px -128px; }
.ui-icon-contact { background-position: -192px -128px; }
.ui-icon-image { background-position: -208px -128px; }
.ui-icon-video { background-position: -224px -128px; }
.ui-icon-script { background-position: -240px -128px; }
.ui-icon-alert { background-position: 0 -144px; }
.ui-icon-info { background-position: -16px -144px; }
.ui-icon-notice { background-position: -32px -144px; }
.ui-icon-help { background-position: -48px -144px; }
.ui-icon-check { background-position: -64px -144px; }
.ui-icon-bullet { background-position: -80px -144px; }
.ui-icon-radio-off { background-position: -96px -144px; }
.ui-icon-radio-on { background-position: -112px -144px; }
.ui-icon-pin-w { background-position: -128px -144px; }
.ui-icon-pin-s { background-position: -144px -144px; }
.ui-icon-play { background-position: 0 -160px; }
.ui-icon-pause { background-position: -16px -160px; }
.ui-icon-seek-next { background-position: -32px -160px; }
.ui-icon-seek-prev { background-position: -48px -160px; }
.ui-icon-seek-end { background-position: -64px -160px; }
.ui-icon-seek-start { background-position: -80px -160px; }
/* ui-icon-seek-first is deprecated, use ui-icon-seek-start instead */
.ui-icon-seek-first { background-position: -80px -160px; }
.ui-icon-stop { background-position: -96px -160px; }
.ui-icon-eject { background-position: -112px -160px; }
.ui-icon-volume-off { background-position: -128px -160px; }
.ui-icon-volume-on { background-position: -144px -160px; }
.ui-icon-power { background-position: 0 -176px; }
.ui-icon-signal-diag { background-position: -16px -176px; }
.ui-icon-signal { background-position: -32px -176px; }
.ui-icon-battery-0 { background-position: -48px -176px; }
.ui-icon-battery-1 { background-position: -64px -176px; }
.ui-icon-battery-2 { background-position: -80px -176px; }
.ui-icon-battery-3 { background-position: -96px -176px; }
.ui-icon-circle-plus { background-position: 0 -192px; }
.ui-icon-circle-minus { background-position: -16px -192px; }
.ui-icon-circle-close { background-position: -32px -192px; }
.ui-icon-circle-triangle-e { background-position: -48px -192px; }
.ui-icon-circle-triangle-s { background-position: -64px -192px; }
.ui-icon-circle-triangle-w { background-position: -80px -192px; }
.ui-icon-circle-triangle-n { background-position: -96px -192px; }
.ui-icon-circle-arrow-e { background-position: -112px -192px; }
.ui-icon-circle-arrow-s { background-position: -128px -192px; }
.ui-icon-circle-arrow-w { background-position: -144px -192px; }
.ui-icon-circle-arrow-n { background-position: -160px -192px; }
.ui-icon-circle-zoomin { background-position: -176px -192px; }
.ui-icon-circle-zoomout { background-position: -192px -192px; }
.ui-icon-circle-check { background-position: -208px -192px; }
.ui-icon-circlesmall-plus { background-position: 0 -208px; }
.ui-icon-circlesmall-minus { background-position: -16px -208px; }
.ui-icon-circlesmall-close { background-position: -32px -208px; }
.ui-icon-squaresmall-plus { background-position: -48px -208px; }
.ui-icon-squaresmall-minus { background-position: -64px -208px; }
.ui-icon-squaresmall-close { background-position: -80px -208px; }
.ui-icon-grip-dotted-vertical { background-position: 0 -224px; }
.ui-icon-grip-dotted-horizontal { background-position: -16px -224px; }
.ui-icon-grip-solid-vertical { background-position: -32px -224px; }
.ui-icon-grip-solid-horizontal { background-position: -48px -224px; }
.ui-icon-gripsmall-diagonal-se { background-position: -64px -224px; }
.ui-icon-grip-diagonal-se { background-position: -80px -224px; }


/* Misc visuals
----------------------------------*/

/* Corner radius */
.ui-corner-all, .ui-corner-top, .ui-corner-left, .ui-corner-tl { -moz-border-radius-topleft: 4px; -webkit-border-top-left-radius: 4px; -khtml-border-top-left-radius: 4px; border-top-left-radius: 4px; }
.ui-corner-all, .ui-corner-top, .ui-corner-right, .ui-corner-tr { -moz-border-radius-topright: 4px; -webkit-border-top-right-radius: 4px; -khtml-border-top-right-radius: 4px; border-top-right-radius: 4px; }
.ui-corner-all, .ui-corner-bottom, .ui-corner-left, .ui-corner-bl { -moz-border-radius-bottomleft: 4px; -webkit-border-bottom-left-radius: 4px; -khtml-border-bottom-left-radius: 4px; border-bottom-left-radius: 4px; }
.ui-corner-all, .ui-corner-bottom, .ui-corner-right, .ui-corner-br { -moz-border-radius-bottomright: 4px; -webkit-border-bottom-right-radius: 4px; -khtml-border-bottom-right-radius: 4px; border-bottom-right-radius: 4px; }

/* Overlays */
.ui-widget-overlay { background: #aaaaaa url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-bg_flat_0_aaaaaa_40x100.png") 50% 50% repeat-x; opacity: .30;filter:Alpha(Opacity=30); }
.ui-widget-shadow { margin: -8px 0 0 -8px; padding: 8px; background: #aaaaaa url("https://portal.hywoman.ac.kr/eXPortal/css/images/ui-bg_flat_0_aaaaaa_40x100.png") 50% 50% repeat-x; opacity: .30;filter:Alpha(Opacity=30); -moz-border-radius: 8px; -khtml-border-radius: 8px; -webkit-border-radius: 8px; border-radius: 8px; }/*!
 * jQuery UI Resizable 1.8.24
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Resizable#theming
 */
.ui-resizable { position: relative;}
.ui-resizable-handle { position: absolute;font-size: 0.1px; display: block; }
.ui-resizable-disabled .ui-resizable-handle, .ui-resizable-autohide .ui-resizable-handle { display: none; }
.ui-resizable-n { cursor: n-resize; height: 7px; width: 100%; top: -5px; left: 0; }
.ui-resizable-s { cursor: s-resize; height: 7px; width: 100%; bottom: -5px; left: 0; }
.ui-resizable-e { cursor: e-resize; width: 7px; right: -5px; top: 0; height: 100%; }
.ui-resizable-w { cursor: w-resize; width: 7px; left: -5px; top: 0; height: 100%; }
.ui-resizable-se { cursor: se-resize; width: 12px; height: 12px; right: 1px; bottom: 1px; }
.ui-resizable-sw { cursor: sw-resize; width: 9px; height: 9px; left: -5px; bottom: -5px; }
.ui-resizable-nw { cursor: nw-resize; width: 9px; height: 9px; left: -5px; top: -5px; }
.ui-resizable-ne { cursor: ne-resize; width: 9px; height: 9px; right: -5px; top: -5px;}/*!
 * jQuery UI Selectable 1.8.24
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Selectable#theming
 */
.ui-selectable-helper { position: absolute; z-index: 100; border:1px dotted black; }
/*!
 * jQuery UI Accordion 1.8.24
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Accordion#theming
 */
/* IE/Win - Fix animation bug - #4615 */
.ui-accordion { width: 100%; }
.ui-accordion .ui-accordion-header { cursor: pointer; position: relative; margin-top: 1px; zoom: 1; }
.ui-accordion .ui-accordion-li-fix { display: inline; }
.ui-accordion .ui-accordion-header-active { border-bottom: 0 !important; }
.ui-accordion .ui-accordion-header a { display: block; font-size: 1em; padding: .5em .5em .5em .7em; }
.ui-accordion-icons .ui-accordion-header a { padding-left: 2.2em; }
.ui-accordion .ui-accordion-header .ui-icon { position: absolute; left: .5em; top: 50%; margin-top: -8px; }
.ui-accordion .ui-accordion-content { padding: 1em 2.2em; border-top: 0; margin-top: -2px; position: relative; top: 1px; margin-bottom: 2px; overflow: auto; display: none; zoom: 1; }
.ui-accordion .ui-accordion-content-active { display: block; }
/*!
 * jQuery UI Autocomplete 1.8.24
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Autocomplete#theming
 */
.ui-autocomplete { position: absolute; cursor: default; }	

/* workarounds */
* html .ui-autocomplete { width:1px; } /* without this, the menu expands to 100% in IE6 */

/*
 * jQuery UI Menu 1.8.24
 *
 * Copyright 2010, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Menu#theming
 */
.ui-menu {
	list-style:none;
	padding: 2px;
	margin: 0;
	display:block;
	float: left;
}
.ui-menu .ui-menu {
	margin-top: -3px;
}
.ui-menu .ui-menu-item {
	margin:0;
	padding: 0;
	zoom: 1;
	float: left;
	clear: left;
	width: 100%;
}
.ui-menu .ui-menu-item a {
	text-decoration:none;
	display:block;
	padding:.2em .4em;
	line-height:1.5;
	zoom:1;
}
.ui-menu .ui-menu-item a.ui-state-hover,
.ui-menu .ui-menu-item a.ui-state-active {
	font-weight: normal;
	margin: -1px;
}
/*!
 * jQuery UI Button 1.8.24
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Button#theming
 */
.ui-button { display: inline-block; position: relative; padding: 0; margin-right: .1em; text-decoration: none !important; cursor: pointer; text-align: center; zoom: 1; overflow: visible; } /* the overflow property removes extra width in IE */
.ui-button-icon-only { width: 2.2em; } /* to make room for the icon, a width needs to be set here */
button.ui-button-icon-only { width: 2.4em; } /* button elements seem to need a little more width */
.ui-button-icons-only { width: 3.4em; } 
button.ui-button-icons-only { width: 3.7em; } 

/*button text element */
.ui-button .ui-button-text { display: block; line-height: 1.4;  }
.ui-button-text-only .ui-button-text { padding: .4em 1em; }
.ui-button-icon-only .ui-button-text, .ui-button-icons-only .ui-button-text { padding: .4em; text-indent: -9999999px; }
.ui-button-text-icon-primary .ui-button-text, .ui-button-text-icons .ui-button-text { padding: .4em 1em .4em 2.1em; }
.ui-button-text-icon-secondary .ui-button-text, .ui-button-text-icons .ui-button-text { padding: .4em 2.1em .4em 1em; }
.ui-button-text-icons .ui-button-text { padding-left: 2.1em; padding-right: 2.1em; }
/* no icon support for input elements, provide padding by default */
input.ui-button { padding: .4em 1em; }

/*button icon element(s) */
.ui-button-icon-only .ui-icon, .ui-button-text-icon-primary .ui-icon, .ui-button-text-icon-secondary .ui-icon, .ui-button-text-icons .ui-icon, .ui-button-icons-only .ui-icon { position: absolute; top: 50%; margin-top: -8px; }
.ui-button-icon-only .ui-icon { left: 50%; margin-left: -8px; }
.ui-button-text-icon-primary .ui-button-icon-primary, .ui-button-text-icons .ui-button-icon-primary, .ui-button-icons-only .ui-button-icon-primary { left: .5em; }
.ui-button-text-icon-secondary .ui-button-icon-secondary, .ui-button-text-icons .ui-button-icon-secondary, .ui-button-icons-only .ui-button-icon-secondary { right: .5em; }
.ui-button-text-icons .ui-button-icon-secondary, .ui-button-icons-only .ui-button-icon-secondary { right: .5em; }

/*button sets*/
.ui-buttonset { margin-right: 7px; }
.ui-buttonset .ui-button { margin-left: 0; margin-right: -.3em; }

/* workarounds */
button.ui-button::-moz-focus-inner { border: 0; padding: 0; } /* reset extra padding in Firefox */
/*!
 * jQuery UI Dialog 1.8.24
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Dialog#theming
 */
.ui-dialog { position: absolute; padding: .2em; width: 300px; overflow: hidden; }
.ui-dialog .ui-dialog-titlebar { padding: .4em 1em; position: relative;  }
.ui-dialog .ui-dialog-title { float: left; margin: .1em 16px .1em 0; } 
.ui-dialog .ui-dialog-titlebar-close { position: absolute; right: .3em; top: 50%; width: 19px; margin: -10px 0 0 0; padding: 1px; height: 18px; }
.ui-dialog .ui-dialog-titlebar-close span { display: block; margin: 1px; }
.ui-dialog .ui-dialog-titlebar-close:hover, .ui-dialog .ui-dialog-titlebar-close:focus { padding: 0; }
.ui-dialog .ui-dialog-content { position: relative; border: 0; padding: .5em 1em; background: none; overflow: auto; zoom: 1; }
.ui-dialog .ui-dialog-buttonpane { text-align: left; border-width: 1px 0 0 0; background-image: none; margin: .5em 0 0 0; padding: .3em 1em .5em .4em; }
.ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset { float: right; }
.ui-dialog .ui-dialog-buttonpane button { margin: .5em .4em .5em 0; cursor: pointer; }
.ui-dialog .ui-resizable-se { width: 14px; height: 14px; right: 3px; bottom: 3px; }
.ui-draggable .ui-dialog-titlebar { cursor: move; }
/*!
 * jQuery UI Slider 1.8.24
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Slider#theming
 */
.ui-slider { position: relative; text-align: left; }
.ui-slider .ui-slider-handle { position: absolute; z-index: 2; width: 1.2em; height: 1.2em; cursor: default; }
.ui-slider .ui-slider-range { position: absolute; z-index: 1; font-size: .7em; display: block; border: 0; background-position: 0 0; }

.ui-slider-horizontal { height: .8em; }
.ui-slider-horizontal .ui-slider-handle { top: -.3em; margin-left: -.6em; }
.ui-slider-horizontal .ui-slider-range { top: 0; height: 100%; }
.ui-slider-horizontal .ui-slider-range-min { left: 0; }
.ui-slider-horizontal .ui-slider-range-max { right: 0; }

.ui-slider-vertical { width: .8em; height: 100px; }
.ui-slider-vertical .ui-slider-handle { left: -.3em; margin-left: 0; margin-bottom: -.6em; }
.ui-slider-vertical .ui-slider-range { left: 0; width: 100%; }
.ui-slider-vertical .ui-slider-range-min { bottom: 0; }
.ui-slider-vertical .ui-slider-range-max { top: 0; }/*!
 * jQuery UI Tabs 1.8.24
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Tabs#theming
 */
.ui-tabs { position: relative; padding: .2em; zoom: 1; } /* position: relative prevents IE scroll bug (element with position: relative inside container with overflow: auto appear as "fixed") */
.ui-tabs .ui-tabs-nav { margin: 0; padding: .2em .2em 0; }
.ui-tabs .ui-tabs-nav li { list-style: none; float: left; position: relative; top: 1px; margin: 0 .2em 1px 0; border-bottom: 0 !important; padding: 0; white-space: nowrap; }
.ui-tabs .ui-tabs-nav li a { float: left; padding: .5em 1em; text-decoration: none; }
.ui-tabs .ui-tabs-nav li.ui-tabs-selected { margin-bottom: 0; padding-bottom: 1px; }
.ui-tabs .ui-tabs-nav li.ui-tabs-selected a, .ui-tabs .ui-tabs-nav li.ui-state-disabled a, .ui-tabs .ui-tabs-nav li.ui-state-processing a { cursor: text; }
.ui-tabs .ui-tabs-nav li a, .ui-tabs.ui-tabs-collapsible .ui-tabs-nav li.ui-tabs-selected a { cursor: pointer; } /* first selector in group seems obsolete, but required to overcome bug in Opera applying cursor: text overall if defined elsewhere... */
.ui-tabs .ui-tabs-panel { display: block; border-width: 0; padding: 1em 1.4em; background: none; }
.ui-tabs .ui-tabs-hide { display: none !important; }
/*!
 * jQuery UI Datepicker 1.8.24
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Datepicker#theming
 */
.ui-datepicker { width: 17em; padding: .2em .2em 0; display: none; }
.ui-datepicker .ui-datepicker-header { position:relative; padding:.2em 0;}
.ui-datepicker .ui-datepicker-prev, .ui-datepicker .ui-datepicker-next { position:absolute; top: 2px; width: 1.8em; height: 1.8em; }
.ui-datepicker .ui-datepicker-prev-hover, .ui-datepicker .ui-datepicker-next-hover { top: 1px; }
.ui-datepicker .ui-datepicker-prev { left:2px; }
.ui-datepicker .ui-datepicker-next { right:2px; }
.ui-datepicker .ui-datepicker-prev-hover { left:1px; }
.ui-datepicker .ui-datepicker-next-hover { right:1px; }
.ui-datepicker .ui-datepicker-prev span, .ui-datepicker .ui-datepicker-next span { display: block; position: absolute; left: 50%; margin-left: -8px; top: 50%; margin-top: -8px;  }
.ui-datepicker .ui-datepicker-title { margin: 0 2.3em; line-height: 1.8em; text-align: center; }
.ui-datepicker .ui-datepicker-title select { font-size:1em; margin:1px 0; }
.ui-datepicker select.ui-datepicker-month-year {width: 100%;}
/*
.ui-datepicker select.ui-datepicker-month, 
.ui-datepicker select.ui-datepicker-year { width: 49%;}
*/
.ui-datepicker table {width: 100%; font-size: .9em; border-collapse: collapse; margin:0 0 .4em; }
.ui-datepicker th { padding: .7em .3em; text-align: center; font-weight: bold; border: 0;  }
.ui-datepicker td { border: 0; padding: 1px; }
.ui-datepicker td span, .ui-datepicker td a { display: block; padding: .2em; text-align: right; text-decoration: none; }
.ui-datepicker .ui-datepicker-buttonpane { background-image: none; margin: .7em 0 0 0; padding:0 .2em; border-left: 0; border-right: 0; border-bottom: 0; }
.ui-datepicker .ui-datepicker-buttonpane button { float: right; margin: .5em .2em .4em; cursor: pointer; padding: .2em .6em .3em .6em; width:auto; overflow:visible; }
.ui-datepicker .ui-datepicker-buttonpane button.ui-datepicker-current { float:left; }

/* with multiple calendars */
.ui-datepicker.ui-datepicker-multi { width:auto; }
.ui-datepicker-multi .ui-datepicker-group { float:left; }
.ui-datepicker-multi .ui-datepicker-group table { width:95%; margin:0 auto .4em; }
.ui-datepicker-multi-2 .ui-datepicker-group { width:50%; }
.ui-datepicker-multi-3 .ui-datepicker-group { width:33.3%; }
.ui-datepicker-multi-4 .ui-datepicker-group { width:25%; }
.ui-datepicker-multi .ui-datepicker-group-last .ui-datepicker-header { border-left-width:0; }
.ui-datepicker-multi .ui-datepicker-group-middle .ui-datepicker-header { border-left-width:0; }
.ui-datepicker-multi .ui-datepicker-buttonpane { clear:left; }
.ui-datepicker-row-break { clear:both; width:100%; font-size:0em; }

/* RTL support */
.ui-datepicker-rtl { direction: rtl; }
.ui-datepicker-rtl .ui-datepicker-prev { right: 2px; left: auto; }
.ui-datepicker-rtl .ui-datepicker-next { left: 2px; right: auto; }
.ui-datepicker-rtl .ui-datepicker-prev:hover { right: 1px; left: auto; }
.ui-datepicker-rtl .ui-datepicker-next:hover { left: 1px; right: auto; }
.ui-datepicker-rtl .ui-datepicker-buttonpane { clear:right; }
.ui-datepicker-rtl .ui-datepicker-buttonpane button { float: left; }
.ui-datepicker-rtl .ui-datepicker-buttonpane button.ui-datepicker-current { float:right; }
.ui-datepicker-rtl .ui-datepicker-group { float:right; }
.ui-datepicker-rtl .ui-datepicker-group-last .ui-datepicker-header { border-right-width:0; border-left-width:1px; }
.ui-datepicker-rtl .ui-datepicker-group-middle .ui-datepicker-header { border-right-width:0; border-left-width:1px; }

/* IE6 IFRAME FIX (taken from datepicker 1.5.3 */
.ui-datepicker-cover {
    position: absolute; /*must have*/
    z-index: -1; /*must have*/
    filter: mask(); /*must have*/
    top: -4px; /*must have*/
    left: -4px; /*must have*/
    width: 200px; /*must have*/
    height: 200px; /*must have*/
}/*!
 * jQuery UI Progressbar 1.8.24
 *
 * Copyright 2012, AUTHORS.txt (http://jqueryui.com/about)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * http://docs.jquery.com/UI/Progressbar#theming
 */
.ui-progressbar { height:2em; text-align: left; overflow: hidden; }
.ui-progressbar .ui-progressbar-value {margin: -1px; height:100%; }</style>
<style media="all" data-href="/eXPortal/css/jquery.ui.timepicker.css">/*# sourceURL=/eXPortal/css/jquery.ui.timepicker.css */
/*@ sourceURL=/eXPortal/css/jquery.ui.timepicker.css */
/*
 * Timepicker stylesheet
 * Highly inspired from datepicker
 * FG - Nov 2010 - Web3R 
 *
 * version 0.0.3 : Fixed some settings, more dynamic
 * version 0.0.4 : Removed width:100% on tables
 * version 0.1.1 : set width 0 on tables to fix an ie6 bug
 */

.ui-timepicker-inline { display: inline; }

#ui-timepicker-div { padding: 0.2em; background-color: #fff; }
.ui-timepicker-table { display: inline-table; width: 0; }
.ui-timepicker-table table { margin:0.15em 0 0 0; border-collapse: collapse; }

.ui-timepicker-hours, .ui-timepicker-minutes { padding: 0.2em;  }

.ui-timepicker-table .ui-timepicker-title { line-height: 1.8em; text-align: center; }
.ui-timepicker-table td { padding: 0.1em; width: 2.2em; }
.ui-timepicker-table th.periods { padding: 0.1em; width: 2.2em; }

/* span for disabled cells */
.ui-timepicker-table td span {
	display:block;
    padding:0.2em 0.3em 0.2em 0.5em;
    width: 1.2em;

    text-align:right;
    text-decoration:none;
}
/* anchors for clickable cells */
.ui-timepicker-table td a {
    display:block;
    padding:0.2em 0.3em 0.2em 0.5em;
    width: 1.2em;
    cursor: pointer;
    text-align:right;
    text-decoration:none;
}


/* buttons and button pane styling */
.ui-timepicker .ui-timepicker-buttonpane {
    background-image: none; margin: .7em 0 0 0; padding:0 .2em; border-left: 0; border-right: 0; border-bottom: 0;
}
.ui-timepicker .ui-timepicker-buttonpane button { margin: .5em .2em .4em; cursor: pointer; padding: .2em .6em .3em .6em; width:auto; overflow:visible; }
/* The close button */
.ui-timepicker .ui-timepicker-close { float: right }

/* the now button */
.ui-timepicker .ui-timepicker-now { float: left; }

/* the deselect button */
.ui-timepicker .ui-timepicker-deselect { float: left; }


/* IE6 IFRAME FIX (taken from datepicker 1.5.3 */
.ui-timepicker-cover {
    display: none; /*sorry for IE5*/
    display/**/: block; /*sorry for IE5*/
    position: absolute; /*must have*/
    z-index: -1; /*must have*/
    filter: mask(); /*must have*/
    top: -4px; /*must have*/
    left: -4px; /*must have*/
    width: 200px; /*must have*/
    height: 200px; /*must have*/
}</style>
<style media="" data-href="/eXPortal/css/theme.css">/*# sourceURL=/eXPortal/css/theme.css */
/*@ sourceURL=/eXPortal/css/theme.css */
@CHARSET "UTF-8";
/* Tomato System parkjisun 20120409 */
.ep_pg_play li.moving {
	background: #f6f6f6;
	border: 1px solid #afb1b4;
}

/* div.mod {
	border: 1px solid #cfcfcf;
	font-family: "돋움", Dotum, 'Lucida Grande', 'Lucida Sans Unicode',
		'Lucida Sans', 'Helvetica', 'Arial', sans-serif;
	background-color: #f7f7f7;
	position: relative;
	zoom: 1;
	margin: 0px;
	padding: 0px 0px 4px 0px;
} */

.tableHeader {
	border-top-width: 1px;
	border-top-style: solid;
	border-top-color: #c4c4c4;
	width: 100%;
	table-layout: fixed;
	word-wrap: break-word;
}

.tblHCenter {
	font-family: "돋움", Arial;
	font-size: 12px;
	text-align: center;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	border-left-width: 1px;
	border-left-style: solid;
	border-left-color: #c4c4c4;
	background-repeat: repeat-x;
	background-position: bottom;
	padding: 1px;
}

.tblHCenterS {
	font-family: "돋움", Arial;
	font-size: 12px;
	background-repeat: repeat-x;
	background-position: bottom;
	text-align: center;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	padding: 1px;
}

.tblHLeft {
	font-family: "돋움", Arial;
	font-size: 12px;
	background-repeat: repeat-x;
	background-position: bottom;
	text-align: left;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	border-left-width: 1px;
	border-left-style: solid;
	border-left-color: #c4c4c4;
	padding: 1px;
}

.tblHLeft1 {
	font-family: "돋움", Arial;
	font-size: 12px;
	background-color: #d3e0f2;
	background-repeat: repeat-x;
	background-position: bottom;
	text-align: left;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	border-left-width: 1px;
	border-left-style: solid;
	border-left-color: #c4c4c4;
	padding: 1px;
}

.tblHLeftS {
	font-family: "돋움", Arial;
	font-size: 12px;
	background-repeat: repeat-x;
	background-position: bottom;
	text-align: left;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	padding: 1px;
}

.tblHLeftS1 {
	font-family: "돋움", Arial;
	font-size: 12px;
	background-color: #d3e0f2;
	background-repeat: repeat-x;
	background-position: bottom;
	text-align: left;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	padding: 1px;
}

.tblHRight {
	font-family: "돋움", Arial;
	font-size: 12px;
	background-repeat: repeat-x;
	background-position: bottom;
	text-align: right;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	border-left-width: 1px;
	border-left-style: solid;
	border-left-color: #c4c4c4;
	padding: 1px;
}

.tblHRightS {
	font-family: "돋움", Arial;
	font-size: 12px;
	background-repeat: repeat-x;
	background-position: bottom;
	text-align: right;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	padding: 1px;
}

.tblBLeft {
	font-family: "돋움", Arial;
	font-size: 12px;
	color: #494949;
	text-align: left;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	border-left-width: 1px;
	border-left-style: solid;
	border-left-color: #c4c4c4;
	padding: 1px;
}

.tblBLeft1 {
	font-family: "돋움", Arial;
	font-size: 12px;
	color: #494949;
	background-color: #f8f8f8;
	text-align: left;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	border-left-width: 1px;
	border-left-style: solid;
	border-left-color: #c4c4c4;
	padding: 1px;
}

.tableBody {
	width: 100%;
}

.tableBodyNH {
	width: 100%;
}

.tblBLeftS {
	font-family: "돋움", Arial;
	font-size: 12px;
	color: #494949;
	text-align: left;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	padding: 1px;
}

.tblBCenter {
	font-family: "돋움", Arial;
	font-size: 12px;
	color: #494949;
	text-align: center;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	border-left-width: 1px;
	border-left-style: solid;
	border-left-color: #c4c4c4;
	padding: 1px;
}

.tblBCenterS {
	font-family: "돋움", Arial;
	font-size: 12px;
	color: #494949;
	text-align: center;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	padding: 1px;
}

.tblBCenter1 {
	font-family: "돋움", Arial;
	font-size: 12px;
	color: #494949;
	text-align: center;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	border-left-width: 1px;
	border-left-style: solid;
	border-left-color: #c4c4c4;
	padding: 1px;
	background-color: #f8f8f8
}

.tblBCenterS1 {
	font-family: "돋움", Arial;
	font-size: 12px;
	color: #494949;
	text-align: center;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	padding: 1px;
	background-color: #f8f8f8
}

.tblBRight {
	font-family: "돋움", Arial;
	font-size: 12px;
	color: #494949;
	text-align: right;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	border-left-width: 1px;
	border-left-style: solid;
	border-left-color: #c4c4c4;
	padding: 1px;
}

.tblBRightS {
	font-family: "돋움", Arial;
	font-size: 12px;
	color: #494949;
	text-align: right;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
	padding: 1px;
}

.contentOption {
	font-family: "돋움", Arial;
	font-size: 12px;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #c4c4c4;
}

.inpSelect {
	font-family: "돋움", Dotum, Arial;
	font-size: 9pt;
	color: #494949;
}

.inpCheck {
	border-width: 0px;
}

.baseTable {
	width: 100%;
	vertical-align: top;
}

.lblText {
	font-family: "돋움", Arial;
	font-size: 12px;
	color: #2b569f;
	width: 100%;
	height: 21px;
	padding-right: 1px;
	padding-left: 1px;
	border: 0px solid #718db5;
	padding-top: 1px;
}

.tblTrColor {
	background-color: #f8f8f8;
}

.inpText1 {
	font-family: "돋움", Arial;
	font-size: 12px;
	color: #494949;
	background-color: #FFFFFF;
	width: 100%;
	border: 1px solid #D9D9D9;
	padding-right: 1px;
	padding-left: 1px;
}

.lblText1 {
	font-family: "돋움", Arial;
	font-size: 12px;
	color: #494949;
	background-color: #FFFFFF;
	width: 100%;
	border: 0px solid #D9D9D9;
	padding-right: 1px;
	padding-left: 1px;
}

.mntable {
	background-color: #273e66;
	width: 100%;
}

.trMouseOver {
	background-color: #fff3d2;
}

.page {
	font-family: "돋움", Arial;
	font-size: 12px;
	color: #7D7D7D;
}

.pageSelected {
	font-family: "돋움", Arial;
	font-size: 12px;
	color: #494949;
	font-weight: bold;
}

.footerCss {
	background-color: #e8f0fb;
}

#menuTreeDiv li {
	margin: 0px 0px 0px 18px;
}

#tabs li {
	margin: 0px;
}

.containerTb {
	width: 100%;
}

.ep-s-inpreq {
	
}

.ep-s-inpreq:before {
	content: "*";
	color: red;
	font-weight: bold;
	padding-right: 3px;
}


/* 로그인 시간 연장 팝업 */

.ep-s-popwrap {
	width: 100%;
}

.ep-s-popwrap .ep-s-dlgtitle {
	padding-left: 15px;
	font-size: 18px;
	color: #333;
	font-weight: 600;
	margin-bottom: 15px
}

.ep-s-popwrap .ep-s-dlgcontent {
	padding: 30px
}

.ep-s-popwrap .ep-s-dlgcontenthead {
  margin-bottom:16px
}

.ep-s-popwrap .ep-s-infoarea {
	position: relative;
	border: 5px solid #e4e3e3;
	padding: 30px;
	font-size: 14px;
	line-height: 22px
}


.ep-s-popwrap span.rtxt {
	color: #e64b40
}

.ep-s-popwrap .ep-s-btncenter {
	width: 100%;
	text-align: center;
	margin-top: 20px
}

.ep-s-popwrap a.ep-s-btnblue {
	display: inline-block;
	width: 100px;
	height: 36px;
	line-height: 36px;
	border-radius: 3px;
	background: #0f78b4;
	text-align: center;
	font-size: 14px;
	color: #fff;
	font-weight: 600;
	text-decoration: none
}

.ep-s-popwrap a.ep-s-btnwhite {
	display: inline-block;
	width: 98px;
	height: 34px;
	line-height: 34px;
	border-radius: 3px;
	background: #fff;
	border: 1px solid #0f78b4;
	text-align: center;
	font-size: 14px;
	color: #0973af;
	font-weight: 600;
	text-decoration: none
}

.ep-s-dlgnotitle .ui-dialog-titlebar {
	display:none;
}</style>
<style media="all" data-href="/eXPortal/css/portal-admin-style.css">/*# sourceURL=/eXPortal/css/portal-admin-style.css */
/*@ sourceURL=/eXPortal/css/portal-admin-style.css */
@CHARSET "utf-8";
/* base style */
* {
  margin: 0;
  padding: 0;
}
html {
  height:100%;
}
body {
  font-size: 0.75em;
  background: rgb(255, 255, 255);
  font-family: '돋움', Dotum, Arial, verdana, "times New Roman", sans-serif;
  font-weight: normal;
  font-size: 12px;
  color: #666;
  height:100%;
}
a {
  text-decoration: none;
  cursor: pointer;
}
h1 {
  margin: 0.6em 0px 0px;
  font-size: 1.2em;
}
h2 {
  font-size: 1.1em;
}
h3 {
  margin: 0.4em 0px 0px;
  font-size: 1em;
}
h4 {
  margin: 0.3em 0px 0px;
  font-size: 0.9em;
}
h5 {
  margin: 0.2em 0px 0px;
  font-size: 0.8em;
}
h6 {
  margin: 0.1em 0px 0px;
  font-size: 0.7em;
}
label {
}
textarea, select, input {
  border: 1px solid #ddd;
  font-size: 1em;
  color: #666;
  background: #FFFFFF;
  /*  -webkit-box-sizing: content-box; /* Safari/Chrome, other WebKit 
  -moz-box-sizing: content-box;  /* Firefox, other Gecko 
  box-sizing: content-box;     /* Opera/IE 8+ */
  -webkit-box-sizing: border-box; /* Safari/Chrome, other WebKit */
  -moz-box-sizing: border-box;  /* Firefox, other Gecko */
  box-sizing: border-box;
  vertical-align: middle;
}
input, textarea {
  padding: 2px 2px 2px 3px;/*text-indent:2px;*/
}
textarea {
  margin: 3px 0;
}
select {
  padding: 2px 2px 2px 0;
}
input[type='checkbox'], input[type='radio'] {
  border: 0;
  background-color: transparent !important;
}
input[type='text'], input[type='password'] {
  background: #FFFFFF;
  height: 22px;
}
input[type='button'] {
}
img {
  border-width: 0px;
}
table {
  padding: 0px;
  border-spacing: 0px;
}

/* 관리콘솔 전체화면 상단 메뉴 아래 전체 컨텐츠 스타일 */
.ep-bl.ep-page-body {
  position:absolute;
  top:96px;
  bottom:0px;
  left:0px;
  right:0px;
}

.ep-bl.ep-page-body-Lmenu {
  bottom:0px;
  left:0px;
  right:0px;
  position:absolute;
  top:96px;
}

/* portlet block */
.mod {
  border: 1px solid #ccc;
}

/* portlet header */
.portlet-header {
  width: 100%;
  height: 32px;
  /* background: #2f6bba; */
  color: #fff;
  vertical-align: middle;
}
/* .portlet-header .portlet-title {
  float: left;
  padding: 7px 20px 0 20px;
  font-size: 1em;
} */
.portlet-icon-adm {
  float: right;
  padding: 8px 20px 0 20px;
}

/* portlet body */
.portlet-body {
  border: 0;
}

/* section */
.ep-section {
  clear: both;
  display: table;
  width: 100%;
  table-layout:fixed;
}
.ep-rowsection {
  clear: both;
  display: table-row;
}
.ep-subsection {
  clear: both;
  display: table-cell;
  vertical-align: top;
}
.ep-sec-dotline {
  border: 0;
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/dotline.gif") 0 50% repeat-x;
  height: 35px;
}
.ep-canvas {
  padding: 15px;
  background: #f9f9f9;
}
.ep-canvas > div {
  background: #ffffff;
}

/* block */
.ep-bl {
  clear: both;
  width: 100%;
  display: block;
  position: relative;
}
.ep-bl-head {
  clear: both;
  width: 100%;
  display: block;
  height: 26px;
}
.ep-bl-head-ttl {
  float: left;
  display: inline-block;
  line-height:16px;
  overflow: hidden;
  white-space: nowrap;
  word-break: break-all;
}
.ep-subsection.ep-group.ep-right-detail {
  padding: 0;
  padding-left: 30px;
}
.ep-bl-head-ttl h3 {
  color: #456fc2;
  font-size: 1em;
  padding-top: 5px;
}
.ep-bl-head-ttl h4 {
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/tit_icon_4th.gif") 0 4px no-repeat;
  font-size: 1em;
  padding-left: 8px;
}

.ep-bl-head-ttl h4.noimage {
  background-image: none;
}

.ep-bl-head-ttl h5 {
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/tit_icon_5th.gif") 0 6px no-repeat;
  font-size: 1em;
  padding-left: 8px;
}
.ep-bl.ep-div-dot {
  border-top: 1px dashed #e1e1e1;
  margin-top: 20px;
  padding: 10px 0;
}
.ep-bl-head-btns {
  float: right;
  display:inline;
  text-align:right;
}
.ep-bl-head-btns ul {
  float: right;
}
.ep-bl-head-btns ul li {
  float:left;
  list-style-type: none;
}
.ep-bl-head-btns li input {
  margin-right: 5px;
}
.ep-bl-body {
  clear: both;
  width: 100%;
  display: block;
}
.ep-bl-bodyin {
  padding: 15px;
}

/* page style */
.ep-content-out {
}
.ep-content {
  padding: 20px;
}
.ep-head-out {
}
.ep-head {
}
.ep-seekhead-out { /* 검색 조건이 있는 Header 외부 */
}
.ep-seekhead { /* 검색 조건이 있는 Header 부 */
  border: 1px solid #c1daf6;
  background: #deedfd;
  padding: 5px 8px 5px 10px;
  color: #666;
}
.ep-subhead-out {
}
.ep-seekhead div.ep-head-conds ul li label {
  vertical-align: middle;
  height: 26px;
  vertical-align: -1px
}
.ep-subhead {
  padding-top: 8px;
}
.ep-head-conds {
  float: left;
}
.ep-head-conds ul {
  float: left;
}
.ep-head-conds ul li {
  float: left;
  padding-right: 10px;
  list-style-type: none;
  line-height: 26px;
}
.ep-head-count {
  float: right;
  padding-top: 5px;
}
.ep-head-count ul {
  float: right;
}
.ep-head-count ul li {
  float: left;
  padding-left: 3px;
  list-style-type: none;
}
.ep-head-btns {
  float: right;
}
.ep-head-btns ul {
  float: right;
}
.ep-head-btns ul li {
  float: left;
  padding-left: 3px;
  list-style-type: none;
}
.ep-group-out { /* 화면중 컨텐츠 그룹 외부 */
  margin-top: 10px;
}
.ep-group { /* 화면중 컨텐츠 그룹 */
}
.ep-body-out {
  margin-top: 5px;
}
.ep-body {
  border: 0;
  padding-top: 5px;
}
.ep-left-list { /* 좌측 목록 화면 */
  padding-right: 10px;
}
.ep-right-detail { /* 우측 세부 화면 */
  padding-left: 10px;
}
.ep-section-ttl {
  border-bottom: 2px solid #8bb2df;
  width: 100%;
  padding-bottom: 5px;
  line-height: 17px;
}

/* Page Index block */
.ep-stl-pageidx-out {
  margin-top: 10px;
}
.ep-stl-pageidx {
  clear: both;
  width: 100%;
  text-align: center;
}
.ep-stl-pageidx {
  padding: 10px 0 0 0;
  text-align: center;
  line-height: 1.25em
}
.ep-stl-pageidx a {
  margin-right:0.5em;
}
.ep-stl-pageidx * {
  display: inline-block;
  vertical-align: top
}
.ep-stl-pageidx .pages {
  padding: 0 0.5em
}
.ep-stl-pageidx a, .ep-stl-pageidx strong {
  min-width: 1.8em;
  min-height: 1.5em;
  padding: 0.3em 0.1em 0.1em 0.1em;
  background-color: #fff;
  font-weight: bold;
  color: #666;
}
.ep-stl-pageidx a span, .ep-stl-pageidx strong span {
  position: absolute;
  top: -999em;
  height: 1px;
  overflow: hidden;
}
.ep-stl-pageidx a:hover {
  background: #e6e6e5;
  text-decoration: none;
  color: #3777c7;
}
.ep-stl-pageidx strong {
  background-color: #3777c7;
  color: #fff
}
.ep-stl-pageidx a.first, .ep-stl-pageidx a.last, .ep-stl-pageidx a.prev, .ep-stl-pageidx a.next {
  background: #fff url("https://portal.hywoman.ac.kr/eXPortal/css/../images/paginate.gif") 0 0 no-repeat;
  border: 1px solid #e8e8e8;
}
.ep-stl-pageidx a:hover.first, .ep-stl-pageidx a:hover.last, .ep-stl-pageidx a:hover.prev, .ep-stl-pageidx a:hover.next {
  background: #fff url("https://portal.hywoman.ac.kr/eXPortal/css/../images/paginate_hover.gif") 0 0 no-repeat;
  border: 1px solid #93b8dd;
}
.ep-stl-pageidx a.first, .ep-stl-pageidx a:hover.first {
  background-position: 7px 50%
}
.ep-stl-pageidx a.last, .ep-stl-pageidx a:hover.last {
  background-position: -82px 50%
}
.ep-stl-pageidx a.prev, .ep-stl-pageidx a:hover.prev {
  background-position: -23px 50%
}
.ep-stl-pageidx a.next, .ep-stl-pageidx a:hover.next {
  background-position: -54px 50%
}

/* table style */
/* List Table Block */
.ep-bl-tbllist-head {
  clear: both;
  display: block;
  width: 100%;
  background: #f9f9f9;
  border-bottom: 1px solid #dcdcdc;
  border-left: 1px solid #dcdcdc;
  border-right: 1px solid #dcdcdc;
}
.ep-bl-tbllist {
  clear: both;
  overflow-y: scroll;
  display: block;
  width: 100%;
  border-bottom: 1px solid #dcdcdc;
  border-left: 1px solid #dcdcdc;
  border-right: 1px solid #dcdcdc;
}

/* List Table Style */
.ep-stl-tbllist-head { /* table에 부여 */
  width: 100%;
  border-top: 2px solid #666;
  table-layout:fixed;
}
.ep-stl-tbllist-head th {
  text-align: center;
  padding: 2px 5px;
  height: 28px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow:ellipsis;
}
.ep-stl-tbllist {
  width: 100%;
  table-layout:fixed;
}
.ep-stl-tbllist tr:nth-child(even) { /* 짝수줄 스타일 IE9 이상에서만 지원 */
  background-color: #f9f9f9;
}
.ep-stl-tbllist tr:nth-child(odd) { /* 홀수줄 스타일 IE9 이상에서만 지원 */
  background-color: #fff;
}
.ep-stl-tbllist tr:hover { /* Table에 Mouse Over Style */
  background-color: #effbff;
  cursor:pointer;
}
.ep-stl-tbllist td {
  padding: 2px 5px;
  height: 28px;
  border-bottom: 1px solid #dddddd;
  border-left: 1px solid #dddddd;
  border-top: 0px;
  border-right: 0px;

  word-break:break-all;
  white-space:nowrap;
  overflow:hidden;
  text-overflow:ellipsis;
}
.ep-stl-tbllist td:first-child {
  border-left: none;
}

/* Edit Table */
.ep-bl-tbledit {
  clear: both;
  display: block;
  width: 100%;
}
.ep-stl-tbledit {
  width: 100%;
  border-top: 2px solid #666;
  border-right: 1px solid #dddddd;
}

.ep-stl-tbledit-fixed {
  table-layout:fixed;
}

.ep-stl-tbledit th {
  text-align: right;
  padding: 2px 5px;
  height: 24px;  
  border-bottom: 1px solid #dddddd;
  border-left: 1px solid #dddddd;
  background: #f9f9f9;
}
.ep-stl-tbledit td {
  text-align: left;
  padding: 2px 5px;
  height: 28px;
  border-bottom: 1px solid #dddddd;
  border-left: 1px solid #dddddd;
  word-break:break-all;
  white-space:nowrap;
  overflow:hidden;
  text-overflow:ellipsis;
}
.ep-stl-tbledit ul li {
  float: left;
  padding-left: 2px;
  list-style-type: none;
}
.ep-stl-tbledit ul li label {
  vertical-align: text-bottom;
  line-height: 1.3em;
}
.ep-stl-tbledit ul li input {
  float: left;
  margin-right: 5px;
}

/* Inner List Table */
.ep-bl-inntbllist-head {
  clear: both;
  display: block;
  width: 100%;
  background: #f9f9f9;
}
.ep-stl-inntbllist-head {
  width: 100%;
}
.ep-stl-inntbllist-head th {
  text-align: center;
  padding: 2px 5px;
  height: 28px;
  border-top: 1px solid #dcdcdc;
  border-left: 0px;
  border-right: 0px;
  border-bottom: 0px;
}
.ep-bl-inntbllist {
  clear: both;
  overflow-y: scroll;
  display: block;
  width: 100%;
}
.ep-stl-inntbllist {
  width: 100%;
}

/* Table List Height Style */
.ep-stl-tbllist-size1 {
  height: 250px;
}
.ep-stl-tbllist-size2 {
  height: 230px;
}
.ep-stl-subtbllist-size1 {
  height: 150px;
}
.ep-stl-subtbllist-size2 {
  height: 130px;
}
.ep-stl-inntbllist-size1 {
  height: 150px;
}
.ep-stl-inntbllist-size2 {
  height: 130px;
}

/* Wide width Control */
.ep-widectl {
  width: 100%;
}

/* text align */
/* 가변길이 Text Align */
.ep-txtval {
  text-align: left !important;
}
/* 고정길이 Text Align */
.ep-txtfix {
  text-align: center !important;
}
/* 숫자 Text Align */
.ep-txtnum {
  text-align: center !important;
}

/* Buttons */
/* 검색 버튼 스타일 */
.ep-btnsearch {
  height: 26px;
  line-height: 26px;
  position: relative;
  display: inline-block;
  text-decoration: none !important;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  border: 1px solid #97b9e5;
  white-space: nowrap;
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_searchbg.png") repeat-x;
  vertical-align: middle;
  overflow: visible;
  color: #456fc2;
  font-weight: bold;
  padding: 0px 11px 0px 11px;
  background-position: left bottom;
  cursor: pointer;
}
.ep-btnsearch:hover {
  background: #b6d1ee;
}
/* 화면의 메인 버튼 스타일 */
.ep-btnmain {
  height: 26px;
  line-height: 26px;
  position: relative;
  display: inline-block;
  text-decoration: none !important;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  border: 1px solid #b9b9b9;
  white-space: nowrap;
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_mainbg.png") repeat-x;
  vertical-align: middle;
  overflow: visible;
  color: #363636;
  padding: 0px 11px 0px 11px;
  background-position: left bottom;
  cursor: pointer;
}
.ep-btnmain:hover {
  background: #e9e7e7;
  border-color: #d1d1d1;
}

/* 화면내의 서브 버튼 스타일 */
.ep-btnsub {
}
.ep-btnsub:hover {
}

/* 테이블 등 구성요소 내의 버튼 스타일 */
.ep-btninner {
  height: 22px;
  line-height: 22px;
  position: relative;
  display: inline-block;
  text-decoration: none !important;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  border: 1px solid #b9b9b9;
  white-space: nowrap;
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_subbg.png") repeat-x;
  vertical-align: middle;
  overflow: visible;
  color: #666;
  padding: 0px 11px 0px 11px;
  background-position: left top;
  cursor: pointer;
}
.ep-btninner:hover {
  background: #e9e7e7;
  border-color: #d1d1d1;
}

/* tree의 expand, collapse button */
.ep-btnexpand {
}
.ep-btncollapse {
}

/* table의 add, remove button */
.ep-btnadd, .ep-btnremove, .ep-btnsave, .ep-btnpreview {
  cursor: pointer;
  overflow: visible;
  width: 23px;
  padding: 0;
  height: 22px;
  border: 0;
}
.ep-btnadd {
  background: #f4f4f4 url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_add.gif") 0 0 no-repeat;
}
.ep-btnadd:hover {
  background: #f4f4f4 url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_add_hover.gif") 0 0 no-repeat;
}
.ep-btnpreview {
  background: #f4f4f4 url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_preview.png") 0 0 no-repeat;
}
.ep-btnpreview:hover {
  background: #f4f4f4 url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_preview.png") 0 0 no-repeat;
}
.ep-btnremove {
  background: #f4f4f4 url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_minus.gif") 0 0 no-repeat;
}
.ep-btnremove:hover {
  background: #f4f4f4 url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_minus_hover.gif") 0 0 no-repeat;
}
.ep-btnsave {
  background: #f4f4f4 url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_save.gif") 0 0 no-repeat;
}
.ep-btnsave:hover {
  background: #f4f4f4 url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_save_hover.gif") 0 0 no-repeat;
}
.ep-btnadd-small, .ep-btnremove-small {
  cursor: pointer;
  overflow: visible;
  width: 14px;
  padding: 0;
  height: 14px;
  border: 0;
}
.ep-btnadd-small {
  background: #f4f4f4 url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_addsmall.gif") 0 0 no-repeat;
}
.ep-btnadd-small:hover {
  background: #f4f4f4 url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_addsmall_hover.gif") 0 0 no-repeat;
}
.ep-btnremove-small {
  background: #f4f4f4 url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_minussmall.gif") 0 0 no-repeat;
}
.ep-btnremove-small:hover {
  background: #f4f4f4 url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_minussmall_hover.gif") 0 0 no-repeat;
}

/* Tabs */
ul.ep-tabs {
  border-bottom: 1px solid #96b9e0;
  display: block;/*  min-width: 310px;*/
}
ul.ep-tabs:before, ul.ep-tabs:after {
  content: " ";
  display: table;
  clear: both;
}
li.ep-tab {
  float: left;
  position: relative;
  display: block;
  list-style-type: none;
  padding-left: 3px;
  font-weight: bold;
  margin-bottom: -1px;
}
.ep-tabbody {
  padding: 15px 0;
}
ul.ep-tabs li:first-child {
  padding-left: 0;
}
li.ep-tab.select a {
  color: #456fc2;
  background: #fff;
  display: block;
  padding: 9px 15px 7px 15px;
  border: 1px solid #bbb;
  border-top: 2px solid #bbb;
  border-color: #96b9e0 #96b9e0 #96b9e0 #96b9e0;
  border-bottom-color: transparent;
}
li.ep-tab.deselect a {
  background: #f9f9f9;
  color: #888;
  display: block;
  padding: 10px 15px 7px 15px;
  border: 1px solid transparent;
  border-color: #dbdbdb #dbdbdb #96b9e0 #dbdbdb;
}
li.ep-tab.deselect a:hover {
  background: #fff;
  color: #456fc2;
  border: 1px solid transparent;
  border-color: #96b9e0 #96b9e0 #96b9e0 #96b9e0;
}

/* 네비게이션 스타일 */
.ep-head-conds ul.logo {
  padding: 15px 0 5px 15px;
}
.ep-tnbmenu-out {
  background: #252525;
}
.ep-tnbmenu {
  height: 50px;
  border-bottom: 1px solid #00;
  color: #b7b7b7;
}

.ep-tnbmenu div.ep-head-btns ul li {
  margin-top:22px;
  padding: 0 15px 0 15px;
  font-size: 11px;
  background:url("https://portal.hywoman.ac.kr/eXPortal/css/../images/tnb_div.gif") right top no-repeat;  
}
.ep-tnbmenu div.ep-head-btns b {
  color: #fff;
}
.ep-tnbmenu div.ep-head-btns ul a {
  color: #b7b7b7 
}
.ep-tnbmenu div.ep-head-btns ul a:hover {
  color: #8c8c8c;
}
.ep-gnbmenu {
  height: 39px;
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/bg_gnb.gif") repeat-x;
}
.ep-gnbmenu ul {

}
.ep-gnbmenu ul a {
  color: #555;
}
.ep-gnbmenu ul a:hover {
  color: #3878cc;
}
.ep-gnbmenu ul li.select{
  background:#d0d0d0;
  border-right: 1px solid #c0c0c0;
}
.ep-gnbmenu ul li.select a{
  color: #3878cc;
}
.ep-gnbmenu ul li {
  list-style: none;
  float: left;
  font-weight: bold;
  padding: 13px 25px 11px 25px;
  border-right: 1px solid #cfcfcd;
  border-left: 1px solid #f7f7f7;
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/bg_gnb.gif") repeat-x;
}
.ep-gnbmenu ul li.ep-gnbmenu-first {
  padding: 13px 25px 11px 14px;
}
.ep-gnbmenu ul li.ep-gnbmenu-last {
  
}

.ep-lnbmenu {
  background: #eee; 
  border-right: 1px solid #dcdcdc;
}
.ep-lnb-head-ttl {
  background: #555 url("https://portal.hywoman.ac.kr/eXPortal/css/../images/bg_lbntop.gif") repeat-x;
  height: 20px;
  color: #fff;
  margin: 0;
  padding:18px 15px 10px 15px;
  font-size:1.2em;
}
.ep-lnb-ttl div.ep-head-btns ul {
  padding: 6px;
}
.ep-lnb {
  float: left;
  width: 212px;
  list-style: none;
  margin: 0;
  padding: 0;
  border-top:1px solid #d9d9d9;
}
.ep-lnb li a.ep-folder {
  display: block;
  padding: 10px 30px 10px 15px;
  border-bottom: 1px solid #d9d9d9;
  text-decoration: none;
  color: #666;
}
.ep-lnb li a.ep-folder.close { /* inactive close */
  background: #eee url("https://portal.hywoman.ac.kr/eXPortal/css/../images/lnbmenu.gif") 95% 50% no-repeat;
}
.ep-lnb li a.ep-folder.open { /* inactive open */
  background: #eee url("https://portal.hywoman.ac.kr/eXPortal/css/../images/lnbmenu_close.gif") 95% 50% no-repeat;
}
.ep-lnb li a.ep-folder.active { /* inactive open */
  list-style: none;
  font-weight: bold;
  color: #3878cc;
}
.ep-lnb li a.ep-folder.active.close {
  background: #dfdfdf url("https://portal.hywoman.ac.kr/eXPortal/css/../images/lnbmenu_hover.gif") 95% 50% no-repeat;
}
.ep-lnb li a.ep-folder.active.open {
  background: #dfdfdf url("https://portal.hywoman.ac.kr/eXPortal/css/../images/lnbmenu_hover_close.gif") 95% 50% no-repeat;
}
.ep-lnb li a.ep-leaf {
  display: block;
  padding: 6px 25px;
  font-weight: normal;
  background: #f9f9f9 url("https://portal.hywoman.ac.kr/eXPortal/css/../images/lnbmenu_sub.gif") 17px 10px no-repeat;
  border-bottom: 0;
  text-decoration: none;
  color: #666;
}
.ep-lnb li a.ep-leaf.active {
  padding: 6px 25px;
  font-weight: bold;
  background: #f9f9f9 url("https://portal.hywoman.ac.kr/eXPortal/css/../images/lnbmenu_sub_hover.gif") 17px 10px no-repeat;
  color: #3878cc;
}
.ep-lnb li ul.ep-submenu {
  margin: 0;
  padding: 10px 0;
  background: #f9f9f9;
  display: none;
}

/* 컨텐츠 Column 스타일 */
.ep-onecol {
  padding:20px 15px 15px 0;
}
.ep-onecol-body{
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/bg_contstop.gif") 0 top repeat-x;
}
.ep-twocol-first {
  padding-right: 10px;
}
.ep-twocol-second {
  padding-left: 10px;
}

/* tree 스타일 */
.ep-bl-tree-head {
  clear: both;
  width: 100%;
  display: block;
  height: 30px;
  background: #e8e8e8;
}
.ep-bl-tree-head .ep-bl-head-btns ul {
  padding-top:4px;
}
.ep-bl-tree {
  background: #f9f9f9;
}
.ep-bl-tree-list {
  padding:15px;
}
.ep-stl-tbledit .ep-bl-tree-list ul li {
  clear:both;
  padding:0;
}


/** MESSAGE STYLE **/
/* 조회된 결과를 찾을 수 없습니다. */
.ep-txt-notfound {
  font-weight: bold;
  text-align: center !important;
}

/*
 * 날짜 타입
 * 스타일 우선 순위에 맞게 배치
 */
.ep-s-anniversary .ui-state-default {
  color:#000000;
  font-weight:bold;
}
.ep-s-saturday .ui-state-default {
  color:#0000ff;
  font-weight:bold;
}
.ep-s-sunday .ui-state-default {
  color:#ff0000;
  font-weight:bold;
}
.ep-s-holiday .ui-state-default {
  color:#ff0000;
}
.ep-s-inpreq {
}
.ep-s-inpreq:before {
  content: "*";
  color: red;
  font-weight: bold;
  padding-right: 3px;
}

/* 빈 통계 화면 */
.ep-s-emptydiv {
  background-color: rgb(254, 252, 245);
  border-color: rgb(152, 152, 152);
  border-width: 2px;
  border-style: solid;
}

.ep-s-emptydiv div {
  text-align: center;
  padding-top: 130px;
  font-size: 13px;
}

.ep-main-statistic {
	padding-bottom:20px;
}

.ep-s-portletsizeipt input {
	width: 25px;
}

.ep-s-portletsizeipt .ep-s-portletsizelabel {
  padding-top: 3px;
}


/* UI 포틀릿 설정 */
.ep-pagelayout.ep-pagelayout-pcc {
  margin: 0px;
  padding: 0px;
  height: 100%;
  overflow-y: hidden;
  border: 0px;
}

.ep-pagelayout {
  margin: 0 20px;
  padding: 0 30px 0 30px;
  height: 390px;
  overflow-y: auto;
  overflow-x: hidden;
  border: 1px solid #ccc;
  background: #fff
}

.ep-pagelayout .ep-portlettitle {
  position: absolute;
  top: 42%;
  left: 0px;
  width: 100%;
  text-align: center;
  font-weight: 600
}

.ep-pagelayout .grid-stack-item-content:hover {
  background: #edf4fb;
  border: 1px solid #62a8ff;
}

.ep-pagelayout .grid-stack-item-content span {
  font-size: 20px;
}

.ep-pagelayout .ep-btnremove {
  position: absolute;
  top: 5px;
  right: 5px;
}

.ep-pagelayout .ep-btnpreview {
  position: absolute;
  top: 5px;
  right: 35px;
}

.ep-portletlistarea {
  width: 280px;
  padding-left: 9px
}

.ep-portletlist {
  padding-right: 5px;
  height: 350px;
  width: 271px;
  overflow-y: scroll;
  overflow-x: hidden
}

.ep-portletlist .grid-stack-item {
  height: 26px;
  padding: 6px 10px 0 14px;
  border-bottom: 1px solid #ececec
}

.ep-portletlist .grid-stack-item:last-child {
  border-bottom: none
}

.ep-portletlist .ep-portlettitle {
  float: left;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  width: 160px;
  padding-top: 5px;
}

.ep-portletlist .ep-portletbtns {
  float: right;
}

.ep-portlet-lock {
  position: absolute;
  left: 0px;
}

.ep-head-btns ul li {
  float: left;
  padding-left: 5px;
  list-style-type: none
}

.ep-portletlist .ep-head-btns {
  width: 100%;
  float: left;
}

.ep-portletlist .ep-head-btns ul {
  width: 100%;
}

.ep-pagelayout .grid-stack {
  margin: 30px 0;
}

.ep-pagelayout .grid-stack-item-content {
  min-height: 30px;
  overflow: hidden;
  color: #737577;
  border: 1px solid #bbbcbf;
  -moz-box-shadow: 0 0 6px rgba(0, 0, 0, 0.15);
  -webkit-box-shadow: 0 0 6px rgba(0, 0, 0, 0.15);
  box-shadow: 0 0 6px rgba(0, 0, 0, 0.15);
  background-color: #ebedee;
  position: relative;
  zoom: 1;
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
  margin: 0px;
  padding: 6px 6px 4px 5px;
}

.ep-btnaddportlet, .ep-btnpreviewportlet {
  cursor: pointer;
  overflow: visible;
  width: 20px;
  padding: 0;
  height: 20px;
  border: 0
}

.ep-btnaddportlet {
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_add2.png") 0 0 no-repeat
}

.ep-btnaddportlet:hover {
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_add2_hover.png") 0 0 no-repeat
}

.ep-portletlist .ep-btnpreviewportlet {
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_preview2.png") 0 0 no-repeat
}

.ep-portletlist .ep-btnpreviewportlet:hover {
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_preview2_hover.png") 0 0 no-repeat
}

.ep-btnremoveportlet, .ep-pagelayout .ep-btnportletpreview {
  cursor: pointer;
  overflow: visible;
  width: 12px;
  padding: 0;
  height: 12px;
  border: 0
}

.ep-btnremoveportlet {
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_minus2.png") 0 0 no-repeat
}

.ep-btnremoveportlet:hover {
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_minus2_hover.png") 0 0 no-repeat
}

.ep-pagelayout .ep-btnpreviewportlet {
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_preview3.png") 0 0 no-repeat
}

.ep-pagelayout .ep-btnpreviewportlet:hover {
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_preview3_hover.png") 0 0 no-repeat
}

.ep-handle_new {
  position: absolute;
  bottom: 10px;
  right: 10px;
  cursor: pointer;
  overflow: visible;
  width: 15px;
  padding: 0;
  height: 15px;
  border: 0;
  background: url("https://portal.hywoman.ac.kr/eXPortal/css/../images/btn_handle.png") 0 0 no-repeat
} /* 마우스오버시 핸들버튼 */
.ep-uiarea {
  width: 278px;
  background: #fff;
  border: 1px solid #ccc
}

.ep-uicate {
  background: #eee;
  font-weight: 600;
  height: 100px;
  border-bottom: 1px solid #ccc
}

.grid-stack-btn {
  display: block;
  position: absolute;
  top: 10px;
  right: 10px
}

.ep-portlet-search {
	
}

.ep-portlet-search label {
	font-weight: bold;
}

.ep-portlet-search select {
	width: 100px;
}
/* UI 포틀릿 설정 */
</style>
<style media="all" data-href="/eXPortal/css/portal-sns.css">/*# sourceURL=/eXPortal/css/portal-sns.css */
/*@ sourceURL=/eXPortal/css/portal-sns.css */
@CHARSET "UTF-8";
/* Portal sns */

.ep-content-out-fixed {
  table-layout:fixed;
}

/* 카카오스토리 */
.kakao-logo-background {
  background-color:#eb624b;
}

.kakao-logo {
  margin-left:20px; 
  border:0px;
  padding:0px;
}

.kakao-user-profile {
  padding:0px; 
  margin:0px;
  background-repeat:no-repeat;
  background-size:100%;
}

.kakao-write-story-btn {
  text-align: right;
  padding-right : 10px;
}

.kakao-write-story-btn button{
  margin-top:5px; 
  margin-right:10px;
}

.kakao-user-img {
  font-weight:bold; 
  color:#fff
}

.kakao-user-img img{
  height:100px; 
  width:100px; 
  padding-left:10px; 
  padding-top:10px;
}

.kakao-user-btn {
  padding-top: 70px; 
  padding-right:10px;
}

.kakao-user-btn ul li{
  background-color:#f7f7f7; 
  width:80px;
}

.kakao-user-btn ul li a {
  border:0px;
}

.kakao-user-btn ul li label {
  font-weight:bold; 
  vertical-align:10px;
}

.kakao-story-list {
  overflow-y:auto; 
  height:400px; 
  background-color:#eaeaea
}

.kakao-story-form {
  padding:20px; 
  border:1px solid #cecece; 
  margin:20px; 
  background-color:#fff
}

.kakao-story-content {
  width:100%; 
  text-align:center; 
  padding-top: 20px; 
  margin-top:20px; 
  cursor:pointer;
}

.kaakao-like-user-img {
  width:50px; 
  height:50px; 
  padding:10px;
}

.kaakao-like-default-img {
  width:50px; 
  height:50px; 
  padding:10px;
}

.kaakao-like-img {
  width:30px; 
  height:30px; 
  margin-left:-25px;
}

.kakao-story-comment {
  border-bottom-color:#cecece; 
  border-bottom-style:solid; 
  border-bottom-width:1px;
}

/* 카카오스토리 */

/* 트위터 */
.twitter-logo-background {
  background-color:#FFF
}

.twitter-logo {
  margin:0px;
  padding:0px;
  border:0px;
  padding-left:30px;
  height:30px;
}

.twitter-user-background {
  padding:0px; 
  margin:0px;
  background-repeat:no-repeat;
  background-size:100% 100%;
  overflow-y:auto; 
  height:400px; 
}

.twitter-user-header-background {
  background-color:#fff; 
}

.twitter-user-image {
  background-repeat:no-repeat;
  background-size:100% 100%;
  height:80px;
  width:80px;
  margin-left:30px;
  border:2px solid #fff;
  float:left;
}

.twitter-user-info {
  font-weight:bold;
  width:100%;
  margin-top:20px;
}

.twitter-tweets-count {
  clear:both;
  font-weight:bold;
  width:100%;
  text-align:center;
  margin-left:30px;
}

.twitter-tweet-write-btn {
  width:100px; 
  height:30px; 
  border:0px;
}

.tweet-contents-area {
  padding:20px; 
  border:1px solid #cecece; 
  margin:20px; 
  background-color:#fff
}

.tweet-replay-content {
  width:90%;
  padding-bottom:10px;
  padding-right:0px; 
  padding-left:10px;
}

.tweet-replay-content-btn {
  width:100px; 
  text-align:right; 
  vertical-align:bottom; 
  padding-right:10px; 
  padding-bottom:10px;
}

.tweet-head-btns ul li {
  float: left;
  padding-left: 3px;
  list-style-type: none;
}

.tweet-head-btns ul li:last-child {
  float:right;
  margin-right:35px;
}

/* 페이스북 */
.facebook-logo-background {
  background-color:#FFF
}

.facebook-logo {
  margin:0px;
  padding:0px;
  border:0px;
  margin-left:30px;
  height:30px;
}

.facebook-content-background {
  background-color:#eaeaea;
  overflow-y:auto;
  height:400px;
}

.facebook-disconnect-btn {
  margin-top:5px;
}

.facebook-user-img {
  font-weight:bold; 
  cursor:pointer;
  margin-left:30px;
}

.facebook-user-img img {
  height:100px; 
  width:100px;
}

.facebook-write-post-btn {
  width:55px;
  border:0px; 
}

.facebook-post-form {
  padding:20px; 
  border:1px solid #cecece; 
  margin:20px; 
  background-color:#fff;
}

.facebook-contents {
  width:100%; 
  word-break:break-all;
}

.facebook-commnet-form {
  border-bottom-color:#cecece; 
  border-bottom-style:solid; 
  border-bottom-width:1px;
}

.facebook-commnet-user {
  padding-right:5px; 
  font-weight:bold;
}

.facebook-comment-btn {
  padding-top:10px; 
  text-align:center; 
  padding-bottom:10px; 
  display:none;
}

.facebook-comment-write {
  background-color:#f6f7f8; 
  margin-top:0px;
}

.facebook-comment-write-img {
  padding-bottom: 10px; 
  padding-left:10px;
}

.facebook-comment-write-box {
  vertical-align: middle; 
  padding-bottom: 10px; 
  padding-right:0px; 
  padding-left:0px;
}

.facebook-comment-write-btn {
  vertical-align: middle; 
  padding-right:10px;
}

.facebook-no-content {
  text-align:center; 
  padding-top:20px; 
  font-weight:bold;
}

.facebook-head-btns ul li {
  float: left;
  padding-left: 3px;
  list-style-type: none;
}

.facebook-head-btns ul li:first-child {
  margin-left:25px;
  font-weight:bold;
}
.facebook-head-btns ul li:last-child {
  float:right;
  margin-right:10px;
}

/* 목록형 테이블 */
.ep-stl-tbllist td {
  word-break:break-all;
  white-space:nowrap;
  overflow:hidden;
  text-overflow:ellipsis;
}

</style>
<style media="" data-href="/eXPortal/css/portal.css">/*# sourceURL=/eXPortal/css/portal.css */
/*@ sourceURL=/eXPortal/css/portal.css */
@CHARSET "UTF-8";
/* Portal Common */
.ep_pg, .ep_pg_body, .ep_pg_main, .ep_pg_block, .ep_pg_grid, .ep_pg_play, .list, .item {
  margin: 0;
  padding: 0;
}
.ep_pg {
  margin: auto 0px;
  text-align: left;
  width: auto;
}
.ep_pg_block {
  position: static;
}
.ep_pg .ep_pg_main {
  width: 100%;
  float: right;
  margin-left: -25em;
}
.ep_pg_main .ep_pg_block {
  float: none;
  width: auto;
}
.ep_pg_play li.moving {
  background: #f6f6f6;
  border: 1px solid #afb1b4;
}
.ep_pg_play {
  margin-top: 0px;
}
ul.list {
  margin-top: .5em;
  margin-bottom: .5em;
  margin-left: 0px;
  margin-top: 0px;
  float: left;
}
ul.list2 {
  padding:0px;
  margin-top: .5em;
  margin-bottom: .5em;
  margin-left: 0px;
  margin-top: 0px;
  float: left;
}
/* .ep_pg_play li.item {
  margin-top:10px;
  margin-bottom:10px;
  margin-left:5px;
  margin-right:5px;
  list-style: none;
} */
div.mod {
  position: relative;
  margin: 0px;
  padding-bottom: 1px;
}
div.mod div.portlet-body {
  overflow: hidden;
  height:180px;
}

.mod, .item {
  height: 100%;
  -webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.portlet-header {
  margin: 0;
  padding: 0;
  font-size: 100%;
  display:block;
  cursor: move;
  height : 24px;
}

.portlet-undraggable {
  margin: 0;
  padding: 0;
  font-size: 100%;
  display:block;
  cursor: text!important;
  height : 24px;
}

.portlet-title {
  display:block;
  overflow:hidden;
  white-space:nowrap;
  text-overflow:ellipsis;
  float:left;
  padding-left : 0px;
  padding-right : 0px;
  border-width : 0;
  line-height : 20px;
  vertical-align:middle;
}
.portlet-title-text {
  height : 20px;
  vertical-align:middle;
}
/* .portlet-icon {
  text-align:right;
  float:right;
  overflow:hidden;
  white-space:nowrap;
  text-overflow:ellipsis;
  padding-right : 15px;
  border-width : 0;
  height : 20px;
  position: absolute;
  right: 0px;
} */
/* .portlet-body {
  padding-left: 0px;
  width:100%;
} */

#footer {
  clear: both;
  font-size: smaller;
  text-align: center;
  margin: 0px;
  padding: 4px 0px 4px 0px;
  border-top-width: 0px;
}
#footer2 {
  color: #808080;
  clear: both;
  font-size: smaller;
  text-align: center;
  margin: 0px;
  padding: 10px 10px 10px 10px;
  border-top: 1px solid #e9e9e9;
}
#nav {
  margin:0px;
  padding:0px;
}

.ep-content-portlet {
  padding: 20px;
}

.hGraph ul {
  margin: 0 50px 0 110px;
  padding: 1px 0 0 0;
  border: 1px solid #ddd;
  border-top: 0;
  border-right: 0;
  font-size: 11px;
  font-family: Tahoma, Geneva, sans-serif;
  list-style: none;
}

.hGraph li {
  position: relative;
  margin: 10px 0;
  white-space: nowrap;
  vertical-align: top;
}

.hGraph .gTerm {
  position: absolute;
  width: 60px;
  top: 0;
  left: -110px;
  line-height: 20px;
  text-align: left;
  color: #767676;
  font-weight: bold;
}

.hGraph .gBar {
  position: relative;
  display: inline-block;
  height: 20px;
  border: 1px solid #ccc;
  border-left: 0;
  background: #e9e9e9;
}

.hGraph .gBar span {
  position: absolute;
  width: 40px;
  line-height: 20px;
  top: 0;
  right: -50px;
  color: #767676;
}

.ep-tip {
  background-image:url("https://portal.hywoman.ac.kr/eXPortal/css/../images/question.png");
  background-repeat: no-repeat;
  float: right;
  height: 15px;
  width: 15px;
  margin: 1px 2px 0 5px;
}

.ep-tip-left {
  background-image:url("https://portal.hywoman.ac.kr/eXPortal/css/../images/question.png");
  background-repeat: no-repeat;
  float: left;
  height: 15px;
  width: 15px;
  margin: 1px 2px 0 5px;
}

/* datepicker style */

.ui-datepicker { 
  /* width:165px!important; */ 
  padding:10px 13px!important; 
  /*width: 17em; padding: .2em .2em 0;*/ 
  display: none; 
}

.ui-datepicker.ui-widget-content {
  border: 1px solid #dcdcdc !important;
}

.ui-datepicker th {
  padding: .7em .3em !important;
  text-align: center !important;
  font-weight: bold !important;
  border-top: solid 1px #686868 !important;
}

.bc-s-anniversary .ui-state-default {
  color:#000000;
  font-weight:bold;
}
.bc-s-saturday .ui-state-default {
  color:#0000ff;
  font-weight:bold;
}
.bc-s-sunday .ui-state-default {
  color:#ff0000;
  font-weight:bold;
}
.bc-s-holiday .ui-state-default {
  color:#ff0000;
}
.ui-widget-overlay {
   position: fixed !important;
}</style>
<style media="" data-href="/eXPortal/css/hyw/portal.css">/*# sourceURL=/eXPortal/css/hyw/portal.css */
/*@ sourceURL=/eXPortal/css/hyw/portal.css */
@CHARSET "UTF-8";

/* CSS Document */

/* ------------------------------------------------------------
 * Name      : portal.css
 * Desc      : 한양여자대학교 포털시스템
 * Created   : 2018/03/06 by YSK
 * Updated   : 
------------------------------------------------------------ */

/* Portal Common */
* {margin:0;padding:0}
html,body{height:100%} 
body{font-family:"맑은고딕", Malgun Gothic, "돋움", Dotum, AppleGothic, Sans-serif;font-size:12px;color:#333;-webkit-text-size-adjust:none;-webkit-tap-highlight-color:rgba(0, 0, 0, 0)} 
body,p,h1,h2,h3,h4,h5,h6,menu,ul,ol,li,dl,dt,dd,table,th,td,form,fieldset,legend,input,textarea,button{margin:0;padding:0}
div, p, span, li, table td{word-break:break-all}
.ep_pg, .ep_pg_body, .ep_pg_main, .ep_pg_block, .ep_pg_grid, .ep_pg_play, .list, .item{margin:0;padding:0}
.ep_pg{margin:auto 0px;text-align:left;width:auto}
.ep_pg_block{position:static}
.ep_pg .ep_pg_main{width:100%;float:right;margin-left:0}
.ep_pg_main .ep_pg_block{float:none;width:auto}
.ep_pg_play li.moving{background:#f6f6f6;border:1px solid #afb1b4}
.ep_pg_play{margin-top:0px}
ul.list{float:left;margin-top:0;zoom:1;margin-left:0;margin-right:-1px}
.mod{position:relative;margin:0;padding-bottom:0;height:230px;background:#fff;border:1px solid #d6d6d6;overflow:hidden;margin-bottom:-1px}
.mod div.portlet-body{overflow:hidden;zoom:1}
.portlet-header{position:relative;margin:0;padding:0;font-size:100%;display:block;cursor:move;height:36px}
.portlet-title{float:left;display:block;padding:7px 0 0 16px;font-size:17px;color:#1866a6;vertical-align:middle;font-weight:600}
.portlet-title span.point{color:#44a5b8}
.portlet-title-text{height:20px;vertical-align:middle}
.portlet-icon{position:absolute;right:1px;top:0;z-index:10}
.portlet-body{padding:27px 19px}
#nav{margin:0px;padding:0px}

/* i5 */
@media (min-width:319px) and (max-width:320px){
#grad{margin-top:47px!important; margin-left:-146px!important;}	
#chart01{left:81px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}	

/* 겔 */
@media (min-width:359px) and (max-width:360px){
#grad{margin-top:47px!important; margin-left:-146px!important;}	
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* i678X */
@media (min-width:374px) and (max-width:375px){
#grad{margin-top:47px!important; margin-left:-153px!important;}	
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* LG Optimus */
@media (min-width:383px) and (max-width:384px){	
#chart01{left:112px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* pixel2 */
@media (min-width:410px) and (max-width:411px){
#grad{margin-top:47px!important; margin-left:-146px!important;}	
#chart01{left:125px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* nexus 5x */
@media (min-width:411px) and (max-width:412px){	
#chart01{left:125px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* i678+ */
@media (min-width:413px) and (max-width:414px){
#grad{margin-top:47px!important; margin-left:-146px!important;}	
#chart01{left:127px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

@media (min-width:479px) and (max-width:480px){	
#chart01{left:160px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* blackberry playbook */
@media (min-width:599px) and (max-width:600px){
#grad{margin-top:47px!important; margin-left:-146px!important;}	
#chart01{left:220px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* macrosoft lumia 550 */
@media (min-width:639px) and (max-width:640px){	
#chart01{left:241px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

@media (min-width:719px) and (max-width:720px){	
#chart01{left:278px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

@media (min-width:749px) and (max-width:750px){	
#chart01{left:294px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
}

/* 해당픽셀부터는 피씨화면 대체 필요 */
/* ipad */
@media (min-width:767px) and (max-width:768px){	
#chart01{left:50px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
.state_box2 li{width:100%!important;}
}

/* kindle fire */
@media (min-width:799px) and (max-width:800px){	
#chart01{left:50px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
.state_box2 li{width:100%!important;}
}

/* ipad */
@media (min-width:1023px) and (max-width:1024px){	
#chart01{left:50px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
.state_box2 li{width:100%!important;}
}

/* Laptop with MDPI */
@media (min-width:1279px) and (max-width:1280px){	
#chart01{left:50px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
.state_box2 li{width:100%!important;}
}

/* Laptop with HIDPI */
@media (min-width:1439px) and (max-width:1440px){	
#chart01{left:50px!important;}
.ep-weather-content-icon-temp{margin-left:-72px;}
.state_box2 li{width:100%!important;}
}
</style>

<script type="text/javascript" src="/eXPortal/js/jquery.min.js"></script>
<script type="text/javascript" src="/eXPortal/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="/eXPortal/js/jstree/jquery.jstree.js"></script>
<script type="text/javascript" src="/eXPortal/js/jquery.cookie.js"></script>
<script type="text/javascript" src="/eXPortal/js/jquery.hotkeys.js"></script>
<script type="text/javascript" src="/eXPortal/js/jquery.maskedinput-1.3.min.js"></script>
<script type="text/javascript" src="/eXPortal/js/jquery.ui.timepicker.js"></script>
<script type="text/javascript" src="/eXPortal/js/yui-min.js"></script>
<script type="text/javascript" src="/eXPortal/js/validator.js"></script>

<script type="text/javascript" src="/eXPortal/js/exportal.util.js"></script>
<script type="text/javascript" src="/eXPortal/js/exportal.ui.js"></script>
<script type="text/javascript" src="/eXPortal/js/jqplot/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="/eXPortal/js/jqplot/excanvas.min.js"></script>
<script type="text/javascript" src="/eXPortal/js/jqplot/jqplot.barRenderer.min.js"></script>
<script type="text/javascript" src="/eXPortal/js/jqplot/jqplot.pieRenderer.min.js"></script>
<script type="text/javascript" src="/eXPortal/js/jqplot/jqplot.categoryAxisRenderer.min.js"></script>
<script type="text/javascript" src="/eXPortal/js/jqplot/jqplot.pointLabels.min.js"></script>
<script type="text/javascript" src="/eXPortal/js/jqplot/jqplot.donutRenderer.min.js"></script>
<script type="text/javascript" src="/proc/bookmark.BookmarkScript.do"></script>
<script type="text/javascript" src="/eXPortal/js/prefixfree.min.js"></script>
<script type="text/javascript" src="/eXPortal/js/placeholders.min.js"></script>
<script type="text/javascript" src="/eXPortal/js/jquery.bxslider.js"></script>
<script type="text/javascript" src="/eXPortal/js/jquery.floatThead.js"></script>

<script type="text/javascript" src="/eXPortal/js/jquery.cycle.all.js"></script>
	
<style media="" data-href="/eXPortal/portalresources/theme/css/type_hyw_color.css">/*# sourceURL=/eXPortal/portalresources/theme/css/type_hyw_color.css */
/*@ sourceURL=/eXPortal/portalresources/theme/css/type_hyw_color.css */
`&#65279;@CHARSET "UTF-8";

/* CSS Document */

/* ------------------------------------------------------------
 * Name      : type_a_color.css
 * Desc      : 한양여자대학교 포털시스템
 * Created   : 2018/03/06 by YSK
 * Updated   :
------------------------------------------------------------ */

/* common */
*{margin:0;padding:0}
html, body{height:100%}
body{color:#333;font-size:12px;font-family:"맑은고딕", Malgun Gothic, dotum, "돋움", sans-serif;-webkit-tap-highlight-color:rgba(0, 0, 0, 0);-webkit-text-size-adjust:none;}
body, p, h1, h2, h3, h4, h5, h6, menu, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button{margin:0;padding:0}
header, footer, section, article, aside, nav, hgroup, details, menu, figure, figcaption{display:block}
img, video{max-width:100%;height:auto}
img, fieldset{border:0;vertical-align:middle}
menu, ul, ol{list-style:none}
em, address, i{font-style:normal}
a, a:link{color:#4b4b4b;text-decoration:none}
a:hover, a:active, a:focus{color:#0071bd;text-decoration:none}
textarea{overflow:auto}
option, x:-moz-any-link{padding-right:6px}
option, x:-moz-any-link, x:default{padding-right:0}
input, textarea, select, label{vertical-align:middle;letter-spacing:-1px}
input[type="text"], input[type="password"], textarea, select{border:solid 1px #ababab;font-size:13px;font-family:"맑은고딕", Malgun Gothic, sans-serif;color:#444}
input[type="file"]{font-family:"맑은고딕", Malgun Gothic, sans-serif}
textarea{line-height:1.8}
legend, caption, .blind{visibility:hidden;position:absolute;top:0;left:0;width:0;height:0;overflow:hidden;font-size:0;line-height:0}
button, label{cursor:pointer}
button::-moz-focus-inner{padding:0}
hr{display:none}
table{border-spacing:0;border-collapse:collapse}
select, textarea, button{vertical-align:middle}
input{vertical-align:middle}
button{border:0 none;background-color:transparent;cursor:pointer}
.checkbox{width:14px;height:14px;margin-bottom:2px;vertical-align:middle;border-width:0}
html:first-child select{padding-right:6px;height:23px}/* Opera 9 & Below Fix */
option{padding-right:6px}/* Firefox Fix */

/* 스타일 */
.blind{visibility:hidden!important;position:absolute!important;width:0!important;height:0!important;overflow:hidden!important;color:transparent!important;font-size:0!important;line-height:0!important;background-color:transparent!important}
.pl10{padding-left:10px}
.pl30{padding-left:30px}
.pr5{padding-right:5px}
.ml5{margin-left:5px}
.mt5{margin-top:5px}
.mt10{margin-top:10px}
.mt15{margin-top:15px}
.mt20{margin-top:20px}
.mt30{margin-top:30px}
.mt40{margin-top:40px}
.mb10{margin-bottom:10px}
.mb20{margin-bottom:20px}
.mb30{margin-bottom:30px}
.mb40{margin-bottom:40px}
.fl{float:left}
.fr{float:right}
.pl{position:relative}
.h280{height:280px !important}
.w127{width:127px !important}
.sel01{height:26px;line-height:26px;width:200px}
.input_scr{position:absolute;top:0;left:0;width:100%;height:24px;border:4px solid #e4e4e4 !important;font-family:'돋움', Dotum !important;line-height:24px;text-indent:5px}
select{padding:.0em .0em .0em .5em;border:1px solid #c0c0c0 !important;border-radius:0;background:#fff url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/arrow_select.gif") no-repeat 95% 56%;font-family:inherit;appearance:none;-webkit-appearance:none;-moz-appearance:none;}
select::-ms-expand{display:none}
.sel01{width:50px}
.sel02{width:100px;height:26px;line-height:26px;padding-left:5px !important}
.sel03{width:210px;height:26px;line-height:26px;padding-left:5px !important}
.sel04{width:95%;height:26px;line-height:26px;padding-left:5px}
.int_scr{position:absolute;top:0;left:0;width:100%;height:29px;border:1px solid #0a564d !important;text-indent:5px}
.rtxt{color:#ff0000}
.color_blue{color:#0c3b87}
.color01 {color:#5282d2 !important}/* 블루 */
.color02 {color:#00bbaa !important}/* 그린 */
.color03 {color:#f16261 !important}/* 레드 */
.alignL {text-align:left !important}
.alignR {text-align:right !important}
.bg_layer {display:block; position:fixed; z-index:99999; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.7)}/* 레이어창 백그라운드 */

/* button */
a.btn_ok{display:inline-block;min-width:100px;height:36px;padding:0 10px;border:1px solid #176878;border-radius:3px;background:#176878;color:#fff;font-size:14px;font-weight:600;text-align:center;line-height:36px;text-decoration:none}
a.btn_ok2{display:inline-block;min-width:140px;height:36px;padding:0 10px;border:1px solid #176878;border-radius:3px;background:#176878;color:#fff;font-size:14px;font-weight:600;text-align:center;line-height:36px;text-decoration:none}
a.btn_cancel{display:inline-block;min-width:100px;height:36px;padding:0 10px;border:1px solid #a5a5a5;border-radius:3px;background:#fff;color:#333;font-size:14px;font-weight:600;text-align:center;line-height:36px;text-decoration:none}
a.btn_cancel2{display:inline-block;min-width:130px;height:36px;padding:0 10px;border:1px solid #a5a5a5;border-radius:3px;background:#fff;color:#333;font-size:14px;font-weight:600;text-align:center;line-height:36px;text-decoration:none}
a.btn_scr{display:inline-block;min-width:110px;height:36px;padding:0 10px;border:1px solid #176878;border-radius:3px;background:#fff;color:#176878;font-size:14px;font-weight:600;text-align:center;line-height:36px;text-decoration:none}
a.btn_book{display:inline-block;width:61px;height:32px;padding-left:14px;border-radius:0;background:#006376 url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_scr.gif") no-repeat 14px 8px;color:#fff;font-size:13px;font-family:'돋움', Dotum;text-align:center;line-height:32px;text-decoration:none}
a.btn_gray{display:inline-block;min-width:48px;height:28px;padding:0 8px;border:1px solid #a1a1a1;border-radius:0;background:#f8f8f8;color:#666;font-size:12px;font-weight:600;text-align:center;line-height:28px;text-decoration:none}
a.btn_gray2{display:inline-block;min-width:150px;height:28px;border:1px solid #ccc;border-radius:0;background:#f8f8f8;color:#666;font-size:12px;font-weight:600;text-align:center;line-height:28px;text-decoration:none}
a.btn_my{display:inline-block;min-width:66px;height:22px;border:1px solid #ccc;border-radius:0;background:#fff;color:#333;font-size:11px;font-weight:600;text-align:center;line-height:22px;text-decoration:none}

/* placholder */
.int::-webkit-input-placeholder, .int2::-webkit-input-placeholder, .int3::-webkit-input-placeholder, .int4::-webkit-input-placeholder, .int5::-webkit-input-placeholder, .input_scr::-webkit-input-placeholder, .input01::-webkit-input-placeholder {color:#999}
::-webkit-input-placeholder {color:#999}
::-moz-placeholder {color:#999} /* firefox 19+ */
input.int:-ms-input-placeholder, input.int2:-ms-input-placeholder, input.int3:-ms-input-placeholder, input.int4:-ms-input-placeholder, input.int5:-ms-input-placeholder, input.input_scr:-ms-input-placeholder, input.input01:-ms-input-placeholder {color:#999} /* ie */
input:-moz-placeholder {color:#999}
input:-ms-input-placeholder.int {color:#999}


/* 개인정보 */
.indiv_area{float:left;width:394px;background:#2592dc url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/info_bg.png") no-repeat top right;box-sizing:border-box}
.indiv_info{display:block;position:relative;float:left;width:100%;height:205px;box-sizing:border-box}
.indiv_info h2{display:none}
.indiv_info .info_01{width:100%;height:95px;border-bottom:1px solid #59ace4;color:#fff;box-sizing:border-box}
.indiv_info .info_01{display:block;padding:15px 15px 0 20px}
.indiv_info .info_01 li{margin-bottom:6px}
.indiv_info .info_01 li.name{padding-left:15px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_info.png") no-repeat 0 50%;font-size:13px}
.indiv_info .info_01 li.name strong{font-size:14px;color:#abcffd}
.indiv_info .info_01 li.time2{margin-top:10px;font-size:12px;text-align:left;color:#bcd6f7}
.indiv_info .info_01 li.btn{position:absolute;top:15px;right:15px}
.indiv_info .info_01 li.btn a{display:inline-block;width:60px;height:22px;background:#00467f;color:#fff;font-size:12px;text-decoration:none;text-align:center;line-height:22px;border-radius:2px}
.indiv_info .info_01 li.btn a.btn01{background:#00467f url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_modify.png") no-repeat 8px 50%;padding-left:16px}
.indiv_info .info_01 li.btn a.btn02{background:#00467f url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_logout2.png") no-repeat 8px 50%;padding-left:16px}
.indiv_info .info_02{clear:both;width:100%;height:64px;padding:12px 20px;box-sizing:border-box}
.indiv_info .info_02 li{display:block;font-size:12px;color:#fff}
.indiv_info .info_02 li.ip{padding-left:20px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_ip.png") no-repeat 0 2px;margin-bottom:5px}
.indiv_info .info_02 li.time{padding-left:20px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_time.png") no-repeat 0 2px;white-space:nowrap}

/* 알리미 */
.notice_box{width:100%;height:46px;box-sizing:border-box}
.notice_box h2{display:inline-block;float:left;width:102px;margin-left:12px;padding-left:42px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_hi.png") no-repeat 0 50%;font-size:15px;line-height:46px;color:#fff}
.notice_box ul{padding-top:13px}
.notice_box li{display:inline-block;width:129px;font-size:13px;line-height:16px;color:#fff}
.notice_box li strong{position:relative;color:#fff}
.notice_box li span{display:inline-block;width:45px;color:#4cb7fe;font-size:17px;font-weight:600;text-align:right}
.notice_box li:last-child{width:90px;text-align:right;padding-right:10px}

/* 나의현황 */
.state_box{position:relative;float:left;width:392px;margin-top:1px;font-size:0}
.state_box h2{display:none}
.state_box dl dt{display:inline-block;float:left;width:131px;height:103px;margin-top:-1px;margin-right:-1px;padding:15px 0;border:solid 1px #d1d1d1;background:#fff;color:#333;font-size:15px;font-weight:600;text-align:center;letter-spacing:.1px;box-sizing:border-box}
.state_box dl dt span{width:100%;margin-top:30px;padding:0 14px;text-align:right;box-sizing:border-box}
.state_box dl dt span{float:right;color:#333;font-weight:normal}
.state_box dl dt span i{float:left;margin-top:-18px}
.state_box dl dt span em{color:#f04948;font-size:19px;cursor:pointer}

.state_box2{position:relative;float:left;width:130px;margin-top:1px;margin-right:1px;font-size:0}
.state_box2 h2{display:none}
.state_box2 dl dt{display:inline-block;width:129px;height:103px;margin-top:-1px;margin-right:-1px;padding:15px 0;border:solid 1px #d1d1d1;background:#fff;color:#333;font-size:15px;font-weight:600;text-align:center;letter-spacing:.1px;box-sizing:border-box;border-left:solid 0px #d1d1d1}
.state_box2 dl dt span{width:100%;margin-top:30px;padding:0 14px;text-align:right;box-sizing:border-box}
.state_box2 dl dt span{float:right;color:#333;font-weight:normal}
.state_box2 dl dt span i{float:left;margin-top:-18px;}
.state_box2 dl dt span em{color:#f04948;font-size:19px;cursor:pointer}

.state_box{position:relative;float:left;width:392px;margin-top:1px;font-size:0}
.state_box h2{display:none}
.state_box ul li{display:inline-block;float:left;width:131px;height:103px;margin-top:-1px;margin-right:-1px;padding:15px 0;border:solid 1px #d1d1d1;background:#fff;color:#333;font-size:15px;font-weight:600;text-align:center;letter-spacing:.1px;box-sizing:border-box}
.state_box ul li span{width:100%;margin-top:30px;padding:0 14px;text-align:right;box-sizing:border-box}
.state_box ul li span{float:right;color:#333;font-weight:normal}
.state_box ul li span i{float:left;margin-top:-18px}
.state_box ul li span em{color:#f04948;font-size:19px;cursor:pointer}

.state_box2{position:relative;float:left;width:130px;margin-top:1px;margin-right:1px;font-size:0}
.state_box2 h2{display:none}
.state_box2 ul li{display:inline-block;width:129px;height:103px;margin-top:-1px;margin-right:-1px;padding:15px 0;border:solid 1px #d1d1d1;background:#fff;color:#333;font-size:15px;font-weight:600;text-align:center;letter-spacing:.1px;box-sizing:border-box;border-left:solid 0px #d1d1d1}
.state_box2 ul li span{width:100%;margin-top:30px;padding:0 14px;text-align:right;box-sizing:border-box}
.state_box2 ul li span{float:right;color:#333;font-weight:normal}
.state_box2 ul li span i{float:left;margin-top:-18px;}
.state_box2 ul li span em{color:#f04948;font-size:19px;cursor:pointer}

/* .state_box2{position:relative;float:left;width:130px;margin-top:1px;font-size:0}
.state_box2 h2{display:none}
.state_box2 li{display:inline-block;width:131px;height:69px;margin-top:-1px;margin-right:-1px;padding:6px 0;border:solid 1px #d1d1d1;background:#fff;color:#333;font-size:15px;font-weight:600;text-align:center;letter-spacing:.1px;box-sizing:border-box}
.state_box2 li span{width:100%;margin-top:6px;padding:0 14px;text-align:right;box-sizing:border-box}
.state_box2 li span{float:right;color:#333;font-weight:normal}
.state_box2 li span i{float:left;margin-top:-5px;}
.state_box2 li span em{color:#f04948;font-size:19px;cursor:pointer} */

.state_box3{position:relative;float:left;width:392px;margin-top:1px;font-size:0}
.state_box3 h2{display:none}
.state_box3 dl dt{display:inline-block;float:left;width:391px;height:205px;margin-top:-1px;margin-right:-1px;padding:30px 0;border:solid 1px #d1d1d1;background:#fff;color:#333;font-size:15px;font-weight:600;text-align:center;letter-spacing:.1px;box-sizing:border-box}
.state_box3 dl dt span{width:100%;margin-top:50px;padding:0 173px;box-sizing:border-box}
.state_box3 dl dt span{float:right;color:#333;font-weight:normal}
.state_box3 dl dt span i{float:left;margin-top:-18px}
.state_box3 dl dt span em{color:#f04948;font-size:19px;cursor:pointer}

.state_box3{position:relative;float:left;width:392px;margin-top:1px;font-size:0}
.state_box3 h2{display:none}
.state_box3 ul li{display:inline-block;float:left;width:391px;height:205px;margin-top:-1px;margin-right:-1px;padding:30px 0;border:solid 1px #d1d1d1;background:#fff;color:#333;font-size:15px;font-weight:600;text-align:center;letter-spacing:.1px;box-sizing:border-box}
.state_box3 ul li span{width:100%;margin-top:50px;padding:0 173px;box-sizing:border-box}
.state_box3 ul li span{float:right;color:#333;font-weight:normal}
.state_box3 ul li span i{float:left;margin-top:-18px}
.state_box3 ul li span em{color:#f04948;font-size:19px;cursor:pointer}
/* 학점취득현황 */
.chart_box{position:relative;float:left;width:261px;height:205px;margin-top:1px;font-size:0;border-right:solid 0px #d1d1d1}
.chart_box h2{display:none}
.chart_box ul{display:inline-block;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/chart_bg.png") repeat;width:100%;height:100%;margin-top:-1px;padding:10px 0;border:solid 1px #d1d1d1;color:#333;font-size:15px;font-weight:600;text-align:center;letter-spacing:.1px;box-sizing:border-box}

/* 공지사항 */
.board_area{position:relative;float:left;width:325px;height:191px;padding:13px 20px;border-left:solid 1px #e9e9e9;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bg_logo.png") no-repeat 230px 122px}
.board_area .board_box{position:relative}
.board_area .board_box h2{font-size:16px;color:#333}
.board_area .board_box .btn{position:absolute;top:-2px;right:2px}
.board_area .board_box .btn a{text-indent:-1000px;overflow:hidden}
.board_area dl.board_area_box2{margin-top:8px}
.board_tab_area2{float:left;width:100%;margin-bottom:6px}
.board_tab_area2 li:after{clear:both;content:'';display:block}
.board_tab_area2 li{display:inline-block;float:left;width:24.6%;height:24px;margin-top:-1px;margin-left:-1px;border:1px solid #ddd;background:#fafafa;font-size:13px;font-weight:600;text-align:center;line-height:24px;z-index:1}
.board_tab_area2 li a{color:#5f5f5f;display:inline-block}
.board_tab_area2 li:hover, .board_tab_area2 li.on{display:inline-block;z-index:9;border:1px solid #1a44a0;background:#1a44a0;color:#fff}
.board_tab_area2 li:hover a, .board_tab_area li.on a, .board_tab_area2 li.on a{color:#fff;text-decoration:none}
.bord_list_area2{color:#444}
.bord_list_area2 li dl{display:inline-block;width:100%;height:19px;line-height:19px}
.bord_list_area2 li dl dt{position:relative;float:left;width:75%;padding-left:10px;overflow:hidden;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bul01.png") no-repeat 0 50%;color:#444;font-size:12px;white-space:nowrap;text-overflow:ellipsis}
.bord_list_area2 li dl dt a{color:#444}
.bord_list_area2 li dl dd{float:right;width:20%;color:#444;text-align:right;padding-bottom:6px}
.bord_list_area2 li dl a:hover{color:#1f54a8;text-decoration:none}
.bord_list_area2 li dl dt span.ico_new{display:block;float:left;width:10px;height:9px;margin:3px 3px 0 0;background-position:-406px 0}
.note_box{width:324px;margin-top:9px;margin-left:-20px;padding:6px 20px;overflow:hidden;border-top:dashed 1px #e2e2e2;white-space:nowrap;text-overflow:ellipsis}
.note_box i{float:left;}
.note_box li{padding-left:53px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bul02.png") no-repeat 45px 50%;color:#666;line-height:16px;font-size:11px}
.note_box li a{color:#666}
.note_box li a:hover, .note_box li.on a{color:#1f54a8}
/* 학사일정 */
.lecture_area{position:relative;float:left;width:395px;height:205px;margin-left:-1px;border-right:1px solid #d1d1d1;background:#fff;box-sizing:border-box;border-bottom:1px solid #d1d1d1}
.lecture_area h2{display:block;position:relative;width:100%;height:40px;background:#0071bd;color:#fff;font-size:15px;font-weight:600;line-height:40px;padding-left:20px;}
.lecture_area h2:after{display:block;position:absolute;top:0;right:-1px;width:1px;height:100%;content:"";border-right:1px solid #37a5e4}
.lecture_area h2 .tit{display:inline-block;padding:12px 0 0 46px}
.lecture_area h2 .ico{position:absolute;top:11px;left:16px;width:23px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_schedule.png")no-repeat;height:20px}
.lecture_area h2 .btn_plus{position:absolute;top:10px;right:13px;width:21px;height:21px}
.lecture_box{width:100%;height:144px;padding:18px 20px;text-align:left;overflow:hidden;box-sizing:border-box}
.lecture_list{display:inline-block;position:relative;width:100%;height:26px;line-height:26px;border-bottom:1px dashed #d9d9d9}
.lecture_list.end{border-bottom:none}
.lecture_list dt{display:inline-block;position:relative;float:left;width:124px;padding-left:10px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bul01.png") no-repeat 0 50%;color:#333 !important;font-size:12px;text-align:left;line-height:28px;font-weight:600}
.lecture_list dd{width:160px;overflow:hidden;color:#666;font-size:12px;text-align:left;line-height:27px;white-space:nowrap;text-overflow:ellipsis}
.lecture_list a{color:#444}
.lecture_list a:hover{color:#0071bd}
.lecture_list.end{background-image:none}
.lecture_list span.mark03{display:inline-block;position:absolute;top:5px;right:0;width:46px;height:17px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/mark03.png") no-repeat 0 50%}
.lecture_list span.mark04{display:inline-block;position:absolute;top:5px;right:0;width:46px;height:17px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/mark04.png") no-repeat 0 50%}
.lecture_list span.mark05{display:inline-block;position:absolute;top:5px;right:0;width:46px;height:17px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/mark05.png") no-repeat 0 50%}

/* 강의 시간표 */
.lecture_arrow_area{position:relative;top:8px;left:50%;margin-bottom:10px;margin-left:-94px;line-height:17px;}
.lecture_arrow_area li{float:left}
.lecture_arrow_area li.lecture_day{width:130px;padding:0 10px 0 10px;color:#333;font-size:17px;text-align:center;font-weight:600}
.lecture_arrow_area li.lecture_day i{float:right}
.lecture_area2{float:left;width:32.3%;height:120px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/top_h_line02.gif") no-repeat;background-position:center right}
.lecture_area2 h2{height:38px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_main1_03.gif") no-repeat;color:#001111;font-size:17px;font-weight:600;line-height:38px;padding-left:48px}
.lecture_area2 h2 span{color:#dc2314}
.lecture_box2{float:left;height:120px;padding:5px 0 0 10px;border:1px solid #e5e5e5;background:#fbfbfb;overflow-x:hidden}
.lecture_list2{display:block;position:relative;margin-bottom:6px}
.lecture_list2 dt{display:inline-block;text-align:left;width:120px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_clock.png") no-repeat 0 1px ;padding-left:17px;color:#0071bd;;font-size:13px;font-weight:600}
.lecture_list2 dt span{color:#000;font-weight:600}
.lecture_list2 dd{display:inline-block;text-align:left;width:45%;font-size:12px;color:#222;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;vertical-align:-4px}
.lecture_list2 a{color:#333}
.lecture_list2 a:hover{color:#0071bd;text-decoration:none}
.lecture_box_top{margin-top:11px;padding-left:13px}
.lecture_area_top{width:32.3%;height:225px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/top_h_line02.gif") no-repeat;background-position:center right}
.lecture_area_top h2{height:38px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_main1_04.gif") no-repeat;color:#001111;font-size:17px;font-weight:600;line-height:38px;padding-left:48px}
.lecture_area_top h2 span{color:#dc2314}

/* 내일정 */
.lecture_box3{float:left;height:120px;padding:0;border:1px solid #e5e5e5;background:#fbfbfb;overflow-x:hidden}
.lecture_box3 li{display:inline-block;width:100%;border-bottom:1px dashed #d9d9d9}
.lecture_list3{display:inline-block;position:relative;float:left;height:23px;padding:2px 20px 2px;line-height:23px}
.lecture_list3 dt{float:left;width:42px;padding-left:52px;color:#1197d4;font-size:13px;line-height:23px;font-weight:normal}
.lecture_list3 dt.mark01{background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/mark01.png") no-repeat 0 50%}
.lecture_list3 dt.mark02{background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/mark02.png") no-repeat 0 50%}
.lecture_list3 dt span{color:#000;font-weight:600}
.lecture_list3 dd{float:left;width:180px;height:23px;padding-left:15px;overflow:hidden;color:#222;font-size:12px;line-height:23px;white-space:nowrap;text-overflow:ellipsis}
.lecture_list3 a{color:#666666}
.lecture_list3 a:hover{color:#0b699f;text-decoration:none}

/* 포틀릿 탭 게시판 */
.board_tab_area{width:100%;margin-bottom:6px}
.board_tab_area:after{clear:both;content:'';display:block}
.board_tab_area li{display:inline-block;float:left;width:33%;height:26px;margin-right:-1px;border:1px solid #d1d1d1;background:#f5f6f8;font-weight:600;text-align:center;line-height:26px;z-index:1}
.board_tab_area li.btn{width:8.8%;position:relative}
.board_tab_area li.btn span{position:absolute;top:9px;left:12px}
.board_tab_area li.btn:hover{display:inline-block;background:#fff}
.board_tab_area li a{color:#6f7a86;display:inline-block}
.board_tab_area li:hover, .board_tab_area li.on{display:inline-block;z-index:9;height:26px;background:#1866a6;color:#ffffff;border:solid 1px #1866a6}
.board_tab_area li:hover a, .board_tab_area li.on a{color:#ffffff;text-decoration:none}
.bord_list_area{width:100%;color:#4b4b4b}
.t_line{margin-top:5px;padding-top:10px;border-top:solid 1px #2b2b2b}
.bord_list_area li dl{display:inline-block;width:100%;height:22px;line-height:22px}
.bord_list_area li dl dt{float:left;width:70%;padding-left:10px;overflow:hidden;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bul01.png") no-repeat 0 50%;font-size:13px;text-align:left;white-space:nowrap;text-overflow:ellipsis}
.bord_list_area li dl dd{float:left;width:27%;color:#777777;font-size:13px;text-align:right}
.bord_list_area li dl a:hover{color:#0071bd;text-decoration:none}
.bord_list_area li.list02 dl dt{width:60%}
.bord_list_area li.list02 dl dd{width:15%}
.bord_list_area li.list03 dl dt, .bord_list_area li.list03 dl dt a{width:27%;color:#444444;font-weight:600}
.bord_list_area li.list03 dl dd.dd01{width:50%;overflow:hidden;text-align:left;white-space:nowrap;text-overflow:ellipsis}
.bord_list_area li.list03 dl dd{width:20%}
.board_tab_area.w02{float:left;width:127px !important}
.board_tab_area.w02 li{width:49% !important}
.board_view{clear:both}

/* 학생검색 */
.scr_top_box{position:relative;width:100%;height:28px;margin-bottom:6px}
.scr_top{position:relative;float:left;width:100%;height:auto}
.scr_top .int_scr{position:absolute;top:0;left:0;background:#eeeeee;width:100%;height:28px;border:1px solid #d1d1d1 !important;text-indent:5px;line-height:28px;box-sizing:border-box;color:#999}
.scr_top a.btn_scr2{display:inline-block;position:absolute;top:0;right:0;padding-left:15px;width:60px;height:28px;background:#1866a6 url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_scr.png") no-repeat 10px 50%;color:#fff;font-size:12px;text-decoration:none;text-align:center;line-height:28px;box-sizing:border-box;overflow:hidden}
.scr_top_box .btn_scr_top{position:absolute;right:0;top:0}
.scr_top_box .btn_scr_top img{vertical-align:top}

/*테이블 안 버튼 */
a.btn_blue{display:inline-block;min-width:38px;height:16px;background:#0071bd;color:#fff !important;font-size:11px;text-align:center;line-height:14px;letter-spacing:-1px;text-decoration:none}
a.btn_darkblue{display:inline-block;min-width:38px;height:16px;background:#00467f;color:#fff !important;font-size:11px;text-align:center;line-height:14px;letter-spacing:-1px;text-decoration:none}
a.btn_red{display:inline-block;min-width:38px;height:16px;background:#f76261;color:#fff !important;font-size:11px;text-align:center;line-height:14px;letter-spacing:-1px;text-decoration:none}
a.btn_green{display:inline-block;min-width:38px;height:16px;background:#07adb5;color:#fff !important;font-size:11px;text-align:center;line-height:14px;letter-spacing:-1px;text-decoration:none}
a.btn_gray02{display:inline-block;min-width:38px;height:16px;background:#707070;color:#fff !important;font-size:11px;text-align:center;line-height:14px;letter-spacing:-1px;text-decoration:none}

/* 포틀릿 게시판 */
.board_main{width:100%;}
.board_main thead tr th{height:16px;padding:5px 0 5px 0;border-top:1px solid #2b2b2b;border-right:1px solid #e5e5e5;border-bottom:1px solid #e5e5e5;background:#fafafa;color:#333333;font-size:12px;font-weight:600;text-align:center}
.board_main tbody tr{}
.board_main tbody th, .board_main tbody tr:first-child td{padding-top:3px;}
.board_main thead tr th:last-child{border-right:none}
.board_main thead tr th.line{border-right:1px solid #e5e5e5}
.board_main tbody td:last-child{border-right:none}
.board_main tbody th{height:21px;padding:3px 0 2px 0;border-right:1px solid #e5e5e5;border-bottom:1px solid #e5e5e5;background:#fafafa;color:#444;text-align:center}
.board_main tbody td{height:21px;padding:3px 0 2px 0;border-right:1px solid #e5e5e5;border-bottom:1px solid #e5e5e5;color:#444;text-align:center}
.board_main tbody td.al{padding-left:10px;overflow:hidden;text-align:left;white-space:nowrap;text-overflow:ellipsis}
.board_main tbody td.date{color:#828283;letter-spacing:-1px}
.board_main tbody td a{color:#444}
.board_main tbody td.btxt{color:#0071bd}
.board_main tbody td.rtxt{color:#e64b40}
.board_main.blue thead th{background:#f0f5fb;border-top:solid 1px #3272b1}

.board_view{width:100%;}
.board_view tr:first-child th{border-top:1px solid #2b2b2b;border-left:none}
.board_view th{height:21px;padding:3px 0 2px 0;padding-left:9px;border-bottom:1px solid #e5e5e5;background:#f5f5f5;color:#666;font-size:12px;text-align:left;font-weight:600}
.board_view tr:first-child td{border-top:1px solid #d2d0d0}
.board_view td{padding:3px 0 2px 12px;border-bottom:1px solid #e5e5e5;background:#fff;text-align:left;line-height:18px}
.board_view tr:last-child th{border-bottom:1px solid #e5e5e5}
.board_view tr:last-child td{border-bottom:1px solid #e5e5e5}
.board_view tbody td span.btxt{color:#196fb3}
.board_view tbody td span.rtxt{color:#e64b40}
.board_area2{clear:both;height:100%;overflow:hidden;overflow-y:auto}
.board_area3{height:110px;overflow-y:auto;margin-top:5px}

.stit_box{display:block;width:100%;overflow:hidden;color:#666;font-size:12px;margin:-5px 0 5px 0}
.stit_box li.left{display:inline-block;float:left;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_bul.gif") no-repeat 0 5px;padding-left:7px}
.stit_box li.right{display:inline-block;float:right;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_bul.gif") no-repeat 0 5px;padding-left:7px}
.stit_box li span.btxt{color:#196fb3;font-weight:600}
.stit_box li span.rtxt{color:#e64b40;font-weight:600}
.stit{display:block;width:100%;overflow:hidden;color:#666;font-size:11px;text-align:right;margin-bottom:5px}
.stit2{display:block;width:100%;overflow:hidden;color:#666;font-size:11px;text-align:right;margin:-5px 0 5px 0}
.txt_meal{display:inline-block;word-break:break-all;vertical-align:-9px}

/* 신착도서 */
.book_area{position:relative;width:100%;height:165px;margin:0 auto;margin-top:-2px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bg_book.gif") no-repeat 50% bottom}
.book_area .btn{top:0;width:100%;text-align:center}
.book_area .book{width:298px;margin:0 auto}
.book_area .book img{border:1px solid #999}
.book_area .book li{position:relative;float:left;width:70px;height:97px;margin-top:12px;margin-right:6px}
.book_area .book li{position:relative;float:left;width:70px;height:97px;margin-top:12px;margin-right:6px}
.book_area .book li:last-child{margin-right:0}
.book_area .book li:hover{background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_go_on.png") 0 0;background-size:100% 100%;}
.book_area .book li:hover img{position:absolute;z-index:0;top:0;left:0;opacity:0.2;filter:alpha(opacity=20)}

@media (max-width:405px) {
.book_area{height:140px}
.book_area .book_tit{color:#333;font-size:12px;text-align:center}
.book_area{background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bg_book_m.gif") no-repeat 50% bottom}
.book_area .book{width:188px;margin:14px auto 0}
.book_area .book li:hover{background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_go_on.png") 0 0;background-size:cover}
.book_area .book li{width:42px;height:58px;margin-right:5px}
}

/* 오늘의식단 */
.board_view2{display:block;clear:both;width:99.8%;height:44px;margin-top:-1px;border:1px solid #e5e5e5;}
.board_view2 dt{display:inline-block;float:left;width:33%;height:30px;padding-top:14px;color:#222;text-align:center;font-weigh:bold}
.board_view2 dt.lunch01{background:#e6f0fb}
.board_view2 dt.lunch02{background:#e6f0fb}
.board_view2 dd{display:inline-block;float:left;width:66%;padding:3px 15px;padding-top:3px;color:#666;font-size:12px;line-height:18px;box-sizing:border-box}
.board_view2.mg {margin-top:-6px}

/* 설문조사 */
.survey_arrow_area{position:relative;width:100%;height:26px;margin-bottom:20px;border-radius:3px;background:#e6f0fb;-moz-border-radius:3px;-webkit-border-radius:3px;}
.survey_arrow_area li{float:left;width:10%;margin-bottom:8px;text-align:center;line-height:26px;vertical-align:middle}
.survey_arrow_area li.title{float:left;width:80%;color:#565656;font-size:1.0em;font-weight:600}
.survey_area{float:left;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_survey.png") no-repeat 252px 0;height:93px}
.survey_area li{width:210px;margin-left:20px;line-height:24px;font-size:13px}
.survey_area li em{color:#1197d4}
.survey_area li.btn{margin-top:10px}

/* 학생성적 */
dl.num{display:block;width:351px;height:51px;border:1px solid #e5e5e5;border-radius:3px;margin-top:5px}
dl.num dt{display:inline-block;width:29%;height:51px;background:#f5f5f5;color:#333;font-size:13px;font-weight:600;text-align:center;line-height:51px;border-right:1px solid #e5e5e5}
dl.num dd{display:inline-block;width:18%;color:#f04948;font-size:22px;font-weight:500;text-align:center;vertical-align:-2px}

/* 날씨 */
.portlet-body.weather_area{position:relative;height:195px !important;padding:0;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/weather_bg.png") no-repeat 0 ;background-size:100% 100%;z-index:1}
.weather_box{padding:25px 0 0 8%}
.weather_box .wt01{float:left;width:50%;font-size:13px;text-align:center;line-height:20px;color:#333}
.weather_box .wt01 em{font-size:24px;font-weight:600;color:#0071bd}
.weather_box .wt01{text-align:center}
.weather_box ul{margin-left:52%;font-size:13px;font-weight:600;color:#333}
.weather_box .wt02{font-size:32px;line-height:40px;color:#0071bd}

@media (max-width:405px) {
.weather_box .wt01 span{display:none}
}


/* 아이콘 버튼 */
[class^="ico_"], [class*=" ico_"] {display:inline-block; width:14px; height:14px; margin-top:1px; *margin-right:.3em; background-image:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_btn.png"); background-repeat:no-repeat; background-position:14px 14px; text-indent:-1000px; line-height:14px; vertical-align:middle; overflow:hidden}
.ico_user{background-position:0 0}
.ico_chevron_right{background-position:-20px 0;}
.ico_chevron_left{background-position:-40px 0}
.ico_chevron_right2{background-position:-60px 0}
.ico_pre_date{background-position:-80px 0;width:20px;height:20px;text-indent:-1000px;vertical-align:top;cursor:pointer}/* 달력 arrow */
.ico_next_date{background-position:-100px 0;width:20px;height:20px;text-indent:-1000px;vertical-align:top;cursor:pointer}/* 달력 arrow */
.ico_ip{width:20px !important;background-position:-120px 0px;height:20px !important}/* 아이피 */
.ico_time_user{width:20px !important;background-position:-140px 0px;height:20px !important}/* 접속시간 */
.ico_bnr_play{width:8px !important;background-position:-240px 0px;height:10px !important}/* 플레이 */
.ico_calendar{width:16px !important;height:16px !important;background-position:-40px -20px;cursor:pointer}/* 달력 */
.ico_state01{background-position:0 -40px;width:50px;height:50px}/* 나의현황 */
.ico_state02{background-position:-50px -40px;width:50px;height:50px}
.ico_state03{background-position:-100px -40px;width:50px;height:50px}
.ico_state04{background-position:-150px -40px;width:50px;height:50px}
.ico_state05{background-position:-200px -40px;width:50px;height:50px}
.ico_state06{background-position:-250px -40px;width:50px;height:50px}
.ico_state07{background-position:-300px -40px;width:50px;height:50px}
.ico_state08{background-position:-350px -40px;width:50px;height:50px}
.ico_state09{background-position:-400px -40px;width:35px;height:35px}
.ico_state10{background-position:-450px -40px;width:35px;height:35px}
.ico_state11{background-position:-500px -40px;width:35px;height:35px}
.ico_go{width:34px !important;background-position:-280px -60px;height:34px !important}/* 신착 go */
.ico_plus02{width:21px !important;background-position:0 -100px;height:21px !important}/* 더보기 */
.ico_pre{width:11px !important;background-position:-30px -100px;height:21px !important}/* 퀵메뉴 arrow */
.ico_next{width:11px !important;background-position:-60px -100px;height:21px !important}/* 퀵메뉴 arrow */
.ico_book_pre{background-position:-130px 0;width:32px;height:23px}/* 신착자료 arrow */
.ico_book_next{background-position:-162px 0;width:32px;height:23px }/* 신착자료 arrow */

/* ++++++++++++ sub ++++++++++++ */
/* lnb */
.lnb{position:relative;float:left;width:220px;}
.lnb_tit{width:220px;height:52px;padding-top:20px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/lnb_tit_bg.png") no-repeat 0 0;}
.lnb_tit h2{padding-left:15px;color:#fff;font-size:25px;line-height:26px;font-weight:normal}
.lnb_tit span{padding-left:15px;font-size:11px;color:#ddd}
.lnb_depth01 > li > a{display:block;padding-left:15px;border-right:1px solid #d1d1d1;border-bottom:1px solid #d1d1d1;border-left:1px solid #d1d1d1;background:#fff url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_lnb01_off.png") no-repeat 190px 50%;color:#333;font-size:13px;font-weight:500;line-height:38px;vertical-align:middle;}
.lnb_depth01 > li > a:hover{color:#000}
.lnb_depth01 > li.on{display:block;width:220px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_lnb01_on.png") no-repeat 0 0;background-size:100% 38px}
.lnb_depth01 > li.on > a{padding-left:15px;border-bottom:1px solid #689f38;border-left:1px solid #81bc4e;background:#81bc4e url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_lnb01_on.png") no-repeat 190px 50%;color:#fff;font-size:13px;border-right:1px solid #81bc4e}
.lnb_depth02{border-right:1px solid #d1d1d1;border-bottom:solid 1px #d1d1d1;border-left:1px solid #d1d1d1;background:#ebeff1;padding:5px 0}
.lnb_depth02 > li:first-child > a{border-top:none}
.lnb_depth02 > li > a{padding-left:30px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_lnb02_off.gif") no-repeat 15px 50%;color:#333;font-size:12px;font-weight:normal;line-height:28px;vertical-align:middle;display:block}
.lnb_depth02 > li.on > a{display:block;padding-left:30px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_lnb02_on.gif") no-repeat 15px 50%;color:#689f38;font-size:12px;font-weight:600;text-decoration:none}
.lnb_depth02 > li > a:hover{color:#689f38;text-decoration:none}
.lnb_depth03{margin:3px 8px;border-top:dashed 1px #ccc;border-bottom:dashed 1px #ccc;background:#f5f8fa}
.lnb_depth03 > li:first-child > a{border-top:none}
.lnb_depth03 > li > a{padding-left:26px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_lnb03_off.gif") no-repeat 18px 50%;color:#787f84;font-size:12px;font-weight:normal;line-height:24px;vertical-align:middle;display:block}
.lnb_depth03 > li.on > a{display:block;padding-left:26px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_lnb03_on.gif") no-repeat 18px 50%;color:#117966;font-size:12px;font-weight:normal;text-decoration:none}
.lnb_depth03 > li > a:hover{color:#689f38;text-decoration:none}

/* 서브 타이틀 */
.content_nav{}
.cont_nav{float:right;text-align:right !important;line-height:14px;color:#666;font-size:12px !important;width:100%;padding-bottom:8px}
.content_nav em{color:#444;font-weight:600}
.content_nav img{vertical-align:-1px}
#content h2, .content_nav h2{color:#444443;font-size:26px;font-weight:600;letter-spacing:-1px;margin-bottom:30px}
#content h3{position:relative;padding-left:25px;font-size:17px;letter-spacing:-1px;font-weight:600;margin-bottom:15px}
#content h3 span{position:absolute;display:block;left:0;width:25px;height:25px;background-image:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_depth.png");background-repeat:no-repeat;background-position:0 0}
#content .btn_board_c{width:100%;text-align:center}
#content .btn_board_r{width:100%;text-align:right}

/* 게시판 검색 */
.sub_search_area{font-size:13px}
.sub_search_area .sub_search_box{border-top:1px solid #a9a9ab;border-right:1px solid #e2e2e3;border-bottom:1px solid #e2e2e3;border-left:1px solid #e2e2e3;padding:16px 15px 16px 25px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/board/bg_scr.gif") repeat;color:#333}
.sub_search_area .sub_search_box tr td{padding-bottom:10px;letter-spacing:-1px}
.sub_search_area .sub_search_box tr:last-child td{padding-bottom:0}
.sub_search_area .sub_search_box label.tit{float:left;display:inline-block;width:80px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_bul2.png") no-repeat 0 5px;padding:0 0 0 9px;font-weight:600}
.sub_search_area .sub_search_box label.tit2{float:left;display:inline-block;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_bul2.png") no-repeat 0 7px;padding:2px 10px 0 9px;font-weight:600}
.sub_search_area .sub_search_box ul.list_ssb{float:left;display:inline-block;line-height:19px}
.sub_search_area .sub_search_box ul.list_ssb li{display:inline-block;margin-right:5px;font-weight:500}
.sub_search_area .sub_search_box ul.list_ssb li.mr0{margin-right:0}
.sub_search_area .sub_search_box ul.list_ssb li.left{float:left;width:40%}
.sub_search_area .sub_search_box ul.list_ssb li.right{float:left;width:40%}
.sub_search_area .sub_search_box ul.list_ssb li:last-child{margin-right:0}
.sub_search_area .sub_search_box  table{border-spacing:0;border-collapse:collapse;width:100%}
.sub_search_area .sub_search_box  table tr *{verticalign:middle}
.sub_search_area .button_area{text-align:right;margin:15px 0 5px}
.sub_search_area .button_area li{display:inline-block;margin-left:1px;font-family:"맑은고딕", Malgun Gothic}
.sub_search_area .btn_r{position:absolute;top:15px;right:20px}
.sel_box{text-align:left;margin-bottom:8px;font-size:12px}

/* 공지사항 검색  */
.sub_search_area{}
.sub_search_area .sub_search_box02{padding:15px 0;border:1px solid #e2e2e3;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bg_scr.gif") repeat;}
.sub_search_area .sub_search_box02 table{margin:0 auto;}
.sub_search_area .sub_search_box02 th{font-size:12px;text-align:left}
.sub_search_area .sub_search_box02 td img{vertical-align:middle}
.sub_search_area .sub_search_box02 td{padding-right:4px}
.sub_search_area .sub_search_box02 select{height:26px}
.sub_search_area .sub_search_box02 input{height:24px}
.sub_search_area .sub_search_box02 table{}
.sub_search_area .sub_search_box02 table tr *{vertical-align:middle}

/* 게시판 table list */
.board-tbllist{width:100%;border-top:1px solid #4673cc;border-bottom:1px solid #a6a6a6;color:#f5f5f5}

/* 게시판 */
.board-tbllist thead th{height:30px;min-height:30px;padding:0 15px;overflow:hidden;border:inherit !important;border-bottom:1px solid #e5e5e5 !important;background-color:#f7f9fa;color:#333333;font-weight:bold;text-align:center;text-overflow:ellipsis;line-height:14px;white-space:nowrap}
.board-tbllist tbody th{height:30px;min-height:30px;padding:0 15px;overflow:hidden;border:inherit !important;border-bottom:1px solid #ddd !important;background-color:#fff;color:#333333;font-weight:bold;text-align:center;text-overflow:ellipsis;line-height:14px;white-space:nowrap}
.board-tbllist td{height:30px;padding:0px 15px;overflow:hidden;border-top:none;border-bottom:1px solid #ddd;color:#676767;text-align:center;text-overflow:ellipsis;white-space:nowrap}

/* 게시판 table edit */
.board-tbledit{width:100%;border-top:1px solid #4673cc;color:#1c1c1c;}
.board-tbledit th{height:30px;min-height:30px;padding:0 15px;border-bottom:1px solid #ddd;background:#f7f9fa;font-weight:bold;text-align:right;line-height:18px;}
.board-tbledit td{height:30px;min-height:30px;padding:0 15px;border-bottom:1px solid #ddd;text-align:left;line-height:18px;word-break:break-all;}
.board-tbledit td li{padding:5px 0;}
.board-tbledit td .inline li{display:inline;vertical-align:middle}
.board-tbledit .lh30{height:30px;line-height:30px}
table.alignL th, table.alignL td{text-align:left;}
.icon_file{padding-right:10px;padding-left:18px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_file.gif") no-repeat 0 center;}
.board-tbledit select{height:23px;line-height:23px}
.board-tbledit input{height:21px;border:solid 1px #c6c6c6;line-height:21px!important;}
.board-tbledit th em{color:#FF0004}
.textarea{height:100px;padding:10px;border:solid 1px #ddd;line-height:18px;overflow-y:scroll}

/* page_skip */
.page_skip{height:28px;text-align:center;letter-spacing:2px;width:100%}
.page_skip a{display:inline-block;width:26px;height:26px;border:1px solid #cfcfcf;background:#fff;color:#333;font-size:13px;font-weight:500;text-align:center;line-height:24px;letter-spacing:-1px}
.page_skip a.on{display:inline-block;width:26px;height:26px;background:#0c3b87;color:#fff;border:1px solid #0c3b87}

/* 사이틀 고정 테이블 */
.table-wapper{position:relative;width:100%;padding-top:28px}
.table-container{width:100%;height:105px;overflow:auto}
table.table-content thead tr{position:absolute;top:0;left:0;height:20px}
table.table-content th, table.table-content td{width:90px}

/* 검색 버튼 */
.btnsearch{width:56px;height:26px!important;padding-left:16px;border:solid 1px #000;background:#555555 url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/btn_sch02.gif") no-repeat 0 center;color:#fff;font-size:1em;cursor:pointer}
.btnsearch:hover{background:#555555 url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/btn_sch02.gif") no-repeat 0 center;color:#fff}

/* group_area 버튼영역 */
.group_area{position:relative;height:26px;margin-bottom:10px;line-height:26px}
.group_area li{display:inline-block}
.group_area li select{height:26px;line-height:26px}
.group_area .right{position:absolute;top:0;right:0}
.group_area.center{text-align:center}

/* 버튼 그레이 */
a.btn_g {display:inline-block; min-width:42px; height:24px; padding:0px 7px; overflow:visible; border:1px solid #d5d5d5; background:#fafafa; color:#666666; font-size:12px; text-align:center; line-height:22px; vertical-align:middle; white-space:nowrap; cursor:pointer; letter-spacing:-1px; text-decoration:none}
a.btn_g:hover {background:#f6f6f6;}
.btn_g input {display:inline-block; min-width:42px; height:24px; padding:0px 7px; overflow:visible; border:1px solid #d5d5d5; background:#fafafa; color:#444444; font-size:12px; text-decoration:none; text-align:center; line-height:22px; vertical-align:middle; white-space:nowrap; cursor:pointer; letter-spacing:-1px; font-weight:bold}
.btn_g a:hover {background:#f6f6f6;}
table a.btn_g {display:inline-block; min-width:42px; height:21px; padding:0px 7px; overflow:visible; border:1px solid #d5d5d5; background:#fafafa; color:#666666; font-size:12px; text-align:center; line-height:20px; vertical-align:middle; white-space:nowrap; cursor:pointer; letter-spacing:-1px; text-decoration:none}

/* 버튼 다크그레이 */
a.btn_g{display:inline-block;min-width:42px;height:24px;padding:0px 7px;overflow:visible;border:1px solid #d5d5d5;background:#fafafa;color:#666666;font-size:12px;text-align:center;line-height:22px;vertical-align:middle;white-space:nowrap;cursor:pointer;letter-spacing:-1px;text-decoration:none}
a.btn_g:hover{background:#f6f6f6}
.btn_g a{display:inline-block;min-width:42px;height:24px;padding:0px 7px;overflow:visible;border:1px solid #d5d5d5;background:#fafafa;color:#444444;font-size:12px;text-decoration:none;text-align:center;line-height:22px;vertical-align:middle;white-space:nowrap;cursor:pointer;letter-spacing:-1px;font-weight:bold}
.btn_g a:hover{background:#f6f6f6}
table a.btn_g{display:inline-block;min-width:42px;height:21px;padding:0px 7px;overflow:visible;border:1px solid #d5d5d5;background:#fafafa;color:#666666;font-size:12px;text-align:center;line-height:20px;vertical-align:middle;white-space:nowrap;cursor:pointer;letter-spacing:-1px;text-decoration:none}

/* 게시판 아이콘 버튼 */
[class^="icon-"], [class*=" icon-"] {display:inline-block; width:14px; height:14px; margin-top:1px; *margin-right:.3em; background-image:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/glyphicons-halflings.png"); background-position:14px 14px; line-height:14px; vertical-align:text-top; background-repeat:no-repeat}
.icon-glass {background-position:0 0;}
.icon-music {background-position:-24px 0;}
.icon-search {background-position:-48px 0;}
.icon-envelope {background-position:-72px 0;}
.icon-heart {background-position:-96px 0;}
.icon-star {background-position:-120px 0;}
.icon-star-empty {background-position:-144px 0;}
.icon-user {background-position:-168px 0;}
.icon-film {background-position:-192px 0;}
.icon-th-large {background-position:-216px 0;}
.icon-th {background-position:-240px 0;}
.icon-th-list {background-position:-264px 0;}
.icon-ok {background-position:-288px 0;}
.icon-remove {background-position:-312px 0;}
.icon-zoom-in {background-position:-336px 0;}
.icon-zoom-out {background-position:-360px 0;}
.icon-off {background-position:-384px 0;}
.icon-signal {background-position:-408px 0;}
.icon-cog {background-position:-432px 0;}
.icon-trash {background-position:-456px 0;}
.icon-home {background-position:0 -24px;}
.icon-file {background-position:-24px -24px;}
.icon-time {background-position:-48px -24px;}
.icon-road {background-position:-72px -24px;}
.icon-download-alt {background-position:-96px -24px;}
.icon-download {background-position:-120px -24px;}
.icon-upload {background-position:-144px -24px;}
.icon-inbox {background-position:-168px -24px;}
.icon-play-circle {background-position:-192px -24px;}
.icon-repeat {background-position:-216px -24px;}
.icon-refresh {background-position:-240px -24px;}
.icon-list-alt {background-position:-264px -24px;}
.icon-lock {background-position:-287px -24px;}
.icon-flag {background-position:-312px -24px;}
.icon-headphones {background-position:-336px -24px;}
.icon-volume-off {background-position:-360px -24px;}
.icon-volume-down {background-position:-384px -24px;}
.icon-volume-up {background-position:-408px -24px;}
.icon-qrcode {background-position:-432px -24px;}
.icon-barcode {background-position:-456px -24px;}
.icon-tag {background-position:0 -48px;}
.icon-tags {background-position:-25px -48px;}
.icon-book {background-position:-48px -48px;}
.icon-bookmark {background-position:-72px -48px;}
.icon-print {background-position:-96px -48px;}
.icon-camera {background-position:-120px -48px;}
.icon-font {background-position:-144px -48px;}
.icon-bold {background-position:-167px -48px;}
.icon-italic {background-position:-192px -48px;}
.icon-text-height {background-position:-216px -48px;}
.icon-text-width {background-position:-240px -48px;}
.icon-align-left {background-position:-264px -48px;}
.icon-align-center {background-position:-288px -48px;}
.icon-align-right {background-position:-312px -48px;}
.icon-align-justify {background-position:-336px -48px;}
.icon-list {background-position:-360px -48px;}
.icon-indent-left {background-position:-384px -48px;}
.icon-indent-right {background-position:-408px -48px;}
.icon-facetime-video {background-position:-432px -48px;}
.icon-picture {background-position:-456px -48px;}
.icon-pencil {background-position:0 -72px;}
.icon-map-marker {background-position:-24px -72px;}
.icon-adjust {background-position:-48px -72px;}
.icon-tint {background-position:-72px -72px;}
.icon-edit {background-position:-96px -72px;}
.icon-share {background-position:-120px -72px;}
.icon-check {background-position:-144px -72px;}
.icon-move {background-position:-168px -72px;}
.icon-step-backward {background-position:-192px -72px;}
.icon-fast-backward {background-position:-216px -72px;}
.icon-backward {background-position:-240px -72px;}
.icon-play {background-position:-264px -72px;}
.icon-pause {background-position:-288px -72px;}
.icon-stop {background-position:-312px -72px;}
.icon-forward {background-position:-336px -72px;}
.icon-fast-forward {background-position:-360px -72px;}
.icon-step-forward {background-position:-384px -72px;}
.icon-eject {background-position:-408px -72px;}
.icon-chevron-left {background-position:-432px -72px;}
.icon-chevron-right {background-position:-456px -72px;}
.icon-plus-sign {background-position:0 -96px;}
.icon-minus-sign {background-position:-24px -96px;}
.icon-remove-sign {background-position:-48px -96px;}
.icon-ok-sign {background-position:-72px -96px;}
.icon-question-sign {background-position:-96px -96px;}
.icon-info-sign {background-position:-120px -96px;}
.icon-screenshot {background-position:-144px -96px;}
.icon-remove-circle {background-position:-168px -96px;}
.icon-ok-circle {background-position:-192px -96px;}
.icon-ban-circle {background-position:-216px -96px;}
.icon-arrow-left {background-position:-240px -96px;}
.icon-arrow-right {background-position:-264px -96px;}
.icon-arrow-up {background-position:-289px -96px;}
.icon-arrow-down {background-position:-312px -96px;}
.icon-share-alt {background-position:-336px -96px;}
.icon-resize-full {background-position:-360px -96px;}
.icon-resize-small {background-position:-384px -96px;}
.icon-plus {background-position:-408px -96px;}
.icon-minus {background-position:-433px -96px;}
.icon-asterisk {background-position:-456px -96px;}
.icon-exclamation-sign {background-position:0 -120px;}
.icon-gift {background-position:-24px -120px;}
.icon-leaf {background-position:-48px -120px;}
.icon-fire {background-position:-72px -120px;}
.icon-eye-open {background-position:-96px -120px;}
.icon-eye-close {background-position:-120px -120px;}
.icon-warning-sign {background-position:-144px -120px;}
.icon-plane {background-position:-168px -120px;}
.icon-calendar {background-position:-192px -120px;}
.icon-random {width:16px; background-position:-216px -120px;}
.icon-comment {background-position:-240px -120px;}
.icon-magnet {background-position:-264px -120px;}
.icon-chevron-up {background-position:-288px -120px;}
.icon-chevron-down {background-position:-313px -119px;}
.icon-retweet {background-position:-336px -120px;}
.icon-shopping-cart {background-position:-360px -120px;}
.icon-folder-close {width:16px; background-position:-384px -120px;}
.icon-folder-open {width:16px; background-position:-408px -120px;}
.icon-resize-vertical {background-position:-432px -119px;}
.icon-resize-horizontal {background-position:-456px -118px;}
.icon-hdd {background-position:0 -144px;}
.icon-bullhorn {background-position:-24px -144px;}
.icon-bell {background-position:-48px -144px;}
.icon-certificate {background-position:-72px -144px;}
.icon-thumbs-up {background-position:-96px -144px;}
.icon-thumbs-down {background-position:-120px -144px;}
.icon-hand-right {background-position:-144px -144px;}
.icon-hand-left {background-position:-168px -144px;}
.icon-hand-up {background-position:-192px -144px;}
.icon-hand-down {background-position:-216px -144px;}
.icon-circle-arrow-right {background-position:-240px -144px;}
.icon-circle-arrow-left {background-position:-264px -144px;}
.icon-circle-arrow-up {background-position:-288px -144px;}
.icon-circle-arrow-down {background-position:-312px -144px;}
.icon-globe {background-position:-336px -144px;}
.icon-wrench {background-position:-360px -144px;}
.icon-tasks {background-position:-384px -144px;}
.icon-filter {background-position:-408px -144px;}
.icon-briefcase {background-position:-432px -144px;}
.icon-fullscreen {background-position:-456px -144px;}

/* 팝업 */
/*.bg_pop {background:#3d4a5d}*/
#bg_layer{display:block;position:fixed;z-index:999999;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,0.7);overflow:hidden}
#pop_wrap{background:#fff;z-index:9999999}
#pop_wrap .pop_top{width:100%;height:50px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bg_pop_tit.png") repeat-x;}
#pop_wrap .pop_top h1{position:absolute;top:12px;left:20px;color:#fff;font-size:19px;font-weight:normal}
#pop_wrap .pop_top .btn{position:absolute;top:18px;right:15px}
#pop_wrap h2{padding-left:20px;color:#333;font-size:17px;font-weight:600;margin-bottom:15px}
#pop_wrap .pop_content{padding:20px}
#pop_wrap .tit{color:#333 !important;font-weight:600;margin-bottom:10px}
#pop_wrap .info_area{position:relative;height:400px;padding:20px;border:1px solid #e4e3e3;font-size:13px;line-height:20px;overflow-y:scroll}
#pop_wrap .info_area2{position:relative;padding:20px;border:1px solid #e4e3e3;font-size:13px;line-height:20px}
#pop_wrap .btn_c{width:100%;text-align:center;margin-top:15px}
#pop_wrap .btn_r{width:100%;text-align:right;margin-top:15px}
#pop_wrap a.btn_pop{display:inline-block;width:100px;height:36px;border-radius:3px;background:#00559d;color:#fff;font-size:14px;font-weight:600;text-align:center;line-height:36px;text-decoration:none}
#pop_wrap .btn_c{width:100%;text-align:center;margin-top:15px}
#pop_wrap .btn_r{width:100%;text-align:right;margin-top:15px}
#pop_wrap a.btn_pop{display:inline-block;width:100px;height:36px;border-radius:3px;background:#00559d;color:#fff;font-size:14px;font-weight:600;text-align:center;line-height:36px;text-decoration:none}
.btn_close_pop{display:block;width:14px;height:14px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_close_pop.png") no-repeat}
.btn_pop01{display:inline-block;position:relative;min-width:80px;height:32px;padding:0 30px;border:1px solid #279498;border-radius:3px;background:#279498;color:#fff;font-size:14px;font-weight:600;text-align:center;vertical-align:middle;text-decoration:none}
.btn_pop01:hover{border:1px solid #1c7e82;background:#1c7e82}
.btn_pop02{display:inline-block;position:relative;min-width:80px;height:32px;padding:0 30px;border:1px solid #ce4944;border-radius:3px;background:#ce4944;color:#fff;font-size:14px;font-weight:600;text-align:center;vertical-align:middle;text-decoration:none}
.btn_pop02:hover{border:1px solid #4165ba;background:#4165ba}

/* 설문조사 */
.survey_arrow_area{position:relative;background:#e4edf4;height:26px;width:352px;-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px;margin-bottom:20px}
.survey_arrow_area li{float:left;margin-bottom:8px;width:10%;text-align:center;line-height:26px;vertical-align:middle}
.survey_arrow_area li.survey_title{color:#565656;font-size:1.2em;width:80%;float:left;font-weight:600}
.survey_arrow_area li img{margin-top:-5px}
.survey_area {float:left;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../../../images/ico_survey.png") no-repeat 94% 0;width:100%;height:93px;}
.survey_area li{width:210px;margin-left:20px;margin-bottom:10px;}
.survey_area li em{color:#1197d4}
.survey_area li.btn{margin-top:10px}
.slider-prev{position: relative; top:-135px; left: 10px;}
.slider-next{position: relative; top:-135px; left: 331px;}

table td.bc-s-title div{
  float: left;
  padding-right: 5px;
}

table td.bc-s-title #fontTitle{
  float: left;
  padding-right: 5px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}

table#boardTypeList{
	table-layout:fixed;
}

table#boardTypeList td.bc-s-postdelview span, table#boardTypeList td.bc-s-postdelview{
	text-decoration: line-through;
    color: #ccc;	
}	

table#boardTypeList td{
  cursor: pointer;	
}</style>

<style media="" data-href="/eXPortal/portalresources/theme/css/type_hyw_layout.css">/*# sourceURL=/eXPortal/portalresources/theme/css/type_hyw_layout.css */
/*@ sourceURL=/eXPortal/portalresources/theme/css/type_hyw_layout.css */
@CHARSET "UTF-8";

/* CSS Document */

/* ------------------------------------------------------------
 * Name      : type_a_layout.css
 * Desc      : 한양여자대학교 포털시스템
 * Created   : 2018/03/06 by YSK
 * Updated   : 
------------------------------------------------------------ */

/* wrap */
* {margin:0;padding:0}
html,body{height:100%} 
body{font-family:"맑은고딕", Malgun Gothic, sans-serif;font-size:12px;color:#333;-webkit-text-size-adjust:none;-webkit-tap-highlight-color:rgba(0, 0, 0, 0)} 
body,p,h1,h2,h3,h4,h5,h6,menu,ul,ol,li,dl,dt,dd,table,th,td,form,fieldset,legend,input,textarea,button{margin:0;padding:0}
header, footer, section, article, aside, nav, hgroup, details, menu, figure, figcaption{display:block}
#wrap_main{position:relative;width:1181px;margin:0 auto;min-height:86%}
#wrap_sub{position:relative;width:1181px;min-width:1181px;margin:0 auto;min-height:100%}
#top_wrap{position:relative;width:100%;margin:0 auto;height:118px;min-width:1181px;max-width:1181px}
#content_main{min-height:860px}
#content_main_top{width:1181px;height:205px;margin:15px auto;background:#f7f7f7;box-sizing:border-box;overflow:hidden}
#top_portlet_wrap{position:relative;width:1200px;height:266px;margin-bottom:7px;}
#top_portlet_wrap:after{display:block;clear:both;visibility:hidden;content:'.';height:0}
#content_sub{float:left;height:100%;min-height:100%;padding-bottom:40px;margin-bottom:0;border-bottom:solid 1px #ddd}
#play{zoom:1;width:1195px}
#play:after{display:block;clear:both;visibility:hidden;content:'.';height:0}

/* 테마 */
.main_bg{position:relative;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/theme01.png") repeat-x, url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/main_bg.png")}
.sub{position:relative; background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/sub.jpg") repeat-x}

/* sub layout */
#content_area{position:relative;height:100%;min-height:500px;margin-top:30px}
#content{position:relative;top:0;width:960px;margin-left:220px;line-height:18px}
#wrap_sub #top_wrap_mobile{display:none}
#wrap_sub #top_wrap{display:block}
#wrap_sub .info_box_mobile{display:none}
#wrap_sub #footer_area{display:block}
#wrap_sub #footer_mobile{display:none}

/* GNB */
#top_wrap_join .top_menu_area{position:relative;width:100%;height:79px}
#top_wrap_join .top_menu_area h1{position:absolute;top:18px;left:0}
.GNB{position:relative;width:100%;height:70px;display:block;}
.GNB h1{position:absolute;top:22px;left:0}
.GNB h1 img{margin-right:11px}
.GNB h2{display:none;width:0;height:0;overflow:hidden}
.GNB ul{display:inline-block;float:right;margin-top:30px;position:relative;height:20px;}
.GNB ul li{float:left;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bg_gnb.png") no-repeat right 50%;padding:0 7px;line-height:20px;text-align:center;vertical-align:middle;font-size:12px;color:#8f8f8f;color:#fff;}
.GNB ul li.none{background:none;padding-right:4px}
.GNB ul li a{color:#8f8f8f}
.GNB ul li a:hover{color:#555;text-decoration:none}

/* 모바일 헤더 */
#top_wrap_mobile{width:100%;position:relative;background:#fff; height:54px;display:block}
#top_wrap_mobile ul{display:block;width:100%;text-align:center}
#top_wrap_mobile ul li{display:inline-block}
#top_wrap_mobile ul li.lbtn{float:left;position:relative;width:56px}
#top_wrap_mobile ul li.logo{position:absolute;top:8px;left:50%;margin-left:-90px}
#top_wrap_mobile ul li.logo a{display:block;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/logo_m.png") no-repeat;width:181px;height:36px; font-size:0;}
#top_wrap_mobile ul li.rbtn{width:56px}
#top_wrap_mobile h2{display:none;width:0;height:0;overflow:hidden}
a.btn_navbar{display:inline-block;width:56px;min-width:56px;max-width:56px;height:56px;line-height:56px;text-align:center;text-decoration:none}
a.btn_menu{position:absolute;top:0;right:0;splay:inline-block;width:56px;height:56px;line-height:56px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_menu.png") no-repeat 50% 50%;text-align:center;text-decoration:none}
a.btn_menu span{font-size:0}
a.btn_logout{position:absolute;top:0;right:0;splay:inline-block;width:56px;height:56px;line-height:56px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_logout.png") no-repeat 50% 50%;text-align:center;text-decoration:none}
a.btn_logout span{font-size:0}

/* 모바일 왼메뉴 */
.menu_mobile{display:none}
.menu_mobile .container_area{position:fixed;top:0;left:0;width:100%;height:100%;z-index:1000;box-sizing:border-box}
.menu_mobile .container{position:relative;height:100%;margin-right:30%;border-right:1px solid #000}
.menu_mobile h2 {display:none}
.menu_mobile .title{height:57px;line-height:57px;padding-left:20px;background:#2592dc url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/info_bg.png") no-repeat right;border-bottom:1px solid #59ace4;font-size:13px;color:#fff}
.menu_mobile .title em{font-size:16px;font-weight:600;color:#abcffd}
.menu_mobile a{display:block;word-wrap:break-word}
.menu_mobile .close{display:block;position:absolute;right:16px;top:20px;z-index:100;width:13px;height:13px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/btn_close_menu.png") no-repeat 50% 50%}
.menu_mobile .close span{font-size:0;position:absolute;top:-9999px}
.menu_mobile .dim{position:fixed;top:0;left:0;z-index:999;width:100%;height:100%;background-color:#000;opacity:0.5;filter:Alpha(opacity=50)}	
.menuwrap{position:relative;height:100%;background-color:#fdfbfb}
.menuwrap dl{height:100%;background:#fff}
.menuwrap dl:after{content:"";display:block;clear:both;height:0;visibility:hidden}
.menuwrap dl dt {background:#2592dc;padding:10px 0 9px 20px;font-size:13px;color:#fff;border-bottom:1px solid #1866a6}
.menuwrap dl dt em{font-size:16px;font-weight:600;color:#abcffd}
.menuwrap dl dt a{padding:10px 0 9px 13px;background:#2592dc;border-bottom:1px solid #59ace4;height:100%;text-decoration:none}
.menuwrap dl dd a{padding:9px 0 8px 20px;border-bottom:1px solid #e7e6e6;height:100%}
.menuwrap dl dt, .menuwrap dl dd{position:relative}
.menuwrap dl dt a{background:#fff;font-size:15px;color:#333;font-weight:600}
.menuwrap dl dt a:hover{color:#1a44a0}
.menuwrap dl dt a:after{content:'.';display:block;overflow:hidden;position:absolute;top:16px;right:16px;width:5px;height:10px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/arrow_memu.png") no-repeat;z-index:1000}
.menuwrap dl dd a{background:#fdfbfb;font-size:15px;color:#333;font-weight:600}
.menuwrap dl dd a.on, .menuwrap dl dd a:hover{background:#1866a6 no-repeat right 50%;color:#fff;text-decoration:none}
.menuwrap dl dd a.on:before{content:"";display:block;position:absolute;top:-1px;left:0;border-top:1px solid #115597;width:100%;height:1px} 
.menuwrap dl dd a.on:after{content:"";display:block;position:absolute;bottom:-1px;left:0;border-top:1px solid #e7e6e6;width:100%;height:1px}
.menuwrap dl dd .depth02 {background:#eaf1f9; padding:5px 0}
.menuwrap dl dd .depth02 li a{background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bul01.png") no-repeat 20px 50%;padding:5px 0 4px 30px;font-size:14px;color:#333;border-bottom:0}
.menuwrap dl dd .depth02 li a:hover, .menuwrap dl dd .depth02 .on {color:#0071bd;border-bottom:0}

/* Lnb */
#left_menu_wrap{position:relative;float:left;width:200px;min-height:100%;background:#fff;border-top-left-radius:12px;border-top-right-radius:12px;/* overflow:hidden */}
#left_menu_wrap .tit{position:relative;width:200px;height:63px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bg_lnb_title.png") no-repeat 0 0}
#left_menu_wrap .tit h2{width:200px;text-align:center;padding-top:18px;font-size:22px;color:#fff;font-weight:500}
#left_menu_wrap .lnb{position:relative;float:left;width:200px;border-bottom:1px solid #d7d8dc}
#left_menu_wrap .lnb dl{float:left}
/* #left_menu_wrap .lnb dl dt.on{background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bg_lnb_on.gif") repeat-y 0 0;border:1px solid #3560c6;font-weight:600} */
#left_menu_wrap .lnb dl dt.on{background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bg_lnb_on.png") no-repeat 0 0;}
#left_menu_wrap .lnb dl dt.on a{color:#fff !important}
#left_menu_wrap .lnb dl dt{position:relative;width:155px;border:1px solid #d7d8dc;color:#333;font-size:13px;font-weight:500;padding:12px 15px 12px 28px;margin-bottom:-1px;letter-spacing:-1px}
#left_menu_wrap .lnb dl dt.first{border-top:none}
#left_menu_wrap .lnb dl dt a{color:#444}
#left_menu_wrap .lnb dl dt a:hover{text-decoration:none;color:#446ed3}
#left_menu_wrap .lnb dl dt.last{border-bottom:none}
.second_menu{width:198px;background:#f3f5f9;padding:15px 0 4px 0;border-left:1px solid #d7d8dc;border-right:1px solid #d7d8dc}
.second_menu .on{width:170px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_bul_lnb_on.gif") no-repeat 14px 7px;padding-left:22px}
.second_menu .on a,.second_menu .on a:hover{color:#3053a6;font-weight:600}
.second_menu li{display:block;width:170px;clear:both;background: url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_bul_lnb_off.gif") no-repeat 14px 7px;font-size:12px;padding:0 10px 11px 22px;font-weight:500}
.second_menu li a{display:inline-block;color:#666}
.second_menu li a:hover{color:#3053a6;text-decoration:none}
.toggle .open{margin-top:0;position:absolute;left:-40px;top:62px;z-index:100 !important}
.toggle .close{margin-top:0;position:absolute;left:200px;top:62px;z-index:100}
.ico_lnb_none{position:absolute;top:14px;left:7px;width:15px;height:15px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_lnb_none.png") no-repeat;font-size:0}
.ico_lnb_open{position:absolute;top:14px;left:7px;width:15px;height:15px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_lnb_open.png") no-repeat;font-size:0}
.ico_lnb_close{position:absolute;top:14px;left:7px;width:15px;height:15px;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/ico_lnb_close.png") no-repeat;font-size:0}

/* 포틀릿 */
.portlet_all_wrap{width:100%;min-height:400px}
.portlet_wrap_area{position:relative;width:1181px;margin:0 auto}
.ep-section{clear:both;display:table;width:100%;border:none}
.ep-subsection{clear:both;display:table-cell;vertical-align:top}

/* 건너뛰기 */
#skipnavi a{width:100%;position:absolute;display:block;left:0;top:-10000px;background:#2c7bbb;color:#fff;font-weight:600;font-size:11px;text-align:center;z-index:2100}
#skipnavi a:hover, #skipnavi a:focus, #skipnavi a:active{position:absolute;display:block;top:0;left:0;width:100%;padding:5px 0;background:#2c7bbb;color:#fff}
#skipnavi h1{display:none;width:0;height:0;overflow:hidden}

/* 주메뉴 */
.major_menu_area{position:relative;width:1200px;height:48px;overflow:hidden}	
.major_menu_area ul.main_menu01{display:block;height:48px;line-height:48px;font-size:16px}
.major_menu_area ul.main_menu01 li {display:inline-block;margin-left:0;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bg_nav.png") no-repeat left 50%;color:#fff;font-weight:600;text-align:center;} /*메뉴 5개인 경우*/
.major_menu_area ul.main_menu01 li a{color:#fff}
.major_menu_area ul.main_menu01 li a:hover{color:#40aaf2;text-decoration:none}
.major_menu_area ul.main_menu01 li:last-child{border-right:solid 1px #4986b9}


/* 풋터 */
#footer_area{float:left;width:100%;margin-top:5px}
#footer_area .footer{position:relative;width:1181px;height:49px;margin:0 auto;font-weight:normal}
#footer_area .footer .logo{position:absolute;left:0;top:6px}
#footer_area .footer .info{position:absolute;top:7px;left:250px;width:780px;text-align:left;}
#footer_area .footer .info li {display:inline-block;color:#999;line-height:16px;font-size:12px}
.footer_mobile{height:86px;padding:10px;border-top:1px solid #ccc;text-align:center}
#footer_mobile li{width:100%;padding:5px 10px;border-top:solid 1px #ddd;text-align:center}
#footer_area .footer .info2{position:absolute;top:7px;left:730px;width:390px;text-align:left;}
#footer_area .footer .info2 li {display:inline-block;color:#999;line-height:16px;font-size:12px}

@media (min-width:768px){
#top_wrap_mobile{display:none}
#footer_mobile{display:none}    
.info_box_mobile{display:none}
.sns_box_mobile{display:none}
.menu_mobile{display:none}
}	

@media only all and (max-width:767px){
#wrap_main{float:none;width:auto}
#content_main{float:none;width:auto}
.major_menu_area{display:none}
#content_main_top{width:auto;height:100%;margin:1px 0 6px 0;border-radius:0}
#top_portlet_wrap{display:none}
.portlet_wrap_area{float:none !important;width:100% !important;min-width:100%;max-width:100%;padding-bottom:0}
#play{width:100% !important}
ul.list{float:none !important;width:100% !important;margin-right:0}
div.mod{float:none;width:100% !important;height:100%;border-top:1px solid #e5e6e7;border-right:none;border-bottom:none;border-left:none;margin-bottom:0;border-radius:0}
.item{float:none;width:100% !important}
.bg_main{background:none}
.board_main_area{clear:both;height:100%;overflow-y:auto}
.board_main_area2{clear:both;height:100%;overflow-y:auto}
#top_wrap{display:none}
#top_wrap_mobile{display:block}
.major_menu_area{display:none}
#content_main_top .state_box, .state_box2, .state_box3, .chart_box, .lecture_area{float:left;display:block;width:100%;height:auto;margin:0 auto;margin-top:8px}
#content_main_top .indiv_area{display:block;width:100%;height:auto;border-bottom:solid 1px #ededed}
#content_main_top .state_box li, .state_box2 li{width:33.4%}
#content_main_top .lecture_box{width:100%}
#content_main_top .notice_box {float:0;background:#115597}
#content_main_top .notice_box ul{position:absolute;right:5px;float:right;text-align:right;font-size:0;}
#content_main_top .notice_box li:nth-child(1){padding-right:15px;border-right:solid 1px #1e7cc0}
#footer_area{display:none}
.bg_layer{display:none}
.indiv_info .info_01 li.btn a.btn02 {display:none;}
.lecture_box2{width:98%}
.board_area{border-top:none;border-right:none;border-bottom:none;border-left:none}
.board_area dl.board_area_box{margin-top:0}
.board_area .board_box{margin:0;padding:0 35px 0 0}
.board_area .board_box h2{display:none}
.board_area .board_box .btn{display:none}
.bord_list_area{margin:0 12px 0 0}
.portlet-body{margin-left:-20px;}
.book_area{margin:-7px 0 0 0}
.community{margin-top:0}
.request_area{margin-top:0}
.book_scr_box{margin-top:0}
.board_tab_area li {width:32.7%;margin-bottom:-1px;}
.board_tab_area2 li{width:49.4%;margin-top:-1px;}
.board_tab_area.w02 {float:0;width:100% !important;} /* 구성원검색 탭 */
.board_view2{ width:99.2%;}
.board_view2 dd {height:42px;overflow:hidden;text-overflow:ellipsis}
.survey-position{margin-left:-10px;}
.slider-prev{margin-left:7px;}
.survey_arrow_area{height:40px;}
}

@media (min-width:768px) and (max-width:979px){
#wrap_join{padding:0 10px 0 10px;float:none;width:auto}
#wrap_main{float:none;width:auto}
}	

/* 아이폰4 가로 */
@media (min-width:406px) and (max-width:574px){
.btn_board_c{margin-top:20px}
/* .bord_list_area li dd{display:none} */
}

/* 모바일 세로 */
@media only all and (max-width:405px){
#content_main_top .notice_box ul{padding-top:5px}
#content_main_top .notice_box li{width:100%;font-size:12px}
#content_main_top .notice_box li a{font-size:14px}
#content_main_top .state_box li, .state_box2 li{width:49.98%}	
#content_main_top .lecture_list dt{float:left;padding-left:10px}
#content_main_top .lecture_list dd{float:left;width:30%;padding-left:5px}
#content_main_top .lecture_list.end{border-bottom:none}
/* .bord_list_area li dd{display:none} */
.btn_board_c{margin-top:20px}
a.btn_ok{display:block;margin:0 auto;width:92%;margin-bottom:6px}
a.btn_ok2{display:block;margin:0 auto;width:92%;margin-bottom:6px}
a.btn_cancel{display:block;margin:0 auto;width:92%;margin-bottom:6px}
a.btn_cancel2{display:block;margin:0 auto;width:92%;margin-bottom:6px}
a.btn_scr{display:block;margin:0 auto;width:92%;margin-bottom:6px}
.join_row2 .fail_box{padding:40px 10px 25px 10px;word-break:break-all}
.join_row .rbtn{display:block;margin:-5px 0 15px 50px;position:relative}
.join_row.certificate{height:84px}
.join_row .rbtn2{position:absolute;left:100px;top:44px;min-width:90px}
.join_row .rbtn3{position:absolute;left:10px;top:44px;min-width:90px}
.join_row .rbtn4{display:block;margin:-5px 0 15px 20px;position:relative}
a.btn_gray2{display:block;margin:0 auto;width:100%;margin-bottom:6px}
.join_row2 .finish_box{width:92%;padding-left:10px;padding-right:10px}
.join_row2 .info_box{width:92%;padding-left:10px;padding-right:10px}
.join_row2 .check{padding:2px 10px 30px 10px}
.join_from .ico_pw{position:relative;text-align:center;margin-bottom:10px}
.join_from .pw_box{margin:0 0 16px 0;padding:30px 0 20px 0}
.tab_join_box .tab_join li, .tab_join_box .tab_join li.on{width:100%;margin-bottom:-1px}
.tab_join_box .tab_join li a{line-height:28px;margin-left:-1px;padding:5px 0 4px}
.tab_join_box .tab_join li:last-child, .tab_join_box .tab_join li.on:last-child{margin-bottom:0}
.join_from .pw_box .ico{position:absolute;top:20px;left:50%;margin-left:-46px}
.join_from .pw_box .txt{margin-top:84px;margin-left:0;margin-right:0;padding:0 15px 0 15px}
.join_from .pw_box .txt2{margin-top:84px;margin-left:0;margin-right:0;padding:0 15px 0 15px}
.join_from .certi_box .ico{position:absolute;top:20px;left:50%;margin-left:-48px}
.join_from .certi_box .txt{margin-top:74px;margin-left:0;margin-right:0;padding:0 15px 0 15px}
.join_from .withdrawal_box .ico{position:absolute;top:30px;left:50%;margin-left:-49px}
.join_from .withdrawal_box .txt{float:left;margin-top:100px;margin-left:0;padding:0 15px 0 15px}
.join_row.email{height:80px}
.join_row .rsel{display:block;position:absolute;top:36px;left:0;width:80%}
.vboard td span.ico01, .vboard td span.ico03, .vboard td span.ico07, .vboard td span.ico10{display:none}
.book_box{background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bg_book_m.gif") no-repeat 0 12px;width:290px;height:139px}
.book_box .book{float:left;margin:13px 12px 0 24px}
.book_box .book li{float:left;padding-right:6px;width:52px;height:71px}
.bord_list_area li dl dt{width:66%}
.lecture_list2 dd{width:100%;/* padding-left:17px */}
.survey-position{margin-left:-10px;}
.slider-prev{margin-left:7px;}
.survey_arrow_area{height:40px;}
}

/* 아이폰4,5 세로 */
@media (max-width:320px){
body {min-width:240px}
#top_wrap_mobile ul li.logo{position:absolute;top:16px;left:50%;margin-left:-65px}
#top_wrap_mobile ul li.logo a{display:block;background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/logo_m.png") no-repeat;background-size:cover;width:130px;height:26px; font-size:0;}
.menu_mobile .container{margin-right:15%}
.join_row .ico_time{display:block;margin:-7px 0 10px 60px;position:relative}
.title .visual{display:none}
#content_main_top .notice_box ul{padding-top:5px}
#content_main_top .notice_box li{width:100%;font-size:12px}
#content_main_top .notice_box li a{font-size:14px}
#content_main_top .state_box li{width:49.98%}
#content_main_top .state_box .txt{display:none}
dl.attend_01{float:none;width:100%;margin-right:0}
dl.attend_02{float:none;width:100%;margin-top:5px}
.bord_list_area li dl dt dt{width:64%}
.bord_list_area2 li dl dt{width:100%}
/* .bord_list_area li dl dd,.bord_list_area2 li dl dd{display:none} */
.sns_box_mobile{border-bottom:none}
.sns_box_mobile li{width:100%;border-right:none;border-bottom:1px solid #e9e9e9}
.request_area .ico_box{position:absolute;top:0;left:50%;margin-left:-31px}
.request_area dl{position:relative;width:100%;padding-top:76px;left:0}
.request_area dl dt{text-align:center}
.request_area dl dd{text-align:center}
.lecture_box{margin-right:-80px}
.board_box2{margin-right:-70px}
.book_box{background:url("https://portal.hywoman.ac.kr/eXPortal/portalresources/theme/css/../images/hyw/bg_book_m.gif") no-repeat 0 -6px;width:230px;height:115px}
.book_box .book{float:left;margin:13px 12px 0 24px}
.book_box .book li{float:left;padding-right:6px;width:42px;height:58px}
/* .bord_list_area li dd{display:none} */
.indiv_info .info_01 li.btn a.btn01{background:#00467f;padding-left:0}	
.survey-position{margin-left:-10px;}
.slider-prev{margin-left:7px;}
.survey_arrow_area{height:40px;}
}

.go{position:absolute;right:0;top:7px;font-weight: bold;}
.sel_go{font-size:12px;color:#999;width:150px;font-weight: bold;}
</style>



<script type="text/javascript">

exportalUI.contextPath = "";

</script>

<script type="text/javascript">

var changeDtVal = 0;
var handle;
var rollTime = 7500;
var schNum = 0;
var now;
var btnCnt;

$(document).ready(function(){
	getServerTime();
	getCurrentTime();
	getHiworksInfo();
	getInfo();
	getCreditState();
	
	getBookCnt();
	
	playSchRoll();
	
	var data = {"cii_pnt":"100", "tlsn_pnt":"100", "rest_pnt":"100", "cmp_pnt":"5", "tlsn_gnl_pnt":"5", "tlsn_mjr_ttc_pnt":"5", "tlsn_cult_pnt":"5", "rest_gnl_pnt":"5", "rest_mjr_ttc_pnt":"5", "rest_cult_pnt":"5", "cmp_gnl_pnt":"5", "cmp_mjr_ttc_pnt":"5", "cmp_cult_pnt":"5", "cii_gnl_pnt":"5", "cii_mjr_ttc_pnt":"5", "cii_cult_pnt":"5"};;
	
	$('#bookLoan').click(function(){
		window.open("/ssoBookURL.jsp", "cnt");
	});
	
	$('#bookDelay').click(function(){
		window.open("/ssoBookURL.jsp", "cnt");
	});
});

function btnStop(){
	clearInterval(handle);
	$('#pageBtnStop').show();
	$('#pageBtnStart').hide();
};

function btnStart(){
	handle = setInterval(function(){playSchRoll();}, rollTime);
	$('#pageBtnStop').hide();
	$('#pageBtnStart').show();
};

function getBookCnt(){
	$.ajax({
		type : "post"
		, async : false
		, url : "/hyw/BookLoan.do"
		, dataType : "json"
		, cache : false
		, success : function(data) {
			$('#bookLoan').text(data.loanCount);
			$('#bookDelay').text(data.delayCount);
		}
		, error : function() {
			
		}
	})
}

function getHiworksInfo() {
	var getHiworksInfoAjax = $.ajax({
		type : "post"
		, async : false
		, url : "/hyw/HiworksInfo.do"
		, dataType : "json"
		, cache : false
		, success : function(data) {
			if(data.hiworkNoticeCnt != null && data.hiworkNoticeCnt.length > 0){	//하이유톡 공지사항 안읽은 건수
				$("#hiworks_notice_cnt").text(data.hiworkNoticeCnt[0].cnt);
			} else {
				$("#hiworks_notice_cnt").text("-");
			}
			if(data.hiworkFeedCnt != null && data.hiworkFeedCnt.length > 0) {	//하이유톡 피드 안읽은 건수
				$("#hiworks_feed_cnt").text(data.hiworkFeedCnt[0].cnt);
			} else {
				$("#hiworks_feed_cnt").text("-");
			}
		
		}
		, error : function() {
			$("#hiworks_notice_cnt").text("-");
			$("#hiworks_feed_cnt").text("-");
		}
	})
	
}

function getServerTime(){
	$.ajax({
		type : "post"
		, async : false
		, url : "/hyw/getTime.do"
		, dataType : "json"
		, cache : true
		, success : function(data) {
			now = new Date(data.dTime);
		}
		, error : function() {
			now = new Date();
		}
 	});
}

function getCurrentTime() {
	var currentTime = document.getElementById("currentTime");
	now.setTime(now.getTime() + 1 * 1000);
	currentTime.innerHTML = "현재시간 : " + now.getFullYear() + "년 "
			+ (now.getMonth() + 1) + "월 " + now.getDate() + "일 "
			+ now.getHours() + "시 " + now.getMinutes() + "분 "
			+ now.getSeconds() + "초";
	setTimeout("getCurrentTime()", 1000); // 1초마다  함수 호출
}

function getInfo(){
	$.ajax({
		type : "post"
		, async : false
		, url : "/hyw/Info.do?changeDtVal="+changeDtVal
		, dataType : "json"
		, cache : false
		, success : function (data) {
			$("#assistant_main_lecture_box").empty();
			$("#layerPopup").empty();
			$(".btn02").html("");
			
			schListSize = data.CollegescheduleList.length;
			
			$('#pageBtnStop').remove();
			$('#pageBtnStart').remove();
			
			if(schListSize > 0){
				// S : 학사일정 페이징 처리 버튼 
				btnCnt = Math.floor(schListSize / 4);
				if(schListSize % 4 != 0)	btnCnt += 1;
				if(btnCnt != 1){
					
					$("<li id=\"pageBtnStop\" style=\"display:none;float:left;margin-right:10px;text-align:center;\"><a onclick=\"btnStart();\" page-index=\"\" style=\"cursor:pointer;\"><img src=\"/eXPortal/images/common/ico_start.png\" alt=\"01\"></a></li>").appendTo(".btn03");
					$("<li id=\"pageBtnStart\" style=\"display:inline-block;float:left;margin-right:10px;text-align:center;\"><a onclick=\"btnStop();\" page-index=\"\" style=\"cursor:pointer;\"><img src=\"/eXPortal/images/common/ico_stop.png\" alt=\"01\"></a></li>").appendTo(".btn03");
					
					for(var i=0; i<btnCnt; i++){
						$("<li id=\"pageBtn"+i+"\" style=\"display:inline-block;float:left;margin-right:10px;text-align:center;\"><a onclick=\"schPageChange(this);\" page-index=\""+ i +"\" style=\"cursor:pointer;\"><img src=\"/eXPortal/images/bl.png\" alt=\"01\"></a></li>").appendTo(".btn02");
					}
					/* $("<li id=\"contents\"><a style=\"cursor:pointer;\" onclick=\"layerPopupShow();\" title=\"전체보기\"><img src=\"/eXPortal/images/cwu/plus.png\" alt=\"01\"></a></li><div id=\"layerPopup\"><div class=\"pop_top\"><h1 id=\"layerMonth\">"+data.mm+"월</h1><p class=\"btn\"><a onclick=\"layerPopupHide();\" class=\"btn_close_pop\"><span class=\"blind\">팝업 닫기</span></a></p></div></div>").appendTo(".btn02"); */
					$(".btn02 li img").first().attr("src", "/eXPortal/images/bl_on.png");
					handle = setInterval(function(){playSchRoll();}, rollTime);
				}
				// E : 학사일정 페이징 처리 버튼
				
	          	for(var i=0;schListSize>i;i++){
	          		$("<dl class=\"lecture_list\" id=\"schList"+i+"\" title=\""+data.CollegescheduleList[i].schaff_sche_nm+"\"><dt>"+data.CollegescheduleList[i].tot_dt+"</dt><dd>" + data.CollegescheduleList[i].schaff_sche_nm+"</dd></dl>").appendTo("#assistant_main_lecture_box");
	          		$("<dl class=\"lecture_list\" id=\"schList"+i+"\" title=\""+data.CollegescheduleList[i].schaff_sche_nm+"\"><dt>"+data.CollegescheduleList[i].tot_dt+"</dt><dd>" + data.CollegescheduleList[i].schaff_sche_nm+"</dd></dl>").appendTo("#layerPopup");
	  			}
	          	$("<button class=\"btn_pop01\" type=\"button\" onclick=\"layerPopupHide();\">닫기</button>").appendTo("#layerPopup");
	        } else{
	        	$("<dl class=\"lecture_list\" style=\"text-align: center; width: 100%;\">조회된 학사일정이 없습니다.</dl>").appendTo("#assistant_main_lecture_box"); 
	        }
			$("#lecture_day").text(data.yyyy+"."+data.mm);
			$("#layerPopup").hide();
		}
		, error : function(jqXHR, textStatus, errorThrown) {
			$("#lecture_arrow_area").remove();
			$("<dl class=\"lecture_list\" style=\"text-align: center; width: 100%;\">데이터를 불러오는데 실패했습니다.</dl>").appendTo("#assistant_main_lecture_box"); 			
		}
	});
}

function mousePointPos(){
	clearInterval(handle);
	handle = setInterval(function(){playSchRoll();}, rollTime);
}
function playSchRoll(){
	var pageBtnId = "pageBtn"+schNum;
	$("#"+pageBtnId+" a").trigger("click");
	schNum++;
	if(schNum == btnCnt)	
		schNum=0;
}
function schPageChange(obj){
	var pageIndex = $(obj).attr("page-index");
	var minSize = pageIndex * 4;
	var maxSize = minSize + 4;
	
	$except = $(".btn02 li:eq("+pageIndex+") img");
	$except.attr("src", "/eXPortal/images/bl_on.png");	
	$(".btn02 li img").not($except).attr("src", "/eXPortal/images/bl.png");
	/* $(".btn02 li img").last().attr("src", "/eXPortal/images/cwu/plus.png"); */
	
	$("#assistant_main_lecture_box dl").hide();
	for(var i=minSize; i<maxSize; i++){
		$("#assistant_main_lecture_box dl").eq(i).show();
	}
}

function Lecture_YearMMPrev(){
	schNum = 0;
	changeDtVal = changeDtVal-1;
	clearInterval(handle);
	getInfo();
	mousePointPos();
}

function Lecture_YearMMNext(){
	schNum = 0;
	changeDtVal = changeDtVal+1;
	clearInterval(handle);
	getInfo();
	mousePointPos();
}

function getCreditState() {
	var getInfoAjax = $.ajax({
		type : "post"
		, async : false
		, url : "/hyw/CreditState.do"
		, dataType : "json"
		, cache : false
		, success : function(data) {
			setCreditreg(data);	
		}
		, error : function() {
			
		}
	});
}

function setCreditreg(data) {
	        var acqHp = 0;
	        var grdtHp = 0;
	        var recHp = 0;
	        var restHp = 0;
	
			if(data.creditState.length > 0){
				acqHp = parseInt(data.creditState[0].acq_hp);			//취득학점
				grdtHp = parseInt(data.creditState[0].grdt_hp);			//졸업학점
				recHp = parseInt(data.creditState[0].rec_hp); 			//수강학점
				restHp = parseInt(data.creditState[0].rest_hp); 		//잔여학점
			}else{
				acqHp = 1;
				recHp = 1;
				restHp = 1;
			}	
			
			/* var acqHp = 10;			//취득학점
			var grdtHp = 60;			//졸업학점
			var recHp = 20; 			//수강학점
			var restHp = 30; 		//잔여학점 */
			
			// chart01
			var s1 = [['취득', acqHp], ['수강', recHp], ['잔여', restHp]];
		  	
		   	var donut_chart = $.jqplot('chart01', [s1], {
		   		seriesDefaults :  {
						        	  seriesColors : ['#F26262', '#567EC4', '#24ABD8'],
							          shadow : false,
							      	  renderer:$.jqplot.DonutRenderer,
							      	  rendererOptions : {
												      	    diameter :140,
												      	    sliceMargin: 0,  
														    startAngle: -90,
														    showDataLabels : true,
														    dataLabelThreshold: 0.1,
														    dataLabelPositionFactor: 0.5,
												            dataLabels: 'value'
							   	   					    }
						          }
	          ,grid : {
						  drawGridLines: true,        
						  gridLineColor: '#cccccc',
						  gridLineWidth : 1.5,
						  background: 'transparent',
						  borderColor: 'transparent', 
						  borderWidth: 0,           
						  shadow: false             
					  } 
	          ,legend : {
				             show: true,
				             labels : ['취득', '수강' , '잔여'],
				             background : '#F0F3FC',
				             location: 'se',
				             textColor: '#222222'
	        			}
			});
		   	
		    $('.jqplot-target').css(
					{'color':'#FFFFFF',
				     'font-weight' : 'normal'	
					});
		  	$('.hackjum_data').css('margin','-4px 0px 0px 0px').css('text-align','center');
		  	$($('.hackjum_data').parent()).css({
		  		'color' : 'black'
		  	});
		  	$('#data1').css('color', '#00bbaa').css('font-weight', 'bold');
		  	$('#data2').css('color', '#f16261').css('font-weight', 'bold');
		  	$('#data3').css('color', '#5282d2').css('font-weight', 'bold');
		  	
		  	var position1 = $('#data1').position();
		  	if(data.creditState.length == 0){
		  		//$(".jqplot-donut-series jqplot-data-label").val(0);
		  		$('.jqplot-data-label').text(000)
		  	}
		  	$("#grad").html("<p style='margin-top:30px'></p><p style='margin-top:10px;font-weight:bold;font-size:13px;'>졸업<p style='font-size : 13px;font-weight:bold;'>" + grdtHp + "</p></p>");
			$("#grad").css('background','#F0F3FC');
			$("table.jqplot-table-legend").css('width','45px');
			$("table.jqplot-table-legend").css('height','55px');
			$("table.jqplot-table-legend").css('left','-8px');
			$("table.jqplot-table-legend").css('top','0px');
			$("table.jqplot-table-legend").css('background-color','transparent');
			$("table.jqplot-table-legend").css('border','0px solid #ccc');
			$("td.jqplot-table-legend div").css('margin-left','3px');
			$("td.jqplot-table-legend").css('padding-top','0');
			$(".jqplot-data-label").css('font-size','12px');
			$($(".jqplot-table-legend-swatch").eq(0)).css('border-color','#F26262');
			$($(".jqplot-table-legend-swatch").eq(1)).css('border-color','#567EC4');
			$($(".jqplot-table-legend-swatch").eq(2)).css('border-color','#24ABD8');
			$(".jqplot-table-legend-swatch").css('border-radius','40px');
			$(".jqplot-table-legend-swatch").css('margin-right','5px');
			$(".jqplot-table-legend-swatch").css('margin-left','0px');
			
		  
			$(".jqplot-xaxis-tick").css('line-height','1');	
			$(".jqplot-xaxis-tick").css('color','#7b7171');
			$(".jqplot-xaxis-tick").css('font-weight','bold');
			$(".jqplot-yaxis-tick").css('color','#7b7171');
			$(".jqplot-table-legend-swatch-outline").css('border','none');
			$(".jqplot-point-label").css('font-weight','bold');
}

function goLink(obj){
	window.open(obj,"sitemap");
}
</script>
<style type="text/css" id="vakata-stylesheet">#vakata-dragged { display:block; margin:0 0 0 0; padding:4px 4px 4px 24px; position:absolute; top:-2000px; line-height:16px; z-index:10000; } #vakata-contextmenu { display:block; visibility:hidden; left:0; top:-200px; position:absolute; margin:0; padding:0; min-width:180px; background:#ebebeb; border:1px solid silver; z-index:10000; *width:180px; } #vakata-contextmenu ul { min-width:180px; *width:180px; } #vakata-contextmenu ul, #vakata-contextmenu li { margin:0; padding:0; list-style-type:none; display:block; } #vakata-contextmenu li { line-height:20px; min-height:20px; position:relative; padding:0px; } #vakata-contextmenu li a { padding:1px 6px; line-height:17px; display:block; text-decoration:none; margin:1px 1px 0 1px; } #vakata-contextmenu li ins { float:left; width:16px; height:16px; text-decoration:none; margin-right:2px; } #vakata-contextmenu li a:hover, #vakata-contextmenu li.vakata-hover > a { background:gray; color:white; } #vakata-contextmenu li ul { display:none; position:absolute; top:-2px; left:100%; background:#ebebeb; border:1px solid gray; } #vakata-contextmenu .right { right:100%; left:auto; } #vakata-contextmenu .bottom { bottom:-1px; top:auto; } #vakata-contextmenu li.vakata-separator { min-height:0; height:1px; line-height:1px; font-size:1px; overflow:hidden; margin:0 2px; background:silver; /* border-top:1px solid #fefefe; */ padding:0; } </style><style type="text/css" id="jstree-stylesheet">.jstree ul, .jstree li { display:block; margin:0 0 0 0; padding:0 0 0 0; list-style-type:none; } .jstree li { display:block; min-height:18px; line-height:18px; white-space:nowrap; margin-left:18px; min-width:18px; } .jstree-rtl li { margin-left:0; margin-right:18px; } .jstree > ul > li { margin-left:0px; } .jstree-rtl > ul > li { margin-right:0px; } .jstree ins { display:inline-block; text-decoration:none; width:18px; height:18px; margin:0 0 0 0; padding:0; } .jstree a { display:inline-block; line-height:16px; height:16px; color:black; white-space:nowrap; text-decoration:none; padding:1px 2px; margin:0; } .jstree a:focus { outline: none; } .jstree a > ins { height:16px; width:16px; } .jstree a > .jstree-icon { margin-right:3px; } .jstree-rtl a > .jstree-icon { margin-left:3px; margin-right:0; } li.jstree-open > ul { display:block; } li.jstree-closed > ul { display:none; } #vakata-dragged ins { display:block; text-decoration:none; width:16px; height:16px; margin:0 0 0 0; padding:0; position:absolute; top:4px; left:4px;  -moz-border-radius:4px; border-radius:4px; -webkit-border-radius:4px; } #vakata-dragged .jstree-ok { background:green; } #vakata-dragged .jstree-invalid { background:red; } #jstree-marker { padding:0; margin:0; font-size:12px; overflow:hidden; height:12px; width:8px; position:absolute; top:-30px; z-index:10001; background-repeat:no-repeat; display:none; background-color:transparent; text-shadow:1px 1px 1px white; color:black; line-height:10px; } #jstree-marker-line { padding:0; margin:0; line-height:0%; font-size:1px; overflow:hidden; height:1px; width:100px; position:absolute; top:-30px; z-index:10000; background-repeat:no-repeat; display:none; background-color:#456c43;  cursor:pointer; border:1px solid #eeeeee; border-left:0; -moz-box-shadow: 0px 0px 2px #666; -webkit-box-shadow: 0px 0px 2px #666; box-shadow: 0px 0px 2px #666;  -moz-border-radius:1px; border-radius:1px; -webkit-border-radius:1px; }.jstree .jstree-real-checkbox { display:none; } .jstree-themeroller .ui-icon { overflow:visible; } .jstree-themeroller a { padding:0 2px; } .jstree-themeroller .jstree-no-icon { display:none; }.jstree .jstree-wholerow-real { position:relative; z-index:1; } .jstree .jstree-wholerow-real li { cursor:pointer; } .jstree .jstree-wholerow-real a { border-left-color:transparent !important; border-right-color:transparent !important; } .jstree .jstree-wholerow { position:relative; z-index:0; height:0; } .jstree .jstree-wholerow ul, .jstree .jstree-wholerow li { width:100%; } .jstree .jstree-wholerow, .jstree .jstree-wholerow ul, .jstree .jstree-wholerow li, .jstree .jstree-wholerow a { margin:0 !important; padding:0 !important; } .jstree .jstree-wholerow, .jstree .jstree-wholerow ul, .jstree .jstree-wholerow li { background:transparent !important; }.jstree .jstree-wholerow ins, .jstree .jstree-wholerow span, .jstree .jstree-wholerow input { display:none !important; }.jstree .jstree-wholerow a, .jstree .jstree-wholerow a:hover { text-indent:-9999px; !important; width:100%; padding:0 !important; border-right-width:0px !important; border-left-width:0px !important; } .jstree .jstree-wholerow-span { position:absolute; left:0; margin:0px; padding:0; height:18px; border-width:0; padding:0; z-index:0; }</style></head>
<body class="main_bg"><div id="yui_3_4_0_1_1597295089027_123" class="yui3-dd-proxy" style="position: absolute; display: none; z-index: 999; top: -999px; left: -999px;"></div><div id="yui_3_4_0_1_1597295089027_99" class="yui3-dd-shim" style="top: 0px; left: 0px; position: absolute; z-index: 9999; overflow: hidden; background-color: red; display: none; height: 5px; width: 5px;"><div id="list1_shim" style="height: 230px; width: 394px; background-color: yellow; opacity: 0.5; z-index: 1; overflow: hidden; top: -900px; left: -900px; position: absolute;"></div><div id="list2_shim" style="height: 230px; width: 394px; background-color: yellow; opacity: 0.5; z-index: 1; overflow: hidden; top: -900px; left: -900px; position: absolute;"></div><div id="list3_shim" style="height: 230px; width: 394px; background-color: yellow; opacity: 0.5; z-index: 1; overflow: hidden; top: -900px; left: -900px; position: absolute;"></div><div id="NoticelistPortlet!ds7xq2|0_shim" style="height: 230px; width: 394px; background-color: yellow; opacity: 0.5; z-index: 1; overflow: hidden; top: -900px; left: -900px; position: absolute;"></div><div id="NewArrBookPortlet!ds7xq2|1_shim" style="height: 230px; width: 394px; background-color: yellow; opacity: 0.5; z-index: 1; overflow: hidden; top: -900px; left: -900px; position: absolute;"></div><div id="WeatherPortlet2!ds7xq2|2_shim" style="height: 230px; width: 394px; background-color: yellow; opacity: 0.5; z-index: 1; overflow: hidden; top: -900px; left: -900px; position: absolute;"></div></div>

	<!-- Header block: top menu, banner image and description -->
	<div id="wrap_main">
		
		<div>
			

<script type="text/javascript">


$(document).ready(function(){
  jQuery.extend({
    stringify : function stringify(obj) {
      if("JSON" in window) {
        return JSON.stringify(obj);
      }
   
      var t = typeof (obj);
      if(t != "object" || obj === null) {
        // simple data type
        if(t == "string") obj = '"' + obj + '"';
        return String(obj);
      } else {
        // recurse array or object
        var n, v, json = [], arr = (obj && obj.constructor == Array);
 
        for(n in obj) {
          v = obj[n];
          t = typeof(v);
          if(obj.hasOwnProperty(n)) {
              if(t == "string") {
                  v = '"' + v + '"';
              } else if(t == "object" && v !== null){
                  v = jQuery.stringify(v);
              }

              json.push((arr ? "" : '"' + n + '":') + String(v));
          }
        }

        return (arr ? "[" : "{") + String(json) + (arr ? "]" : "}");
      }
    }
  });
});

var selectedPageName = "graduatePage";
var selectedMenuId = "10011";


function startRequest(url, successFunc, errorFunc) {
  $.ajax({type : "get"
    , dataType:"text"
    , async : false
    , url : url
    , success : successFunc
    , error : errorFunc
  });
}

//tile portlet into obj
var ptlInfoList = new Array();

// 타일 기간 포틀릿 화면 저장을 위한 포틀릿 정보 세팅
function setTilePtlInfo() {
	$("div[id='graduatePage'] .grid-stack-item").each(function() {
		var ptlNm = $(this).attr("data-portletname");
		var ptlHeight = $(this).attr("data-gs-height");
		var ptlWidth = $(this).attr("data-gs-width");
		var ptlPositionX = $(this).attr("data-gs-x");
		var ptlPositiony = $(this).attr("data-gs-y");
		
		var data = {"ptlNm" : ptlNm, "ptlHeight" : ptlHeight, "ptlWidth" : ptlWidth, "ptlPositionX" : ptlPositionX, "ptlPositiony" : ptlPositiony, "menuId" : selectedMenuId};
		setPtlInfoList(data);
	});
	
	return jQuery.stringify(ptlInfoList);
}

function setPtlInfoList(obj) {
  ptlInfoList.push(obj);
}

function getPortletInfo() {
  var voPg = document.getElementById("pg_" + selectedPageName);
  var portletUlList;
  if(voPg) {
    portletUlList = voPg.getElementsByTagName("ul");
  } else {
    portletUlList = document.getElementsByTagName("ul");
  }

  var portletInfo = "";
  var columnCount = 0;

  for(var i = 0; i < portletUlList.length; i++) {
    var portletUl = portletUlList[i];
    var id = portletUl.id;
    var className = portletUl.className;

    if(className.search('list') == 0 && id.search('list') == 0) {
      if(columnCount == 0) {
        portletInfo = id + ":";
      } else {
        portletInfo += ";";
        portletInfo += id + ":";
      }
      columnCount++;

      var portletLiList = portletUl.getElementsByTagName("li");
      var portletSubInfo = "";

      for(var j = 0; j < portletLiList.length; j++) {
        var portlet     = portletLiList[j];
        var portletId   = portlet.id;
        var windowState = exportal.getStatus(portletId);

        if(portletId != null && portlet.style.display != 'none' && portlet.className.search('item') == 0) {
          portletId = portletId.split("!")[0];

          if(portletSubInfo.length != 0) {
            portletSubInfo += ",";
          }

          portletSubInfo += portletId + "__ws" + windowState;
        }
      }

      portletInfo += portletSubInfo;
    }
  }

  portletInfo = selectedMenuId + "/" + portletInfo + "/" + columnCount;

  return portletInfo;
}

function saveDisplay(displayMsg) {
  var pageType = "col";
  var portletInfo = null;
  
  if("col" == pageType) {
	  portletInfo = getPortletInfo();
  } else if("tile" == pageType) {
	  portletInfo = setTilePtlInfo();
	  ptlInfoList = [];
  }
  
  var url = "/proc/com.SaveDisplay.do" + "?portletInfo=" + portletInfo + "&pageType=col";

  var saveDisplayCallback = function(data) {
    if(data == "refresh") {
      window.location.reload();
    }
  };

  if(displayMsg == null || displayMsg == true) {
    startRequest(url, function(data, result) {
      if(data == "401") {
        alert("세션이 만료되었습니다.");
        window.location.reload();
        return;
      }
      alert("화면을 저장했습니다.");
    }
    , function() {
        alert("화면 저장을 실패했습니다.");
    });
  } else {
    startRequest(url, saveDisplayCallback, null);
  }
}

function portletThrowCheck() {
  var url = "/proc/com.ChkDelPortlet.do";
  var isLast = false;
  var isContinue = true;
  
  var pageType = "col";
  var portletInfo = null;
  
  if("col" == pageType) {
	  portletInfo = getPortletInfo();
  } else if("tile" == pageType) {
	  portletInfo = setTilePtlInfo();
	  ptlInfoList = [];
  }

  $.ajax({
      type : "post"
    , async : false
    , url : url
    , data : {portletInfo : portletInfo, "pageId" : "graduatePage"}
    , success : function(poData, psStatus, jqXHR) {
      var rtnObj = $.parseJSON(jqXHR.responseText);

      if(rtnObj.success == true) {
        isLast = rtnObj.data.isLast;
      } else {
        isContinue = false;

        if(rtnObj.message) {
          alert(rtnObj.message);
        }
        if(rtnObj.url) {
          window.location = rtnObj.url;
          return false;
        }
        if(rtnObj.status == 401 || rtnObj.status == 403) {
          window.location = "/";
        }
        return false;
      }
    }
    , error : function(jqXHR, textStatus, errorThrown) {
      isContinue = false;

      var statusCode = jqXHR.status;
      var rtnObj = $.parseJSON(jqXHR.responseText);
      if(rtnObj && rtnObj.message) {
        alert(rtnObj.message);
      }
      if(rtnObj.url) {
        window.location = rtnObj.url;
        return false;
      }
      if(rtnObj.status == 401 || rtnObj.status == 403) {
        window.location = "/";
      }

      return false;
    }
  });

  if(isContinue) {
    return isLast ? confirm("마지막 포틀릿 삭제시 초기 설정 화면으로 복원됩니다.") : confirm(Msg.throwportletconfirm);
  }
  return false;
}

function saveDefaultPage(displayMsg) {
  var url = "/proc/com.SaveDefaultDisplay.do" + "?menuId=" + selectedMenuId;

  if(displayMsg == null || displayMsg == true) {
    startRequest(url, function(data, result) {
      if(data == "401"){
        alert("세션이 만료되었습니다.");
        window.location.reload();
        return;
      }
      alert("시작 페이지로 설정했습니다.");
    }
    , function() {
      alert("설정 중 문제가 발생했습니다.");
    });
  } else {
    startRequest(url, null, null);
  }
}

function setDisplay() {
  var mode = "viewAddPortlet";
 
  window.open("/proc/com.PortletList.do?menuId=" + selectedMenuId, "_blank", "width=960px,height=580px,toolbar=no,location=no,directories=no,status=no,menubar=no");

}


function setUiDisplay() {
  var mode = "viewUiAddPortlet";
 
  window.open("/proc/com.SetDisplay.do?mode=" + mode + "&menuId=" + selectedMenuId, "_blank","width=1200px, height=600px, toolbar=no, location=no, directories=no, status=no, menubar=no");

}

function setTheme() {
  var mode = 'viewTheme';

  
 
  window.open("/proc/com.ThemeList.do?menuId=" + selectedMenuId, "_blank", "width=470px,height=500px,toolbar=no,location=no,directories=no,status=no,menubar=no");

}

function logout(loginType) {
  /*  window.location = "/proc/Logout.do"; */
	if(loginType=="C"){
		window.location = "/sso/sso/logout.jsp?RelayState=/clogin.jsp";
	}else if(loginType=="D"){
		window.location = "/sso/sso/logout.jsp?RelayState=/login.jsp";
	}else{
		window.location = "/sso/sso/logout.jsp?RelayState=/index.jsp";
//  		window.location = "/proc/Logout.do";
	}
}

function pwChange() {
	window.open("/eXPortal/pages/account/passwordChange.jsp", "_blank", "width=500px,height=500px,scrollbars=yes,resizable=no,titlebar=no,toolbar=no,location=no,directories=no,status=no,menubar=no");
}

function signOut() {
	window.open("/eXPortal/pages/account/signOut.jsp", "_blank", "width=700px,height=500px,scrollbars=yes,resizable=no,titlebar=no,toolbar=no,location=no,directories=no,status=no,menubar=no");
}

function settingMenu() {
  window.open("/proc/com.PersonalMenu.do", "_blank", "width=470px,height=450px,scrollbars=no,resizable=yes,titlebar=no,toolbar=no,location=no,directories=no,status=no,menubar=no");
}

function msgManager() {
  window.open("/proc/message.MsgMain.do", "_blank", "width=800px,height=550px,scrollbars=no,resizable=no,titlebar=no,toolbar=no,location=no,directories=no,status=no,menubar=no");
}

function bookMarkManager() {
  window.open("/proc/bookmark.BookmarkMain.do", "_blank", "width=800px,height=550px,scrollbars=no,resizable=yes,titlebar=no,toolbar=no,location=no,directories=no,status=no,menubar=no");
}


function getMsgCnt() {
  var url = "/proc/message.MsgUnreadCnt.do";
  
  $.ajax({
      type : "post"
    , async : true
    , url : url
    , dataType: "text"
    , success : function(poData, psStatus, jqXHR) {
        var rtnObj = $.parseJSON(jqXHR.responseText);

        if(rtnObj.success == true) {
            var unreadCnt = rtnObj.data.unreadCnt;
            
            if(unreadCnt) {
              $("#msgMgt").append("(" + unreadCnt + ")");
            }
        } else {
          if(rtnObj.message) {
              alert(rtnObj.message);
          }
          
          if(rtnObj.status == 401 || rtnObj.status == 403) {
              window.location = "/";
          }
          
          return false;
        }
    }
    , error : function(jqXHR, textStatus, errorThrown) {
        var statusCode = jqXHR.status;
        var rtnObj = $.parseJSON(jqXHR.responseText);
        
        if(rtnObj && rtnObj.message) {
          alert(rtnObj.message);
        }
        
        if(rtnObj.status == 401 || rtnObj.status == 403) {
          window.location = "/";
        }

        return false;
    }
  });
  
  return false;
}

function cafeHome() {
  window.open("https://portal.hywoman.ac.kr/ctt/cafe");
}


</script>

<script type="text/javascript">
	
	var sessionTimer = exportalUI.sessionTimer;
	

	var sessionTimer = exportalUI.sessionTimer;
	sessionTimer.sessionTimeHandler = function(sessionDate) {
		if (sessionDate == null) {
			return;
		}
		var message = sessionTimer.twoChar(sessionDate.getHours()) + ":"
				+ sessionTimer.twoChar(sessionDate.getMinutes()) + ":"
				+ sessionTimer.twoChar(sessionDate.getSeconds());

		$("#sessionTimer").text(message);
	};
	sessionTimer.sessionTimeoutHandler = function() {
		alert("세션이 만료되어 화면을 재시작합니다.");
		logout("S");
	};

	//sessionTimer.sessionTimeoutNotifyTime = 60*60*30;

	sessionTimer.sessionTimeoutNotifyHandler = function(sessionDate) {
		if (sessionDate == null) {
			return;
		}

		var message = sessionTimer.twoChar(sessionDate.getHours()) + ":"
				+ sessionTimer.twoChar(sessionDate.getMinutes()) + ":"
				+ sessionTimer.twoChar(sessionDate.getSeconds());

		$(".rtxt strong").text(message);

		$("#sessionTimeDlg").dialog({
			dialogClass : 'ep-s-dlgnotitle',
			resizable : false,
			draggable : false,
			modal : true,
			width : 580
		});
	};

	function sessionTimeRefresh() {
		$("#sessionTimeDlg").dialog("close");
		//$.ajax('/eXPortal/common/common.jsp');
		var userId = "216110052";
		if(userId) {
			location.reload();
		} else {
			location.href= "/index.jsp";
		}
	}

	$(document).ready(function() {
		getMsgCnt();
		
		exportalUI.sessionTimer.sessionTimeSetFlag = 4;
		sessionTimer.start();

	});
	function showLeftMenu() {
		$("#menu_mobile").show();
		$(".container_area").animate({ marginLeft: "0%"} , 250);
		$("body").css("overflow-y", "hidden");
	}
	function hideLeftMenu() {
		var windowWidth = $(window).width();
		
		$(".container_area").animate({ marginLeft: -windowWidth} , 250, function() {
		  $("#menu_mobile").hide();
		});
		
		$("body").css("overflow-y", "auto");
	}
	function openTopMenu(url, target){
		topMenu_status = window.open(url, target);
	}
</script>


<div id="sessionTimeDlg" class="ep-s-popwrap" style="display:none;">
  <div class="ep-s-dlgcontent">
    <p class="ep-s-dlgtitle">자동 로그아웃 안내</p>
    <div class="ep-s-infoarea">
      <p class="ep-s-dlgcontenthead">자동 로그아웃 남은 시간 : <span class="rtxt"><strong>00</strong></span> 초</p>
      <p>로그인 후 일정시간 동안 서비스 이용이 없어 로그아웃 됩니다.</p>
      <p>로그인 시간을 연장하시겠습니까?</p>
      <p class="ep-s-btncenter">
        <a href="#skipnavi" class="ep-s-btnblue" onclick="javascript:sessionTimeRefresh();">연장하기</a>
        <a href="#skipnavi" class="ep-s-btnwhite" onclick="javascript:logout('S');">로그아웃</a>
      </p>
    </div>
  </div>
</div>


<!-- 상단 S-->
<div id="top_wrap">
	<div id="skipnavi">
		<h1>한양여자대학교 포털시스템</h1>
		<a href="content_main_top">본문내용 바로가기</a><a href="javascript:void(0)">주메뉴 포틀릿
			바로가기</a>
	</div>
	<!-- GNB S-->
	<div class="GNB">
		<h1 class="logo">
			<a href="/p/"><img src="/eXPortal/portalresources/theme/images/hyw/logo.png" alt="한양여자대학교">
		
			<img src="/eXPortal/portalresources/theme/images/hyw/portal.png" alt="포털시스템"></a>
		
		</h1>
		
		<h2>주메뉴</h2>
		<ul>
			<!-- <li><a href="#">화면저장</a></li> -->
			<!-- <li><a href="#">포틀릿설정</a></li> -->
			<li><a href="javascript:void(0)" onclick="javascript:saveDisplay();">화면저장</a></li>
			<!-- <li><a href="#" onclick="javascript:setDisplay();">포틀릿 설정</a></li> -->
			<li><a href="javascript:void(0)" onclick="javascript:setUiDisplay();">포틀릿 설정</a></li>

			<li class=""><a href="javascript:void(0)" onclick="javascript:logout('S');">로그아웃</a></li>
			<li class="time" id="sessionTimer" style="color:#8f8f8f;">04:48:43</li>
        	<li class="refresh" onclick="javascript:sessionTimeRefresh();"><a href="#skipnavi">연장</a></li>
		</ul>
	</div>
	<!-- <div id="header"> -->
	<!--     <div class="inner"> -->
	<!--         <h1> -->
	
	<!--         </h1> -->
	<!-- GNB E -->
	<!--       gnb -->
	<!--     <div id="gnb" style="white-space:nowrap;overflow-x:auto;overflow-y:hidden;"> -->
	<!-- 	  <ul> -->
	
	<!-- // if(isAnyMax == false) { -->
	
	
	
	
	
	
	
	
	
	<!-- // } -->
	
	
	
	
	
	
	
	
	
	<!--       </ul> -->
	<!--     </div> -->
	<!--         //gnb -->
	<!-- lnb -->
	<!-- 	<div id="lnb" style="white-space: nowrap; overflow-x: auto;"> -->
	<!-- navigation S-->
	<div class="major_menu_area">
		<ul class="main_menu01">
			<li class="first" style="width:1155px;">
						<a href="/p/20000/" target="_blank">하이유시스템</a>
							</li>
							
		</ul>
	</div>
</div>
	<!-- 모바일 헤더 S -->
        <div id="top_wrap_mobile">
            <ul>
                <li class="lbtn"><a href="javascript:void(0)" class="btn_menu"> <span>로그인</span></a></li>
                <li class="logo">
                    <h1><a href="javascript:void(0)">한양여자대학교</a></h1>
                </li>
                <li class="rbtn"><a href="javascript:void(0)" class="btn_logout"> <span>로그아웃</span></a></li>
            </ul>
        </div>
        <!-- 모바일 헤더 E --> 
        <!-- 모바일 왼쪽메뉴 S -->
		<div class="menu_mobile" id="menu_mobile">
			<div class="container_area">
				<div class="container">
					<h2>전체메뉴</h2>
					<p class="title">
						<img src="/eXPortal/portalresources/theme/images/hyw/title.png" alt="포털시스템">
					</p>
					<button type="button" class="close" onclick="javascript:hideLeftMenu()">
						<span>전체메뉴 닫기</span>
					</button>
					<div class="menuwrap">
						<dl>
							<dt>
								<em>백규림</em>님 안녕하세요!
							</dt>
								
								<dd>
					   				<a href="javascript:void(0)" onclick="javascript:openTopMenu('/p/20000/', '하이유시스템')">하이유시스템</a>
								</dd>
								
								<dd>
					   				<a href="javascript:void(0)" onclick="javascript:openTopMenu('/p/00004/', '게시판')">게시판</a>
								</dd>
								
						</dl>
					</div>
				</div>
			</div>
			<div class="dim"></div>
		</div>
		<!-- 모바일 왼쪽메뉴 E --> 
   	 	<!-- 상단 E-->
	

</div>
<!-- </div> -->
			
			<hr style="width: 99%; color: #999; border-bottom-style: none;">
			<!-- 상단 고정영역 S-->
			<div id="content_main_top">
				<ul>
					<li class="indiv_area">
						<!-- 개인정보 S-->
						<div class="indiv_info">
							<h2>개인정보</h2>
							<ul class="info_01">
								<li class="name"><strong>백규림</strong>님 안녕하세요!</li>
								<li class="part">문예창작과(2)</li>
								<li class="time2" id="currentTime">현재시간 : 2020년 8월 13일 14시 16분 4초</li>

							</ul>
							<ul class="info_02">
								<li class="ip"><strong>이전아이피 : </strong> 115.90.212.21</li>
								<li class="time"><strong>이전접속시간 : </strong> 2020-08-12 15:55:51</li>
							</ul>
							<!-- 하이유톡 S -->	
							<div class="notice_box">
								<h2>하이유톡</h2>
								<ul>
									<li><strong>공지사항<span id="hiworks_notice_cnt">0</span> 건</strong></li><strong>
									<li><strong>소식</strong><span id="hiworks_feed_cnt">0</span> 건</li>
								</strong></ul><strong>
							</strong></div><strong>
							<!-- 하이유톡 E -->
						</strong></div><strong> <!-- 개인정보 E-->
					</strong></li><strong>
					<!-- 학점취득현황 S -->
					<li class="chart_box">
						<h2>학점취득현황</h2>
						<ul>
							<li class="tit">학점취득현황</li>
							
							<li>
								<div id="chart01" style="width: 259px; height: 173px; float: left; margin-top: 0px; margin-left: 0px; left: 50px; top: 15px; position: relative; color: rgb(255, 255, 255); font-weight: normal;" class="jqplot-target"><canvas width="259" height="173" class="jqplot-base-canvas" style="position: absolute; left: 0px; top: 0px;"></canvas><div class="jqplot-title" style="height: 0px; width: 0px;"></div><canvas width="259" height="173" class="jqplot-grid-canvas" style="position: absolute; left: 0px; top: 0px;"></canvas><canvas width="239" height="140" class="jqplot-series-shadowCanvas" style="position: absolute; left: 10px; top: 10px;"></canvas><canvas width="239" height="140" class="jqplot-series-canvas" style="position: absolute; left: 10px; top: 10px;"></canvas><table class="jqplot-table-legend" style="position: absolute; background: transparent; color: rgb(34, 34, 34); right: 10px; bottom: 23px; width: 45px; height: 55px; left: -8px; top: 0px; border: 0px solid rgb(204, 204, 204);"><tbody><tr class="jqplot-table-legend"><td class="jqplot-table-legend" style="text-align:center;padding-top:0;"><div style="margin-left: 3px;"><div class="jqplot-table-legend-swatch" style="border-color: rgb(242, 98, 98); margin-left: 0px; border-radius: 40px; margin-right: 5px;"></div></div></td><td class="jqplot-table-legend" style="padding-top:0;">취득</td></tr><tr class="jqplot-table-legend"><td class="jqplot-table-legend" style="text-align: center; padding-top: 0px;"><div style="margin-left: 3px;"><div class="jqplot-table-legend-swatch" style="border-color: rgb(86, 126, 196); margin-left: 0px; border-radius: 40px; margin-right: 5px;"></div></div></td><td class="jqplot-table-legend" style="padding-top: 0px;">수강</td></tr><tr class="jqplot-table-legend"><td class="jqplot-table-legend" style="text-align: center; padding-top: 0px;"><div style="margin-left: 3px;"><div class="jqplot-table-legend-swatch" style="border-color: rgb(36, 171, 216); margin-left: 0px; border-radius: 40px; margin-right: 5px;"></div></div></td><td class="jqplot-table-legend" style="padding-top: 0px;">잔여</td></tr></tbody></table><canvas width="239" height="140" class="jqplot-donutRenderer-highlight-canvas" style="position: absolute; left: 10px; top: 10px;"></canvas><span class="jqplot-donut-series jqplot-data-label" style="position: absolute; left: 103px; top: 131px; font-size: 12px;">81</span><canvas width="239" height="140" class="jqplot-event-canvas" style="position: absolute; left: 10px; top: 10px;"></canvas></div>
								<div id="grad-wrap" style="background:white;"><span id="grad" style="border-radius: 5em; z-index: 20; width: 97px; height: 97px; position: absolute; margin-top: 47px; margin-left: -146px; text-align: center; font-size: 12px; background: rgb(240, 243, 252);"><p style="margin-top:30px"></p><p style="margin-top:10px;font-weight:bold;font-size:13px;">졸업</p><p style="font-size : 13px;font-weight:bold;">80</p><p></p></span></div>
							</li>
						</ul>
					</li>
					<!-- 학점취득현환 E-->
					<!-- 나의현황 S -->
					<div class="state_box2">
						<h2>나의현황</h2>
						<dl>
							<dt>도서대출<span><i class="ico_state11"></i><em id="bookLoan">0</em>건</span></dt>
							<dt>도서연체<span><i class="ico_state11"></i><em id="bookDelay">0</em>건</span></dt>		
						</dl>
					</div>
					<!-- 나의현황 E-->
					<!-- 학사일정 S -->
				    <div class="lecture_area">
					    <h2>학사일정</h2>
					    
					    <ul class="btn03" style="position: relative;top: -32px;right: -3px;text-align: center;float: right;">
						<li id="pageBtnStop" style="display:none;float:left;margin-right:10px;text-align:center;"><a onclick="btnStart();" page-index="" style="cursor:pointer;"><img src="/eXPortal/images/common/ico_start.png" alt="01"></a></li><li id="pageBtnStart" style="display:inline-block;float:left;margin-right:10px;text-align:center;"><a onclick="btnStop();" page-index="" style="cursor:pointer;"><img src="/eXPortal/images/common/ico_stop.png" alt="01"></a></li></ul>
					    
					    <!-- <a onclick="javascript:assistant_ptlDetail('008');" style="cursor:pointer;" class="btn01" ><img src="/eXPortal/images/cwu/ico_plus.png" alt="더보기"/></a> -->
					    <ul class="btn02" style="position: relative;top: -32px;right: -3px;text-align: center;float: right;"><li id="pageBtn0" style="display:inline-block;float:left;margin-right:10px;text-align:center;"><a onclick="schPageChange(this);" page-index="0" style="cursor:pointer;"><img src="/eXPortal/images/bl.png" alt="01"></a></li><li id="pageBtn1" style="display:inline-block;float:left;margin-right:10px;text-align:center;"><a onclick="schPageChange(this);" page-index="1" style="cursor:pointer;"><img src="/eXPortal/images/bl_on.png" alt="01"></a></li></ul>
							
					    <ul class="lecture_arrow_area" id="lecture_arrow_area">
							<li><a onclick="javascript:Lecture_YearMMPrev();" style="cursor: pointer;"><span class="sbtn ico_pre_date"></span> <span class="blind">이전가기</span></a></li>
							<li class="lecture_day" id="lecture_day">2020.08</li>
							<li><a onclick="javascript:Lecture_YearMMNext();" style="cursor: pointer;"><span class="sbtn ico_next_date"></span> <span class="blind">다음가기</span></a></li>
					    </ul>
						<div id="schRolling" style="height:154px">
							<ul class="lecture_box" id="assistant_main_lecture_box"><dl class="lecture_list" id="schList0" title="재입학 접수" style="display: none;"><dt>20.08.03 ~ 20.08.06</dt><dd>재입학 접수</dd></dl><dl class="lecture_list" id="schList1" title="후기등록, 학기조정휴학" style="display: none;"><dt>20.08.10 ~ 20.08.13</dt><dd>후기등록, 학기조정휴학</dd></dl><dl class="lecture_list" id="schList2" title="졸업사정" style="display: none;"><dt>20.08.14 ~ 20.08.14</dt><dd>졸업사정</dd></dl><dl class="lecture_list" id="schList3" title="수강신청" style="display: none;"><dt>20.08.17 ~ 20.08.19</dt><dd>수강신청</dd></dl><dl class="lecture_list" id="schList4" title="휴학 및 자퇴신청" style="display: inline-block;"><dt>20.08.17 ~ 20.08.21</dt><dd>휴학 및 자퇴신청</dd></dl><dl class="lecture_list" id="schList5" title="졸업일자" style="display: inline-block;"><dt>20.08.21 ~ 20.08.21</dt><dd>졸업일자</dd></dl><dl class="lecture_list" id="schList6" title="재학생 등록기간" style="display: inline-block;"><dt>20.08.24 ~ 20.08.28</dt><dd>재학생 등록기간</dd></dl><dl class="lecture_list" id="schList7" title="하계방학 종료" style="display: inline-block;"><dt>20.08.31 ~ 20.08.31</dt><dd>하계방학 종료</dd></dl></ul>
						</div>
					</div>
					<!-- 학사일정 E-->
				</strong></ul><strong>
			</strong></div><strong>
			<!-- 상단 고정영역 S-->
			<!-- 쿽메뉴 S-->
			




<div id="pg_graduatePage" class="ep_pg" style="height:100%;"><div class="ep_pg_play" style="height:100%;width:100%;"><ul class="list yui3-dd-drop" id="list1" style="min-height:100%;width:394px">

<li class="item yui3-dd-drop yui3-dd-draggable" id="NoticelistPortlet!ds7xq2|0"><div class="mod">
  
    
    
        <!-- <div class="portlet-icon" style="display: none;"> -->
        <div class="portlet-icon">
          
          
            
              <a title="열기" href="#none" id="eXPortal_NoticelistPortlet_ds7xq2_0_ShowDiv" onclick="javascript:eXPortal_NoticelistPortlet_ds7xq2_0_ptlDetail();" style="float:left;"><img style="vertical-align: middle; border: 0px; text-align: center;" src="/eXPortal/portalresources/theme/images/hyw/ico_plus.png" alt="maximized"></a>
            
          
          
            
              <a title="삭제" onclick="javascript:throwMe('NoticelistPortlet!ds7xq2|0');" href="#none"><img style="vertical-align: middle; border: 0px; text-align: center;" src="/eXPortal/portalresources/theme/images/hyw/ico_close.png" alt="del"></a>
            
          
        </div>
       <h2 class="portlet-header ">
         <span class="portlet-title">  <span id="NoticelistPortlet!ds7xq2|0Ttl">포털 공지</span>
         </span>
       </h2>
    
  
  	<div class="portlet-body"><div style="padding-left:0px;margin-left:0px;" id="NoticelistPortlet!ds7xq2|0Ctnt"><div id="AjaxPtlBodyeXPortal_NoticelistPortlet_ds7xq2_0_">


<div class="ep-section ep-content-out">
  <div class="ep-subsection ep-content01">
    <ul id="eXPortal_NoticelistPortlet_ds7xq2_0_boardData" class="bord_list_area">
  <li data-post-url="/ctt/bb/bulletin?b=3&amp;p=54" onclick="javascript:eXPortal_NoticelistPortlet_ds7xq2_0_movePostDetail(this);">
    <dl>
      <dt><a href="#" data-name="postTitle" title="[첨부파일] 첨부파일 용량 줄이는 방법 안내">[첨부파일] 첨부파일 용량 줄이는 방법 안내</a></dt>
      <dd data-name="postCredt">2018.11.02</dd>
    </dl>
  </li>

  <li data-post-url="/ctt/bb/bulletin?b=3&amp;p=29" onclick="javascript:eXPortal_NoticelistPortlet_ds7xq2_0_movePostDetail(this);">
    <dl>
      <dt><a href="#" data-name="postTitle" title="하이유 시스템 사용자 가이드 (2018-06-26 Ver)">하이유 시스템 사용자 가이드 (2018-06-26 Ver)</a></dt>
      <dd data-name="postCredt">2018.05.23</dd>
    </dl>
  </li>

  <li data-post-url="/ctt/bb/bulletin?b=3&amp;p=56" onclick="javascript:eXPortal_NoticelistPortlet_ds7xq2_0_movePostDetail(this);">
    <dl>
      <dt><a href="#" data-name="postTitle" title="※ 학생맞춤형 진로지원 성과관리 시스템 화면 시연 URL">※ 학생맞춤형 진로지원 성과관리 시스템 화면 시연 URL</a></dt>
      <dd data-name="postCredt">2020.01.14</dd>
    </dl>
  </li>

  <li data-post-url="/ctt/bb/bulletin?b=3&amp;p=55" onclick="javascript:eXPortal_NoticelistPortlet_ds7xq2_0_movePostDetail(this);">
    <dl>
      <dt><a href="#" data-name="postTitle" title="교내 무선인터넷 서비스 일시 중단 안내">교내 무선인터넷 서비스 일시 중단 안내</a></dt>
      <dd data-name="postCredt">2019.04.16</dd>
    </dl>
  </li>

  <li data-post-url="/ctt/bb/bulletin?b=3&amp;p=53" onclick="javascript:eXPortal_NoticelistPortlet_ds7xq2_0_movePostDetail(this);">
    <dl>
      <dt><a href="#" data-name="postTitle" title="무선인터넷 서비스 단절 공지">무선인터넷 서비스 단절 공지</a></dt>
      <dd data-name="postCredt">2018.09.13</dd>
    </dl>
  </li>
</ul>
  </div>
</div>
<form id="eXPortal_NoticelistPortlet_ds7xq2_0_boardInfo" method="post" action="/hyw/CommunityPage.do">
	<input type="hidden" id="boardBulletinUrl" name="boardBulletinUrl">
	<input type="hidden" id="boardId" name="boardId">
	<input type="hidden" id="menuId" name="menuId">
	<input type="hidden" id="detailViewUrl" name="detailViewUrl">
</form>
<div id="eXPortal_NoticelistPortlet_ds7xq2_0_copyLi" style="display:none;">
  <li data-post-url="/ctt/bb/bulletin?b=3&amp;p=53" onclick="javascript:eXPortal_NoticelistPortlet_ds7xq2_0_movePostDetail(this);">
    <dl>
      <dt><a href="#" data-name="postTitle" title="무선인터넷 서비스 단절 공지">무선인터넷 서비스 단절 공지</a></dt>
      <dd data-name="postCredt">2018.09.13</dd>
    </dl>
  </li>
</div></div></div></div>

</div></li>
</ul><ul class="list yui3-dd-drop" id="list2" style="min-height:100%;width:394px">

<li class="item yui3-dd-drop yui3-dd-draggable" id="NewArrBookPortlet!ds7xq2|1"><div class="mod">
  
    
    
        <!-- <div class="portlet-icon" style="display: none;"> -->
        <div class="portlet-icon">
          
          
            
              <a title="열기" href="#none" id="eXPortal_NewArrBookPortlet_ds7xq2_1_ShowDiv" onclick="javascript:eXPortal_NewArrBookPortlet_ds7xq2_1_ptlDetail();" style="float:left;"><img style="vertical-align: middle; border: 0px; text-align: center;" src="/eXPortal/portalresources/theme/images/hyw/ico_plus.png" alt="maximized"></a>
            
          
          
            
              <a title="삭제" onclick="javascript:throwMe('NewArrBookPortlet!ds7xq2|1');" href="#none"><img style="vertical-align: middle; border: 0px; text-align: center;" src="/eXPortal/portalresources/theme/images/hyw/ico_close.png" alt="del"></a>
            
          
        </div>
       <h2 class="portlet-header ">
         <span class="portlet-title">  <span id="NewArrBookPortlet!ds7xq2|1Ttl">신착 도서</span>
         </span>
       </h2>
    
  
  	<div class="portlet-body"><div style="padding-left:0px;margin-left:0px;" id="NewArrBookPortlet!ds7xq2|1Ctnt"><style>
.bx-wrapper-book ul li{float: left; list-style: none; position: relative; width: 60px; margin-right: 10px;}
@media only all and (max-width:405px){
	.bx-wrapper-book ul li{float: left; list-style: none; position: relative; width: 14%; margin-right: 0px;}
}

</style>


<div class="book-wrap" style="margin:15px auto;margin-left:10px;">
	<div class="bx-wrapper-book">
		<ul id="eXPortal_NewArrBookPortlet_ds7xq2_1_bxslider-book" style="width:122%;"><li><a href="javascript:eXPortal_NewArrBookPortlet_ds7xq2_1_newBookBrowser(124564)"><img src="https://bookthumb-phinf.pstatic.net/cover/163/689/16368931.jpg?type=m1&amp;udate=20200618" title="코로나와 4차 산업혁명이 만든 뉴노멀" alt="16번째 책" style="width:77px; height:100px"></a></li><li><a href="javascript:eXPortal_NewArrBookPortlet_ds7xq2_1_newBookBrowser(124552)"><img src="https://bookthumb-phinf.pstatic.net/cover/163/885/16388542.jpg?type=m1&amp;udate=20200710" title="제3의 부의 원칙" alt="17번째 책" style="width:77px; height:100px"></a></li><li><a href="javascript:eXPortal_NewArrBookPortlet_ds7xq2_1_newBookBrowser(124532)"><img src="https://bookthumb-phinf.pstatic.net/cover/163/944/16394413.jpg?type=m1&amp;udate=20200723" title="좀비 아이 : 고문영 동화" alt="18번째 책" style="width:77px; height:100px"></a></li><li><a href="javascript:eXPortal_NewArrBookPortlet_ds7xq2_1_newBookBrowser(124531)"><img src="https://bookthumb-phinf.pstatic.net/cover/163/944/16394421.jpg?type=m1&amp;udate=20200806" title="악몽을 먹고 자란 소년 : 고문영 동화" alt="19번째 책" style="width:77px; height:100px"></a></li><li><a href="javascript:eXPortal_NewArrBookPortlet_ds7xq2_1_newBookBrowser(124528)"><img src="https://bookthumb-phinf.pstatic.net/cover/163/838/16383832.jpg?type=m1&amp;udate=20200714" title="한 권으로 끝내는 AI 비즈니스 모델" alt="20번째 책" style="width:77px; height:100px"></a></li></ul>
		
	</div>
	<div style="height:100px;"></div>
	<div style="text-align:center;">
		<ul id="eXPortal_NewArrBookPortlet_ds7xq2_1_bxslider-book-btn" style="display:inline-block;"><li id="bookBtn0" style="display:inline-block;float:left;margin-right:10px;text-align:center;"><a onclick="getBook(this);" page-index="0" style="cursor:pointer;"><img src="/eXPortal/images/bl.png" alt="01"></a></li><li id="bookBtn1" style="display:inline-block;float:left;margin-right:10px;text-align:center;"><a onclick="getBook(this);" page-index="1" style="cursor:pointer;"><img src="/eXPortal/images/bl.png" alt="01"></a></li><li id="bookBtn2" style="display:inline-block;float:left;margin-right:10px;text-align:center;"><a onclick="getBook(this);" page-index="2" style="cursor:pointer;"><img src="/eXPortal/images/bl.png" alt="01"></a></li><li id="bookBtn3" style="display:inline-block;float:left;margin-right:10px;text-align:center;"><a onclick="getBook(this);" page-index="3" style="cursor:pointer;"><img src="/eXPortal/images/bl_on.png" alt="01"></a></li></ul>
	</div>
	
	
	
</div><div id="AjaxPtlBodyeXPortal_NewArrBookPortlet_ds7xq2_1_"></div></div></div>

</div></li>
</ul>


<ul class="list yui3-dd-drop" id="list3" style="margin-right:-40px;min-height:100%;width:394px">

<li class="item yui3-dd-drop yui3-dd-draggable" id="WeatherPortlet2!ds7xq2|2"><div class="mod">
  
    
    
        <!-- <div class="portlet-icon" style="display: none;"> -->
        <div class="portlet-icon">
          
          
            
              <a title="열기" href="#none" id="eXPortal_WeatherPortlet2_ds7xq2_2_ShowDiv" onclick="javascript:eXPortal_WeatherPortlet2_ds7xq2_2_ptlDetail();" style="float:left;"><img style="vertical-align: middle; border: 0px; text-align: center;" src="/eXPortal/portalresources/theme/images/hyw/ico_plus.png" alt="maximized"></a>
            
          
          
            
              <a title="삭제" onclick="javascript:throwMe('WeatherPortlet2!ds7xq2|2');" href="#none"><img style="vertical-align: middle; border: 0px; text-align: center;" src="/eXPortal/portalresources/theme/images/hyw/ico_close.png" alt="del"></a>
            
          
        </div>
       <h2 class="portlet-header ">
         <span class="portlet-title">  <span id="WeatherPortlet2!ds7xq2|2Ttl">날씨</span>
         </span>
       </h2>
    
  
  	<div class="portlet-body"><div style="padding-left:0px;margin-left:0px;" id="WeatherPortlet2!ds7xq2|2Ctnt"><style>
#eXPortal_WeatherPortlet2_ds7xq2_2_ShowDiv {display:none;}
</style>


<div id="AjaxPtlBodyeXPortal_WeatherPortlet2_ds7xq2_2_">




<style>

/* 상단 대기날씨 전환탭,지역명+시간 */
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-weather-header-left-wrap > ul > li {cursor:pointer}
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-weather-header-left-wrap {width:40%; float:left} 
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-weather-header-right-wrap {width: 52%; display: table;table-layout: fixed;margin-bottom: 3px;vertical-align: middle;}
.ep-weather-header-top{float:right;}
.ep-weather-header-bottom .timePos{float:right;}

/* 대기정보 */
.ep-skyCondition-content-wrap {width: 100%;}
.ep-skyCondition-content {width:100%;height:83px}
.ep-skyCondition-content-icon-temp {width:80%;display:table; margin: auto;}
.ep-skyCondition-icon {display:table-cell; text-align:center; width: 30%;}
.ep-skyCondition-icon img{width: 70%; margin: 10% 0;} 
.ep-skyCondition-temp {display: table-cell;width: 70%;padding-left: 20px;padding-right:10px; font-weight: bold;vertical-align: middle;font-size: 13px;}

/* 대기정보 아이콘 */
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info-left{float:left; width:30%; text-align:center;}
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info-icon { text-align:center; height:96px}
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info-icon > div{ width : 100%}
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info-icon > div > span{font-weight:bold; margin-top:5px; display:block}
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info-icon > div > img{margin:5px 0; width:35%; min-height:37px}

/* 대기정보 아이콘 버튼 */
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info-icon_btn{ padding : 0 10px }
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info-icon_btn > .btn_start{width:14px; cursor:pointer; float:right; display:none}
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info-icon_btn > .btn_stop {width:14px; cursor:pointer; float:right;}
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info-icon_btn > .btn_plus {width:14px; cursor:pointer; float:right;}

/* 대기정보 테이블 */
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info-right{ float:right; width:70%}
.skyCondition_table { width:95% }
.skyCondition_table th{min-height:21px; padding-top:1px; padding-bottom:1px; padding-right:5px; text-align:right}
.skyCondition_table td{min-height:21px; padding-top:1px; padding-bottom:1px; padding-right:10px; text-align:right; font-weight:bold}

.ep-skyCondition-alt{ font-weight :bold; font-size:13px }
.ep-skyCondition-state1{color:#507cd8}
.ep-skyCondition-state2{color:#08917b}
.ep-skyCondition-state3{color:#ff9900}
.ep-skyCondition-state4{color:#eb1919}
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info{display:none;}

/* 날씨정보 */
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-weather-info{}
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-weather-info-left{float:left; width:29%; text-align:center;}
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-weather-info-icon > div > span{font-weight:bold; display:block}
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-weather-info-icon > div > img{width:65%}
.ep-weather-temperature { font-size: 19px; color: #f68c1a; }

/* 날씨정보 테이블 */
.eXPortal_WeatherPortlet2_ds7xq2_2_ep-weather-info-right{ float:right; width:70%}
.weather_table{ width:95% }
.weather_table th{min-height:21px; padding-top:1px; padding-bottom:1px; padding-right:5px; text-align:right}
.weather_table td{min-height:21px; padding-top:1px; padding-bottom:1px; padding-right:10px; text-align:right; font-weight:bold}

/*레이어 팝업*/
.eXPortal_WeatherPortlet2_ds7xq2_2_skyCondition-layerPopup { display:none; z-index: 20; padding: 10px; border: 4px solid #ddd; position: absolute; left: 8px; top: 6px; background: #fff; width: 89%; height: 188px;}
.eXPortal_WeatherPortlet2_ds7xq2_2_skyCondition-layerPopup .pop_top { width: 100%; background: #3d4a5d; height: 30px; margin-bottom: 5px; }
.eXPortal_WeatherPortlet2_ds7xq2_2_skyCondition-layerPopup .pop_top .btn { position: absolute; top: 18px; right: 15px; }
.eXPortal_WeatherPortlet2_ds7xq2_2_skyCondition-layerPopup .pop_top .btn .btn_close_pop{display:block;width:14px;height:14px;background:url(\2F eXPortal\2F images\2F dust\2F ico\5F pop\5F close\2E png) no-repeat; cursor:pointer;}

.eXPortal_WeatherPortlet2_ds7xq2_2_skyCondition-layerPopup .layerTitle {position: absolute; top: 12px; left: 20px; font-size: 17px; color: #fff; font-weight: 600;}
.eXPortal_WeatherPortlet2_ds7xq2_2_skyCondition-layerPopup thead th:first-child, .eXPortal_WeatherPortlet2_ds7xq2_2_skyCondition-layerPopup tbody th{text-align:right; padding-right:5px}
.eXPortal_WeatherPortlet2_ds7xq2_2_skyCondition-layerPopup thead th:not(:first-child){background-repeat: no-repeat; background-size: 30%; background-position-y: 12px; background-position-x: 7px; padding-left: 25px;}
</style>



<div class="ep-section ep-content-out" style="margin-top:-22px;">
    <!-- header begin -->
    <div class="eXPortal_WeatherPortlet2_ds7xq2_2_ep-weather-header-left-wrap">
        <ul class="board_tab_area w02" style="display:inline-flex">
        		<li class="on" onclick="eXPortal_WeatherPortlet2_ds7xq2_2_chg_tab(this)" data-type="weather"><a>날씨</a></li>
                <li onclick="eXPortal_WeatherPortlet2_ds7xq2_2_chg_tab(this)" data-type="skyCondition"><a>대기환경</a></li>
                
        </ul>
    </div>
    <div class="eXPortal_WeatherPortlet2_ds7xq2_2_ep-weather-header-right-wrap">
        <div class="ep-weather-header-top" id="weather_region">데이터를 받아오지 못했습니다.</div>
        <div class="ep-weather-header-top" id="skyCondition_region" style="display: none;">데이터를 받아오지 못했습니다.</div>
        <div class="ep-weather-header-bottom" style="clear:both; float:right">2020-08-13 목 14:00</div>
    </div>
    <!-- header end -->
    <!-- body begin -->
    <div class="ep-section ep-group-out" style="height: 115px; margin: auto;">

      <div class="ep-subsection ep-group ep-left-list ep-weather-content-wrap">
        <!-- 대기정보 start -->
        <div class="eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info">
            <!-- 대기정보 아이콘 -->
            <div class="eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info-left">
                <div class="eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info-icon" style="position: relative; width: 107px; height: 102px; overflow: hidden;">
                    <!-- 미세먼지 -->
                    
                    <div class="pm10" style="position: absolute; top: -102px; left: 0px; display: none; z-index: 2; opacity: 1; width: 100px;">
                        <span class="ep-skyCondition-state">미세먼지
                        </span>
                        <img alt="" src="/"><br>
                        <span class="ep-skyCondition-alt ep-skyCondition-state">
                           
                            :
                            ㎍/㎥
                        </span>
                    </div>
                    
                    <!-- 초미세먼지 -->
                    
                    <div class="pm25" style="position: absolute; top: 0px; left: 0px; display: block; z-index: 3; opacity: 1; width: 100px;">
                        <span class="ep-skyCondition-state">초미세먼지
                        </span>
                        <img alt="" src="/"><br>
                        <span class="ep-skyCondition-alt ep-skyCondition-state">
                           
                            :
                            ㎍/㎥
                        </span>
                    </div>
                    
                    
                </div>
                <div class="eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info-icon_btn">
                	
                	<img alt="설정" style="width:14px;cursor:pointer;float:right;" src="/eXPortal/images/setting.png" onclick="eXPortal_WeatherPortlet2_ds7xq2_2_setPlace2()">
                    <img class="btn_start" alt="재생" src="/eXPortal/images/dust/ico_btn_start.png" onclick="eXPortal_WeatherPortlet2_ds7xq2_2_resumeAirConditionIconCycle()">
                    <img class="btn_stop" alt="정지" src="/eXPortal/images/dust/ico_btn_stop.png" onclick="eXPortal_WeatherPortlet2_ds7xq2_2_pauseAirConditionIconCycle()">
                    <img class="btn_plus" alt="더보기" src="/eXPortal/images/dust/ico_btn_plus.png" onclick="eXPortal_WeatherPortlet2_ds7xq2_2_layerPopupShow();">
                </div>
            </div>
            
            <!-- 우측 대기정보 테이블 영역 -->
            <div class="eXPortal_WeatherPortlet2_ds7xq2_2_ep-skyCondition-info-right">
                <table class="skyCondition_table board_view" summary="대기정보입니다.">
                    <caption>대기정보</caption>
                    <colgroup>
                        <col width="40%">
                        <col width="60%">
                    </colgroup>
                    <tbody>
                    <!-- 미세먼지 -->
                    <tr>
                        <th scope="row">
                            미세먼지
                        </th>
                        <td class="ep-skyCondition-state">
                            ㎍/㎥
                            <img alt="" src="/" style="height:16px; margin-top:-3px">
                        </td>
                    </tr>
                    <!-- 초미세먼지 -->
                    <tr>
                        <th scope="row">
                            초미세먼지
                        </th>
                        <td class="ep-skyCondition-state">
                            ㎍/㎥
                            <img alt="" src="/" style="height:16px; margin-top:-3px">
                        </td>
                    </tr>
                    <!-- 일산화탄소 -->
                    <tr>
                        <th scope="row">
                            일산화탄소
                        </th>
                        <td class="ep-skyCondition-state">
                            ppm
                            <img alt="" src="/" style="height:16px; margin-top:-3px">
                        </td>
                    </tr>
                    <!-- 오존 -->
                    <tr>
                        <th scope="row">
                            오존
                        </th>
                        <td class="ep-skyCondition-state">
                            ppm
                            <img alt="" src="/" style="height:16px; margin-top:-3px">
                        </td>
                    </tr>
                    <!-- 이산화질소 -->
                    <tr>
                        <th scope="row">
                            이산화질소
                        </th>
                        <td class="ep-skyCondition-state">
                            ppm
                            <img alt="" src="/" style="height:16px; margin-top:-3px">
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- 대기정보 end -->
        
        <!-- 날씨정보 start -->
        <div class="eXPortal_WeatherPortlet2_ds7xq2_2_ep-weather-info">
            <!-- 날씨정보 아이콘 영역 -->
            <div class="eXPortal_WeatherPortlet2_ds7xq2_2_ep-weather-info-left">
                <div class="eXPortal_WeatherPortlet2_ds7xq2_2_ep-weather-info-icon">
                    <!-- 날씨 아이콘 -->
                    <div>
                        <img alt=" 3" src="/eXPortal/images/weather/null.png">
                        <span class="ep-weather-temperature">28.0 ℃</span>
                    </div>
                </div>
                <input class="ep-btnmain" type="button" value="지역설정" onclick="javascript:eXPortal_WeatherPortlet2_ds7xq2_2_setPlace();">
             </div>
             <!-- 날씨정보 테이블 영역 -->
             <div class="eXPortal_WeatherPortlet2_ds7xq2_2_ep-weather-info-right">
                <table class="weather_table board_view" summary="대기정보입니다.">
                    <caption>대기정보</caption>
                    <colgroup>
                        <col width="40%">
                        <col width="60%">
                    </colgroup>
                    <tbody>
                    <!-- 날씨 -->
                    <tr>
                        <th scope="row">날씨</th>
                        <td>소나기</td>
                    </tr>
                    <!-- 강수량 -->
                    <tr>
                        <th scope="row">강수량</th>
                        <td>70%</td>
                    </tr>
                    <!-- 풍향 -->
                    <tr>
                        <th scope="row">풍량</th>
                        <td>남서</td>
                    </tr>
                    <!-- 풍속 -->
                    <tr>
                        <th scope="row">풍속</th>
                        <td>2m/s</td>
                    </tr>
                    <!-- 습도 -->
                    <tr>
                        <th scope="row">습도</th>
                        <td>90%</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- 날씨정보 end -->
        <!-- 대기정보 레이어 팝업 start -->
        <div class="eXPortal_WeatherPortlet2_ds7xq2_2_skyCondition-layerPopup">
            <div class="pop_top"><h1 class="layerTitle">대기정보 기준</h1><p class="btn"><a onclick="eXPortal_WeatherPortlet2_ds7xq2_2_layerPopupHide();" class="btn_close_pop"><span class="blind">팝업 닫기</span></a></p></div>
            <div class="floatThead-wrapper" style="position: relative; clear: both; ">
                
            <div class="eXPortal_WeatherPortlet2_ds7xq2_2_skyCondition_wrapper" style="overflow-x:hidden; position:relative; height: 153px;">
				<table class="board_main" style="table-layout: fixed; min-width: 100%;" summary="대기정보">
					<caption>대기정보</caption>
                    <colgroup>
                        <col width="24%">
                        <col width="19%">
                        <col width="19%">
                        <col width="19%">
                        <col width="19%">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">기준</th>
                            <th scope="col" style="background-image: url(/eXPortal/images/dust/ico_dust01.png)"> 좋음</th>
                            <th scope="col" style="background-image: url(/eXPortal/images/dust/ico_dust02.png)"> 보통</th>
                            <th scope="col" style="background-image: url(/eXPortal/images/dust/ico_dust03.png)"> 나쁨</th>
                            <th scope="col" style="background-image: url(/eXPortal/images/dust/ico_dust04.png)"> 매우<br> 나쁨</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">미세먼지<br>㎍/㎥</th>
                            <td>0~30</td>
                            <td>31~80</td>
                            <td>81~150</td>
                            <td>151~</td>
                        </tr>
                        <tr>
                            <th scope="row">초미세먼지<br>㎍/㎥</th>
                            <td>0~15</td>
                            <td>16~35</td>
                            <td>36~75</td>
                            <td>76~</td>
                        </tr>
                        <tr>
                            <th scope="row">일산화탄소<br>ppm</th>
                            <td>0~2</td>
                            <td>2.01<br>~9</td>
                            <td>9.01<br>~15</td>
                            <td>15.01~</td>
                        </tr>
                        <tr>
                            <th scope="row">오존<br>ppm</th>
                            <td>0~0.03</td>
                            <td>0.031<br>~0.09</td>
                            <td>0.091<br>~0.15</td>
                            <td>0.15~</td>
                        </tr>
                        <tr>
                            <th scope="row">이산화질소<br>ppm</th>
                            <td>0~0.03</td>
                            <td>0.031<br>~0.06</td>
                            <td>0.061<br>~0.2</td>
                            <td>0.201~</td>
                        </tr>
                    </tbody>
				</table>
		    </div>
        </div>
        <!-- 대기정보 레이어 팝업 end -->
      </div>
      
      
      
      </div>
      
      
      
      
    </div>
    
    <div style="font-size:9px;display:none;" id="copyright">
	      <ul>
	      	<li>실시간 관측된 자료이며 현지사정이나 수신 상태에 의해 차이가 발생할 
	      	<br> 수 있습니다.(제공: 한국환경공단)</li>
	      </ul>
      </div>
    <!-- body end -->
</div>
</div></div></div>

</div></li>
</ul></div></div><script type="text/javascript">

{var Y=function(Y){var Portal=function(){Portal.superclass.constructor.apply(this,arguments);};Portal.NAME='portal';Y.extend(Portal,Y.Base);Y.Portal=new Portal();var goingUp=false,lastY=0,trans={};var stopper=function(e){e.stopPropagation();};var _setDatas=function(){var dds=Y.DD.DDM._drags;var list={};Y.each(dds,function(v,k){var par=v.get('node').get('parentNode');if(par!=null){if(par.test('ul.list')){if(!list[par.get('id')]){list[par.get('id')]=[];}}}});Y.each(list,function(v,k){var lis=Y.all('#'+k+' li.item');lis.each(function(v2,k2){var dd=Y.DD.DDM.getDrag(Y.one(v2));if(dd){var mod=dd.get('node').one('div.mod');var min=(mod.hasClass('minned'))?true:false;list[k][list[k].length]={id:dd.get('data').id,min:min};}});});var data=Y.JSON.stringify(list);};var _nodeClick=function(e){if(e.target.test('a')){var a=e.target,anim=null,div=a.get('parentNode').get('parentNode').get('parentNode').get('parentNode').get('parentNode').get('parentNode');if(a.hasClass('min')){var ul=div.one('ul'),h2=div.one('h2'),h=h2.get('offsetHeight'),hUL=ul.get('offsetHeight'),inner=div.one('div.portlet-body');anim=new Y.Anim({node:inner});if(!div.hasClass('minned')){anim.setAttrs({to:{height:0},duration:'.25',easing:Y.Easing.easeOut,iteration:1});anim.on('end',function(){div.toggleClass('minned');});}else{anim.setAttrs({to:{height:(hUL)},duration:'.25',easing:Y.Easing.easeOut,iteration:1});div.toggleClass('minned');}
anim.run();}
e.halt();}};var _moveMod=function(drag,drop){if(drag.get('node').hasClass('item')){var dragNode=drag.get('node'),dropNode=drop.get('node'),append=false,padding=50,xy=drag.mouseXY,region=drop.region,dir=false,dir1=false,dir2=false;var regionDrag=drag.region;var middleDrag=regionDrag.top+((region.bottom-region.top)/2);if(middleDrag<region.bottom&&region.left-padding<regionDrag.left&&regionDrag.right<region.right+padding){dir='top';}else{dir='left';}
if(dir=='top'){var next=dropNode.get('nextSibling');if(next){dropNode=next;}else{append=true;}}
if((dropNode!==null)&&dir){if(dropNode&&dropNode.get('parentNode')){if(!append){dropNode.get('parentNode').insertBefore(dragNode,dropNode);}else{dropNode.get('parentNode').appendChild(dragNode);}}}
Y.Lang.later(50,Y,function(){Y.DD.DDM.syncActiveShims(true);});}};Y.Portal.on('drop:enter',function(e){if(!e.drag||!e.drop||(e.drop!==e.target)){return false;}
if(e.drop.get('node').get('tagName').toLowerCase()==='li'){if(e.drop.get('node').hasClass('item')){_moveMod(e.drag,e.drop);}}});Y.Portal.on('drag:drag',function(e){var y=e.target.mouseXY[1];if(y<lastY){goingUp=true;}else{goingUp=false;}
lastY=y;});Y.Portal.on('drag:drophit',function(e){var drop=e.drop.get('node'),drag=e.drag.get('node');if(drop.get('tagName').toLowerCase()!=='li'){if(!drop.contains(drag)){drop.appendChild(drag);}}});Y.Portal.on('drag:start',function(e){var drag=e.target;if(drag.target){drag.target.set('locked',true);}
drag.get('dragNode').set('innerHTML','<div style="width: 100%; height: 100%; background-color:black;"></div>');drag.get('dragNode').setStyle('opacity','.5');drag.get('node').one('div.mod').setStyle('visibility','hidden');drag.get('node').addClass('moving');});Y.Portal.on('drag:end',function(e){var drag=e.target;if(drag.target){drag.target.set('locked',false);}
drag.get('node').setStyle('visibility','');drag.get('node').one('div.mod').setStyle('visibility','');drag.get('node').removeClass('moving');_setDatas();});Y.Portal.on('drop:over',function(e){var drop=e.drop.get('node'),drag=e.drag.get('node');if(drop.get('tagName').toLowerCase()!=='li'){if(!drop.contains(drag)){drop.appendChild(drag);Y.Lang.later(50,Y,function(){Y.DD.DDM.syncActiveShims(true);});}}});var uls=Y.all('div.ep_pg_play ul.list');uls.each(function(v,k){var tar=new Y.DD.Drop({node:v,padding:'20 0',bubbles:Y.Portal});});var lis=Y.all('div.ep_pg_play ul.list li.item');Y.each(lis,function(v){var mod=Y.one(v);var modName=v.get('id');var data={'id':modName};var drag=new Y.DD.Drag({node:mod,data:data,bubbles:Y.Portal}).plug(Y.Plugin.DDProxy,{moveOnEnd:false,borderStyle:'none'});mod.dd.addHandle('h2');if(mod.one('h2')!=null){mod.one('h2').on('click',_nodeClick);drag.set('target',true);drag._unprep();drag._prep();}});}
YUI().use('io-base','dd','event','anim','json',Y);}

</script>

<iframe src="/portalctnt/graduatePage!10011" title="frm10011" style="width:0px;height:0px;border-width:0px;"></iframe>
			
			
		</strong></div><strong>
		
	
	<!-- Footer block: copyright -->
	<div id="footer_area">

		<div class="footer">
			<p class="logo">
				<img src="/eXPortal/portalresources/theme/images/hyw/ft_logo.png" alt="한양여자대학교">
			</p>
			<ul class="info">
				<li>04763 서울특별시 성동구 살곶이길 200(사근동) Tel 02.2290.2114 ｜ Fax
					02.2291.6111</li>
				<li>Copyright 2018. Hanyang Women’s University All Rights
					Reserved.</li>
			</ul>
			
		</div>
	</div>
	
	
<script type="text/javascript">

function setPopupCookie(poChkBox, psCookieName, pnExpireDate) {
  if($(poChkBox).is(":checked") == true) {
    setCookie(psCookieName, "Y", pnExpireDate);
  } else {
    setCookie(psCookieName, null, -1);
  }
}

function setCookie(name, value, expireDate) {
  var today = new Date();
  today.setDate(today.getDate() + expireDate); 
  document.cookie = (name + "=" + escape(value) + ";path=/;expires=" + today.toGMTString() + ";");
}

</script>



</strong><div id="jstree-marker" style="display: none;">»</div><div id="jstree-marker-line" style="display: none;"></div><div id="vakata-contextmenu"></div></body></html>
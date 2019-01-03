<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--360浏览器优先以webkit内核解析-->
    <title>网管中心设备管理系统</title>
    <link rel="shortcut icon" href="images/favicon.ico">
    <link href="plug-in/hplus/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="plug-in/hplus/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="plug-in/hplus/css/animate.css" rel="stylesheet">
    <link href="plug-in/hplus/css/style.css?v=4.1.0" rel="stylesheet">
    <link rel="stylesheet" href="plug-in/themes/fineui/main/iconfont.css">
    <script src="plug-in/laydate/laydate.js"></script>
    <style type="text/css">
        .gray-bg {
            background-color: #e9ecf3;
        }

        .p-lg {
            padding: 0px 0px 10px 0px;
        }

        .widget {
            margin-top: 0px;
        }

        .iconfont {
            font-size: 30px;
            color: white;
        }

        h2 {
            font-size: 19px;
        }

        .flot-chart {
            height: 400px;
        }

        @media (min-width: 992px) {
            .col-cs-2 {
                width: 11.11%;
                padding-left: 5px;
                padding-right: 5px;
                float: left;
            }
        }

    </style>
</head>
<body class="white-bg">
<%--<div class="wrapper wrapper-content">--%>
<%--<div class="row">
    <div class="col-md-1 col-cs-2 col-xs-4">
        <div class="widget  p-lg text-center" style="background: #cfa972;">
            <div><!-- class="ibtn" -->
                <i class="iconfont icon-zhihuizhongxin" style="font-size: 30px;"></i>
                <h3 class="font-bold no-margins"></h3>
                <small>功能1</small>
            </div>
        </div>
    </div>
    <div class="col-md-1 col-cs-2 col-xs-4">
        <div class="widget  p-lg text-center" style="background: #f29b76;">
            <div>
                <i class="iconfont icon-yujing" style="font-size: 30px;"></i>
                <h3 class="font-bold no-margins"></h3>
                <small>功能2</small>
            </div>
        </div>
    </div>
    <div class="col-md-1 col-cs-2 col-xs-4">
        <div class="widget  p-lg text-center" style="background: #acd598;">
            <div>
                <i class="iconfont icon-ln-" style="font-size: 30px;"></i>
                <h3 class="font-bold no-margins"></h3>
                <small>功能3</small>
            </div>
        </div>
    </div>
    <div class="col-md-1 col-cs-2 col-xs-4">
        <div class="widget  p-lg text-center" style="background: #84ccc9;">
            <div>
                <i class="iconfont icon-wuliu" style="font-size: 30px;"></i>
                <h3 class="font-bold no-margins"></h3>
                <small>功能4</small>
            </div>
        </div>
    </div>
    <div class="col-md-1 col-cs-2 col-xs-4">
        <div class="widget  p-lg text-center" style="background: #89c997;">
            <div>
                <i class="iconfont icon-quanshengmingzhouqiguanli" style="font-size: 30px;"></i>
                <h3 class="font-bold no-margins"></h3>
                <small>功能5</small>
            </div>
        </div>
    </div>

</div>--%>
<%--<div class="row  border-bottom white-bg dashboard-header">
    <div class="col-sm-12">
        <blockquote class="text-warning" style="font-size:14px">您是否需要一款企业级J2EE快速开发平台，提高开发效率，缩短项目周期…
            <br>您是否一直在苦苦寻找一款强大的代码生成器，节省码农的繁琐重复工作…
            <br>您是否想拥有移动报表能力、自定义表单设计能力、插件开发能力(可插拔)、工作流配置能力…
            <br>…………
            <h4 class="text-danger">那么，现在Jeecg来了</h4>
        </blockquote>
        <hr>
    </div>
</div>--%>

    <!-- 全局js -->
    <script src="plug-in/hplus/js/jquery.min.js?v=2.1.4"></script>
    <script src="plug-in/hplus/js/bootstrap.min.js?v=3.3.6"></script>
    <!-- 自定义js -->
    <script src="plug-in/hplus/js/content.js"></script>
    <script type="text/javascript" src="plug-in/jquery-plugs/i18n/jquery.i18n.properties.js"></script>
    <t:base type="tools"></t:base>
</body>
</html>
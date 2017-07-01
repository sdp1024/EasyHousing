<%@page import="com.easyhousing.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%
  HttpSession s = request.getSession(); 
  User user = (User)s.getAttribute("user");
%>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    .name {
      width: 100px;
      height: 100px;
      position: relative;
      background: transparent url(<%out.print(user.getUserPhoto());%>) no-repeat scroll;
      background-size: cover;

      margin: 25px;
    }

    .main-left {
      width: 150px;
      border: 1px solid #E6E5E5;
      padding: 35px 0px;
      background-color: #FFF;
      box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.15);
    }

    .user-main {
      width: 1000px;
      margin: 0 auto;
      padding: 30px 0;
    }

    .fl {
      float: left;
    }

    .user-main .main-right {
      box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.15);
      padding: 35px;
      background-color: #FFF;
      border: 1px solid #E6E5E5;
      width: 755px;
    }

    .fr {
      float: right;
    }

    .user-main .main-right .tab span.hover {
      background-color: #E6E5E5;
      display: inline-block;
      height: 38px;
      color: #333;
      cursor: default;
    }

    .user-main .main-right .tab span {
      padding: 0px 25px;
      font-size: 14px;
      color: #888;
      cursor: pointer;
    }

    .user-main .main-right .all-list .list-bot li {
      border-bottom: 1px dashed #e9e9e9;
      height: 170px;
      position: relative;
    }

    .user-main .main-left ul li a {

      text-align: center;
      color: #555;
      font-size: 14px;
    }

    .user-main .main-right {
      box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.15);
      padding: 35px;
      background-color: #FFF;
      border: 1px solid #E6E5E5;
      width: 755px;
    }

    .user-main .main-right .title {
      font-size: 22px;
      font-weight: bold;
    }

    .user-main .main-right .title span {
      color: #e4393c;
      margin: 0 10px;
    }

    .user-main .main-right .tab {
      margin-top: 20px;
      background-color: #F5F5F5;
      height: 38px;
      line-height: 38px;
      border-bottom: 1px solid #E6E6E6;
    }

    .user-main .main-right .tab span {
      padding: 0px 25px;
      font-size: 14px;
      color: #888;
      cursor: pointer;
    }

    .user-main .main-right .tab span.hover {
      background-color: #E6E5E5;
      display: inline-block;
      height: 38px;
      color: #333;
      cursor: default;
    }

    .list_tit {
      width: 100%;
      height: 35px;
      line-height: 35px;
      font-size: 14px;
      margin-top: 10px;
      border-bottom: 1px solid #ccc;
      overflow: hidden;
    }

    .list_tit .cenl {
      width: 500px;
      height: 35px;
      overflow: hidden;
    }

    .fl {
      float: left;
    }

    .list_tit .cenl strong {
      color: #c00000;
      font-weight: bold;
    }

    i, em {
      font-style: normal;
    }

    .list_tit .cenr {
      width: 600px;
      height: 35px;
      text-align: right;
      overflow: hidden;
    }

    .fr {
      float: right;
    }

    .list_tit a.first {
      margin: 0;
    }

    .list_tit .active {
      font-weight: bold;
      color: #c00000;
    }

    .list_tit a {
      margin-left: 10px;
    }

    a {
      text-decoration: none;
      color: #333;
      outline: none;
    }

    .list_tit .hovs {
      background: url(../images/rentWindow/djimg80.png) no-repeat right center;
    }

    .list_tit .hovs, .list_tit .hovx {
      padding-right: 10px;
    }

    .list_tit a {
      margin-left: 10px;
    }

    a {
      text-decoration: none;
      color: #333;
      outline: none;
    }

    .list_tit .hovx {
      background: url(../images/rentWindow/djimg81.png) no-repeat right center;
    }

    .list_tit .hovs, .list_tit .hovx {
      padding-right: 10px;
    }

    .list_tit a {
      margin-left: 10px;
    }

    a {
      text-decoration: none;
      color: #333;
      outline: none;
    }

    ol, ul, li {
      list-style: none;
    }

    ul, menu, dir {
      display: block;
      list-style-type: disc;
      -webkit-margin-before: 1em;
      -webkit-margin-after: 1em;
      -webkit-margin-start: 0px;
      -webkit-margin-end: 0px;
      -webkit-padding-start: 40px;
    }

    .mor_list li {
      height: 190px;
      padding: 20px 10px 20px 195px;
      background: #fff;
      border-bottom: 1px solid #eee;
      overflow: hidden;
      cursor: pointer;
      position: relative;
    }

    .data_link {
      width: 100%;
      height: 100%;
      position: absolute;
      top: 0;
      left: 0;
      z-index: 200;
      display: block;
    }

    a {
      text-decoration: none;
      color: #333;
      outline: none;
    }

    .mor_list li .mor_img {
      width: 185px;
      height: 150px;
      overflow: hidden;
      background: #ccc;
      position: absolute;
      top: 20px;
      left: 10px;
      z-index: 1;
      font-size: 14px;
      font-weight: bold;
    }

    a {
      text-decoration: none;
      color: #333;
      outline: none;
    }

    .mor_list li .mor_img img {
      width: 100%;
      height: 100%;
    }

    fieldset, img {
      border: 0;
    }

    .mor_list li .mor_txt {
      width: 100%;
      height: 150px;
      margin-left: 10px;
      position: relative;
    }

    .mor_list li .mor_txt h3 {
      height: 23px;
      font-size: 18px;
      font-weight: bold;
      line-height: 20px;
      white-space: nowrap;
      text-overflow: ellipsis;
      overflow: hidden;
    }

    .mor_list li .mor_txt .dot {
      width: 100%;
      height: 48px;
    }

    .mor_list li .mor_txt p {
      width: 100%;
      height: 24px;
      margin-top: 10px;
      line-height: 24px;
      font-size: 14px;
      color: #666;
      overflow: hidden;
    }

    .mor_list li .mor_txt .dor {
      height: 24px;
      padding-left: 15px;
      background: url(../images/rentWindow/djimg25.png) no-repeat left center;
      white-space: nowrap;
      text-overflow: ellipsis;
    }

    p {
      display: block;
      -webkit-margin-before: 1em;
      -webkit-margin-after: 1em;
      -webkit-margin-start: 0px;
      -webkit-margin-end: 0px;
    }

    .mor_list li .mor_txt a {
      height: 22px;
      line-height: 22px;
      display: block;
      float: left;
      margin-right: 5px;
      border: 1px solid;
      padding: 0 5px;
      cursor: default;
    }

    .bq_cor_1, .bq_cor_11, .bq_cor_21, .bq_cor_31, .bq_cor_41, .bq_cor_51, .bq_cor_61, .bq_cor_71, .bq_cor_81, .bq_cor_91, .bq_cor_101, .bq_cor_111, .bq_cor_121, .bq_cor_131, .bq_cor_141, .bq_cor_151, .bq_cor_161, .bq_cor_171, .bq_cor_181, .bq_cor_191 {
      color: #ff943e;
      border-color: #ff943e;
    }

    .bq_cor_2, .bq_cor_12, .bq_cor_22, .bq_cor_32, .bq_cor_42, .bq_cor_52, .bq_cor_62, .bq_cor_72, .bq_cor_82, .bq_cor_92, .bq_cor_102, .bq_cor_112, .bq_cor_122, .bq_cor_132, .bq_cor_142, .bq_cor_152, .bq_cor_162, .bq_cor_172, .bq_cor_182, .bq_cor_192 {
      color: #9a89b9;
      border-color: #9a89b9;
    }

    .bq_cor_3, .bq_cor_13, .bq_cor_23, .bq_cor_33, .bq_cor_43, .bq_cor_53, .bq_cor_63, .bq_cor_73, .bq_cor_83, .bq_cor_93, .bq_cor_103, .bq_cor_113, .bq_cor_123, .bq_cor_133, .bq_cor_143, .bq_cor_153, .bq_cor_163, .bq_cor_173, .bq_cor_183, .bq_cor_193 {
      color: #47a8d9;
      border-color: #47a8d9;
    }

    a {
      text-decoration: none;
      color: #333;
      outline: none;
    }

    .mor_list li .mor_tip:last-child {
      right: 0;
    }

    .mor_list li .mor_w {
      width: 240px;
    }

    .mor_list li .mor_tip {
      width: 140px;
      text-align: center;
      font-size: 14px;
      line-height: 18px;
      overflow: hidden;
      position: absolute;
      top: 65px;
      right: 170px;
      z-index: 1;
    }

    .mor_list li .mor_tip p {
      height: 30px;
      line-height: 30px;
    }

    .mor_list li .mor_tip strong {
      color: #c00000;
      font-weight: bold;
      font-size: 30px;
    }

    .mor_list li .mor_tip:last-child {
      right: 0;
    }

    .mor_list li .mor_w {
      width: 240px;
    }

    .mor_list li .mor_tip {
      width: 140px;
      text-align: center;
      font-size: 14px;
      line-height: 18px;
      overflow: hidden;
      position: absolute;
      top: 65px;
      right: 170px;
      z-index: 1;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">
      <nav class="navbar navbar-default navbar-fixed-top navbar-inverse" style="background-color:rgb(30,70,100)">
        <div class="container">
          <!-- Brand and toggle get grouped for better mobile display -->

          <div class="navbar-header ">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" href=${pageContext.request.contextPath}/jsp/html/homepage.jsp>Easyhousing</a>

          </div>

          <!-- 左上角的导航 -->


          <div class="collapse navbar-collapse nav-justified" id="bs-example-navbar-collapse-1">
            <div class="col-md-offset-3 column">
              <ul class="nav navbar-nav">
                <li style="margin-right:150px;margin-left:50px;"><a href=${pageContext.request.contextPath}/jsp/html/homepage.jsp>主页<span
                  class="sr-only">(current)</span></a></li>

                <li data-toggle="modal" data-target="#about"><a href="https://github.com/632team/EasyHousing">关于</a></li>
              </ul>
            </div>


            <ul class="nav navbar-nav navbar-right">
              <li data-toggle="modal" data-target="#signin-signup-tab" id="signin-button"><a href=${pageContext.request.contextPath}/logout.do>注销</a></li>

            </ul>

          </div>
        </div>


      </nav>
    </div>
  </div>
  <br><br><br>
  <div class="container">
    <div class="user-main">
      <div class="main-left fl">
        <ul class="nav nav-pills nav-stacked">
          <li role="presentation"><img class="img-responsive name img-rounded"></li>


          <li role="presentation"><a href=${pageContext.request.contextPath}/jsp/html/MyHome/userCenter.jsp>编辑资料</a></li>
          <li role="presentation" class="active"><a href=${pageContext.request.contextPath}/jsp/html/MyHome/collection.jsp>我的收藏</a></li>
          <li role="presentation"><a href=${pageContext.request.contextPath}/jsp/html/MyHome/myHouse.jsp>我的房子</a></li>
          <li role="presentation"><a href=${pageContext.request.contextPath}/jsp/html/MyHome/comment.jsp>我的评论</a></li>
          <li role="presentation"><a href=${pageContext.request.contextPath}/jsp/html/MyHome/application.jsp>我的申请</a></li>
          <li role="presentation"><a href=${pageContext.request.contextPath}/jsp/html/MyHome/dealHistory.jsp>成交记录</a></li>
        </ul>
      </div>
      <div class="main-right fr">
        <div class="allList">
          <div class="title">您关注的楼盘/租房最新动态</div>

          <div class="tab">
            <span class="actTap actSetArgs hover">楼盘</span>
            <span class="actTap actSetArgs ">租房</span>

          </div>
          <div class="all-list selected fav-list" style="display:block;" id="ershoufang">
            <ul class="list-bot">
            </ul>
          </div>
          <div class="page">
            <div id="paginageBox" class="page-box"></div>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>
</body>
<script>
  $('.user-main .tab span').click(function () {
    $('.js_ajaxError').hide();
    if ($(this).text() == '新房') {
      $(this).addClass('hover').siblings().removeClass('hover');
      $('#updatePwd').css('display', 'block');
      $('#updateName').css('display', 'none');
      $('#updatePortrait ').css('display', 'none');
    }
    if ($(this).text() == '租房') {
      $(this).addClass('hover').siblings().removeClass('hover');
      $('#updatePwd').css('display', 'none');
      $('#updateName').css('display', 'none');
      $('#updatePortrait ').css('display', 'block');
    }
    if ($(this).text() == '个人信息') {
      $(this).addClass('hover').siblings().removeClass('hover');
      $('#updatePwd').css('display', 'none');
      $('#updateName').css('display', 'block');
      $('#updatePortrait ').css('display', 'none');
    }

  });

</script>
</html>
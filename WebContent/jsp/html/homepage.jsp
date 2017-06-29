<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>首页</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, p, blockquote, th, td {
      margin: 0;
      padding: 0;
    }
    body {
      height: 100%;
      font-size: 12px;
      color: #333;
      background: #f2f2f2;
      min-width: 1220px;
    }
    .pointercon, .home_fy strong, .movingbox, .home_fyb, .headtit, .homephoto, .logincon, .addWrap, .fotpof, .sjmancon, .fxman {
       display: none;
     }
    body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, p, blockquote, th, td {
      margin: 0;
      padding: 0;
    }
    * {
      font-family: "Microsoft YaHei",Helvetica,sans-serif;
      font-family: "微软雅黑", Helvetica, Arial, sans-serif;
      word-break: break-all;
    }
    .home_head {
      width: 100%;
      height: 700px;
      background: url(${pageContext.request.contextPath}/jsp/images/homepage/bannerV2.jpg) no-repeat center top;
      background-size: cover;
    }
    .headerbg {
      width: 100%;
      height: 50px;
      position: relative;
    }
    .header {
      width: 1220px;
      height: 50px;
      line-height: 50px;
      font-size: 14px;
      color: #fff;
      margin: auto;
      padding-top: 20px;
      position: relative;
    }
    .header a {
      color: #fff;
    }
    a {
      text-decoration: none;
      color: #333;
      outline: none;
    }
    .header .logo {
      width: 160px;
      float: left;
    }
    fieldset, img {
      border: 0;
      border-top-color: initial;
      border-top-style: initial;
      border-top-width: 0px;
      border-right-color: initial;
      border-right-style: initial;
      border-right-width: 0px;
      border-bottom-color: initial;
      border-bottom-style: initial;
      border-bottom-width: 0px;
      border-left-color: initial;
      border-left-style: initial;
      border-left-width: 0px;
      border-image-source: initial;
      border-image-slice: initial;
      border-image-width: initial;
      border-image-outset: initial;
      border-image-repeat: initial;
    }
    .home_head .header .city {
      color: #333;
      background: url(${pageContext.request.contextPath}/jsp/images/homepage/citybg-1.png) no-repeat left 17px;
    }
    .header .city {
      width: 40px;
      height: 50px;
      line-height: 50px;
      float: left;
      margin-left: 10px;
      padding-left: 15px;
      /*background: url(${pageContext.request.contextPath}/jsp/images/citybg.png) no-repeat left 17px;*/
      font-size: 16px;
    }
    .header .nav {
      width: 850px;
      height: 50px;
      float: left;
      font-size: 22px;
      font-weight: bold;
    }
    .header .nav span {
      height: 50px;
      float: left;
      margin-left: 80px;
      position: relative;
      z-index: 9;
      display: block;
    }
    .header .nav span .hrf {
      height: 24px;
      line-height: 24px;
      display: block;
      margin-top: 13px;
    }
    .search_box {
      width: 850px;
      height: 155px;
      margin: auto;
      padding-top: 35px;
      border-radius: 5px;
      /*background: url(${pageContext.request.contextPath}/jsp/images/winbg.png);*/
      margin-top: 220px;
    }
    .search_box .search {
      width: 725px;
      height: 50px;
      margin: 10px auto;
    }
    .search_box .search .sh_l {
      width: 600px;
      height: 50px;
      border-radius: 5px;
      background: url(${pageContext.request.contextPath}/jsp/images/homepage/shbg.png);
      position: relative;
    }
    .fl {
      float: left;
    }
    .search_box .search .sh_sel {
      width: 75px;
      height: 50px;
      font-size: 14px;
      padding-left: 10px;
      color: #333;
      position: relative;
    }
    .fl {
      float: left;
    }
    .search_box .search .sh_sel span {
      width: 55px;
      height: 50px;
      line-height: 50px;
      padding-right: 10px;
      background: url(${pageContext.request.contextPath}/jsp/images/homepage/djimg03.png) no-repeat right center;
      display: block;
      white-space: nowrap;
      text-overflow: ellipsis;
      overflow: hidden;
      cursor: pointer;
      font-size: 16px;
      font-weight: bold;
      text-align: center;
    }
    .search_box .search .sh_sel ul {
      width: 60px;
      position: absolute;
      top: 48px;
      left: 0;
      background: url(${pageContext.request.contextPath}/jsp/images/homepage/shbg.png);
      padding: 5px 6px;
      display: none;
    }
    .search_box .search .sh_sel ul li {
      line-height: 30px;
      font-size: 16px;
      font-weight: bold;
      text-align: center;
      white-space: nowrap;
      text-overflow: ellipsis;
      overflow: hidden;
      cursor: pointer;
    }
    i, em {
      font-style: normal;
    }
    .search_box .search .sh_l .text {
      width: 440px;
      height: 20px;
      line-height: 20px;
      padding: 0 5px;
      float: left;
      margin-top: 15px;
      border: none;
      background: none;
      color: #666;
      font-size: 14px;
    }
    input[type="text"], input[type="passwrod"] {
      outline: none;
    }
    #autoSearchItem {
      width: 600px;
      background: #fff;
      border: 1px solid #ddd;
      position: absolute;
      top: 50px;
      left: 0;
      visibility: hidden;
    }
    .search_box .search .sh_l .btn {
      width: 60px;
      height: 50px;
      float: right;
      font-size: 0;
      background: url(${pageContext.request.contextPath}/jsp/images/homepage/djimg04.png) no-repeat center center;
      border: none;
    }
    .search_box .search .sh_r {
      width: 120px;
      height: 50px;
      border-radius: 5px;
      background: url(${pageContext.request.contextPath}/jsp/images/homepage/djimg29.png);
      line-height: 50px;
      text-align: center;
      overflow: hidden;
    }
    .search_box .search .sh_r a {
      height: 50px;
      font-size: 18px;
      font-weight: bold;
      color: #fff;
      display: inline-block;
      padding-left: 15px;
      background: url(${pageContext.request.contextPath}/jsp/images/homepage/djimg05.png) no-repeat left center;
    }
    .mf_link {
      width: 1200px;
      font-size: 14px;
      margin: auto;
      padding: 40px 0;
    }
    .mf_link .mf_item {
      width: 100%;
      height: 190px;
      text-align: center;
      font-size: 0;
      overflow: hidden;
    }
    .mf_link .mf_item strong {
      width: 33%;
      height: 190px;
      display: inline-block;
      cursor: pointer;
      vertical-align: top;
    }
    .mf_link .mf_item strong div {
      width: 100%;
      height: 152px;
      line-height: 104px;
      font-size: 0;
      overflow: hidden;
    }
    .mf_link .mf_item strong div span {
      width: 0;
      height: 100%;
      display: inline-block;
      vertical-align: middle;
    }
    .mf_link .mf_item strong div img {
      display: inline-block;
      vertical-align: middle;
    }
    fieldset, img {
      border: 0;
    }
    .mf_link .mf_item strong h3 {
      font-size: 18px;
      line-height: 22px;
      font-weight: bold;
    }
    .mf_link .mf_item strong h3, .mf_link ul li p {
      white-space: nowrap;
      text-overflow: ellipsis;
      overflow: hidden;
    }
    .mf_link .mf_item strong p {
      line-height: 22px;
      margin-top: 16px;
      font-size: 14px;
    }
    .home_nh {
      width: 100%;
    }
    .nhscon {
      width: 1200px;
      margin: auto;
      padding: 80px 0;
    }
    .nhtitle {
      height: 45px;
      line-height: 45px;
      overflow: hidden;
    }
    .nhtitle strong {
      float: left;
      font-size: 24px;
    }
    .nhtitle strong b {
      font-size: 36px;
    }
    .nhlist {
      width: 100%;
      height: 340px;
      overflow: hidden;
    }
    .nhlist ul {
      padding-top: 20px;
    }
    .nhlist li {
      width: 32%;
      height: 320px;
      float: left;
      margin-left: 2%;
      overflow: hidden;
    }
    .nhlist img {
      width: 100%;
      height: 100%;
      position: relative;
      z-index: 1;
      transition: all 0.8s;
    }
    .nhlist a:hover img {
      opacity: 0.8;
      transform: scale(1.1);
    }
    /*.nhlist strong {*/
      /*width: 100%;*/
      /*height: 100%;*/
      /*!*background: url(${pageContext.request.contextPath}/jsp/images/homepage/windowbg.png);*!*/
      /*text-align: center;*/
      /*font-size: 0;*/
      /*position: absolute;*/
      /*top: 0;*/
      /*left: 0;*/
      /*z-index: 3;*/
      /*overflow: hidden;*/
      /*display: block;*/
    /*}*/
    .nhlist i {
      width: 0;
      height: 100%;
      display: inline-block;
      vertical-align: middle;
    }
    .nhlist strong span {
      display: inline-block;
      vertical-align: middle;
      font-size: 18px;
    }
    .nhlist strong b {
      display: block;
      height: 40px;
      line-height: 40px;
      font-size: 24px;
      text-shadow: 0 2px 2px #333;
      overflow: hidden;
    }
    .nhlist strong em {
      color: #f90;
      font-weight: bold;
      font-size: 24px;
    }
    i, em {
      font-style: normal;
    }
  </style>
</head>
<body class="homebd">
  <div class="fotpof">
  </div>
  <div class="home_head homepatp">
    <div class="headbox">
      <div class="headerbg">
        <div class="header">
          <a href=${pageContext.request.contextPath}/jsp/html/homepage.jsp>
            <img src=${pageContext.request.contextPath}/jsp/images/homepage/logo1.png class="logo">
          </a>
          <div class="city">
            <!--重庆-->
          </div>
          <div class="nav navml">
            <span>
              <a href=${pageContext.request.contextPath}/jsp/html/homepage.jsp class="href">首页</a>
            </span>
            <span>
              <a href=${pageContext.request.contextPath}/jsp/html/homepage.jsp class="href">二手房</a>
            </span>
            <span>
              <a href=${pageContext.request.contextPath}/jsp/html/homepage.jsp class="href">新房</a>
            </span>
            <span>
              <a href=${pageContext.request.contextPath}/rentHouseSelect.do class="href">租房</a>
            </span>
            <span>
              <a href=${pageContext.request.contextPath}/jsp/html/logIn.jsp class="href">登录</a>
            </span>
            <span>
              <a href=${pageContext.request.contextPath}/jsp/html/register.jsp class="href">注册</a>
            </span>
          </div>
        </div>
      </div>
      <div class="search_box searchtp">
        <div class="shtop">
          <img src=${pageContext.request.contextPath}/jsp/images/homepage/djimg01.png>
        </div>
        <div class="search">
          <div class="sh_l fl">
            <div class="sh_sel fl">
              <span>
                租房
              </span>
              <ul id="serchar" style>
                <li class="sel">
                  <i>租房</i>
                </li>
                <li>
                  <i>新房</i>
                </li>
                <li>
                  <i>租房</i>
                </li>
              </ul>
            </div>
            <input type="text" id="autoSearchText" value="请输入位置开始找房" class="text" maxlength="20" autocomplete="off">
            <div id="autoSearchItem" style="height:285px; visibility: hidden">
            </div>
            <input type="button" value onclick="indexSerch()" class="btn">
          </div>
          <div class="sh_r fr">
            <a href="/" class="a1">开始找房</a>
          </div>
        </div>

      </div>
    </div>

  </div>
  <div class="mf_link">
    <div class="mf_item">
      <strong>
        <div>
          <span></span>
          <img src=${pageContext.request.contextPath}/jsp/images/homepage/djimg30.png alt="找出租房" title="找出租房">
        </div>
        <h3>找出租房</h3>
        <p>舒适出租房，易购承诺真实
        <br>
          在线出租，所见即真
        </p>
      </strong>
      <strong>
      <div>
        <span></span>
        <img src=${pageContext.request.contextPath}/jsp/images/homepage/djimg31.png alt="找新房" title="找新房">
      </div>
      <h3>找新房</h3>
    </strong>
      <strong>
        <div>
          <span></span>
          <img src=${pageContext.request.contextPath}/jsp/images/homepage/djimg32.png alt="地图找房" title="地图找房">
        </div>
        <h3>地图找房</h3>
      </strong>
    </div>
  </div>
  <div class="home_nh">
    <div class="nhscon">
      <div class="nhtitle">
        <strong>
          <b>重庆新楼盘</b>
          全在EasyHousing
        </strong>
      </div>
      <div class="nhlist">
        <ul>
          <li style="margin-left:0px;">
            <a>
            <img src = ${pageContext.request.contextPath}/jsp/images/homepage/1.jpg>
            <strong>
              <i></i>
              <span>
                <!--<b>远洋城</b>-->
                <!--<em>23127元/m²</em>-->
              </span>
            </strong>
            </a>
          </li>
          <li>
            <a>
              <img src = ${pageContext.request.contextPath}/jsp/images/homepage/2.jpg>
              <strong>
                <i></i>
                <span>
                <!--<b>远洋城</b>-->
                  <!--<em>23127元/m²</em>-->
              </span>
              </strong>
            </a>
          </li>
          <li>
            <a>
              <img src = ${pageContext.request.contextPath}/jsp/images/homepage/3.jpg>
              <strong>
                <i></i>
                <span>
                <!--<b>远洋城</b>-->
                  <!--<em>23127元/m²</em>-->
              </span>
              </strong>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</body>
</html>

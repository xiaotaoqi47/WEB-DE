<%@ page import="com.bo.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        .explore {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: rgb(237, 244, 237);
            height: 80px;
            padding-left: 8%;
            padding-right: 10px;
        }
        .search-wrap{
            height: 60px;

            display: flex;
            align-items: center;
            padding-left: -10%;
            margin-bottom: 15px;

        }

        .nav {
            display: flex;
            align-items: center;
            list-style: none;
        }

        .nav li {
            color: rgb(2, 136, 209);
            font-size: 18px;
            margin-right: 20px;

        }

        .search-input {
            flex: 0 0 30%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
            color: rgb(187, 187, 202);
            font-size: 16px;
        }



        h2 {
            color: rgb(73, 73, 73);
            margin-left: 15px;
        }

        .info-box {
            padding: 10px 10px 10px 10px;
            width: 90%;
            height: 240px;
            border: 1px solid #eee;
            border-radius: 5px;
            background-color: rgb(237, 244, 237);
        }

        .info-box .top {
            height: 80%;
            display: flex;
            border-bottom: 1px solid #e4e6e5;
        }

        .info-box .top img {
            width: 55%;
            height: 85%;
            margin-right: 5px;
            border-radius: 5px;
        }

        p {
            font-size: 13px;
            color: #333;
            padding-top: 5px;
            padding-bottom: 5px;
            margin-top: 5px;
            margin-bottom: 5px;
        }

        .item {
            height: 70px;
            margin-top: 10px;
            margin-bottom: 10px;
            padding-top: 10px;
            padding-bottom: 10px;

        }

        .read {
            border-bottom: 1px solid #eee;
        }

        .read a {
            color: rgb(102, 187, 106);
            text-decoration: none;
        }

        .container {
            width: 85%;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
        }
        @font-face {
            font-family: 'iconfont';  /* project id 1432509 */
            src: url('//at.alicdn.com/t/font_1432509_bh27md8flmw.eot');
            src: url('//at.alicdn.com/t/font_1432509_bh27md8flmw.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1432509_bh27md8flmw.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1432509_bh27md8flmw.woff') format('woff'),
            url('//at.alicdn.com/t/font_1432509_bh27md8flmw.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1432509_bh27md8flmw.svg#iconfont') format('svg');
        }
        .iconfont{
            font-family:"iconfont" !important;
            font-size:35px;
            font-style:normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.3px;
            -moz-osx-font-smoothing: grayscale;
        }
    </style>
</head>
<body>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user", user);
%>

<%--顶部区域，引入共用的top.jsp页面--%>
<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<%--浏览区域--%>
<div class="explore">
    <ul class="nav">
        <li>我的动态</li>
        <li>浏览记录</li>
        <li>话题广场</li>
        <li>收藏</li>
    </ul>
    <label>
        <div class="search-wrap">
        <input type="text" placeholder="关键字搜索" class="search-input">
        <i class="iconfont">&#xe61b;</i>
        </div>
    </label>
</div>
<br>

<%--页面主题区域--%>
<div class="container">
    <div class="row">
        <%--左侧2/3区域--%>
        <div class="col-8">
            <div class="item">
                <ul class="nav">
                    <li>日志</li>
                </ul>
                <p>日日重复同样的事，依循着与昨日无异的惯例。若能避开猛烈的欢乐，自然也不会有很大的悲伤来访。</p>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>喜欢的书</li>
                </ul>
                <p>《人间失格》</p>
                <p>《席慕容散文集》</p>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>话题</li>
                </ul>
                <p>发一张自己最酷的照片</p>
                <p>学渣如何过四级？</p>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>评论区</li>
                </ul>
                <label>
                    <textarea cols="80" rows="5" placeholder="烟雨入江南"></textarea>
                </label>
                <div>
                    <input type="button" value="发表">
                </div>
            </div>
            <br>
            <div class="item">
                <ul class="nav">
                    <li>足迹</li>
                </ul>
                <p>收藏了十亿少男的梦kk的书</p>
                <p> 关注了Yoke</p>
                <p>关注了不缪</p>
            </div>

        </div>

        <%-- 右侧1/3区域--%>
        <div class="col-4">
            <div class="info-box">
                <div class="top">
                    <img src="images/${user.avatar}" alt="">
                    <div>
                        <p>性别：${user.gender}</p>
                        <p>账号：${user.account}</p>
                        <p>关注：30人</p><p>粉丝：15001620</p>
                        <p>${user.joinDate}加入</p>
                    </div>
                </div>
                <h3><p style="color: #3e2723;">昵称:${user.nickname}</p></h3>
                <p>会员到期：2020.1.31</p>
            </div>

            <div class="item">
                <div class="read">
                    <p>
                        <a href="">好友动态：</a>
                        草莓味的混世少女刚发表了动态
                    </p>
                </div>
                <div class="read">
                    <p>
                        <a href="">特别关心：</a>
                        来日方长上线
                    </p>

                </div>
                <div class="read">
                    <p>
                        <a href="">与我相关：</a>
                        吴家小妹@了你
                    </p>

                </div>
                <br>
                <hr>

                <ul class="nav">
                    <li>${user.nickname}每日推荐</li>
                </ul>

                <br>
                <div class="read">
                    <p>
                        <a href="">你得不到的小布丁</a>
                    </p>

                    <p style="color: #9b9b9b;">2019年10月4日</p>
                </div>


            </div>

        </div>
    </div>

</div>
<footer>
    <ul>
        <li>@2001-2019</li>
        <li>Deliberately avoid,is really care</li>
        <li>哎呀呀出版</li>
    </ul>
    <ul>
        <li>联系我们</li>
        <li>帮助中心</li>
        <li>法律声明</li>
        <li>移动合作</li>
    </ul>
</footer>
</body>
</html>

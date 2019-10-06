<%@ page import="java.util.List" %>
<%@ page import="com.bo.entity.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书详情页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        /* 搜索区域样式 */
        .search-wrap{
            height: 60px;
            background-color: #ddd;
            display: flex;
            align-items: center;
            padding-left: 7.5%;
            margin-bottom: 10px;

        }
        .input-box{
            width: 350px;
            height: 35px;
            border: 1px solid #eee;
            border-radius: 5px;
            margin-left: 10px;
        }
        h2, h3 {
            color: rgb(73, 73, 73);
        }

        #search {
            height: 80px;
            background-color: rgb(246, 246, 241);
            display: flex;
            align-items: center;
            padding-left: 8%;
            margin-bottom: 10px;
        }

        .search-input {
            flex: 0 0 40%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
        }
        .search-wrap{
             height: 60px;
             background-color: #ddd;
             display: flex;
             align-items: center;
             padding-left: 7.5%;
             margin-bottom: 10px;

         }



        .search-btn img {
            width: 50%;
            height: 50%;
        }


        .col-4 img {
            margin: 10px 5px 20px 5px;
            width: 80%;
        }

        hr {
            width: 90%;
            color: #eee;
            margin-top: 10px;
        }

        .col-6 {
            height: 400px;
            padding-right: 10px;
        }

        .col-6 img {
            width: 100%;
            height: 100%;
            border-radius: 20px;
        } @font-face {
            font-family: 'iconfont';  /* project id 1432509 */
            src: url('//at.alicdn.com/t/font_1432509_vgvlvkg47v.eot');
            src: url('//at.alicdn.com/t/font_1432509_vgvlvkg47v.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1432509_vgvlvkg47v.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1432509_vgvlvkg47v.woff') format('woff'),
            url('//at.alicdn.com/t/font_1432509_vgvlvkg47v.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1432509_vgvlvkg47v.svg#iconfont') format('svg');
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
    Book book = (Book) request.getAttribute("book");
    pageContext.setAttribute("book", book);
%>

<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<div class="search-wrap">
    <h2>读书时刻</h2>
    <input type="text" placeholder="输入要搜索的内容"class="input-box">
    <i class="iconfont">&#xe61b;</i>
</div>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h3>${book.name}</h3>
            <hr>
            <div class="row">
                <div class="col-6">
                    <img src="/images/${book.cover}" alt="">
                </div>
                <div class="col-4">
                    <p>${book.author}</p>
                </div>
            </div>
        </div>
        <div class="col-4">
            <br>
            <h5>书籍标签</h5>
            <hr>
            <div class="column">
                <div class="row">
                    <div>
                        工具类    文学类    艺术类    历史类    财经类
                    </div>

                    <br><br>
                    <div>
                        医疗卫生类  工程技术类  园艺园林类  百科类
                    </div>

                    <br><br>

                    <div>
                        教辅类  考试类  外语类  管理类  收藏鉴赏类
                    </div>

                    <br><br>
                    <div>
                        农科类  科普类  军事类  儿童读物类  保健类  体育类等
                    </div>

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

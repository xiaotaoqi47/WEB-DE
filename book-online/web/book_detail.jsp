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

                    <p>作者：${book.author}</p>
                </div>
            </div>

        </div>
        <div class="col-4">
            <br>
            <h1>读后感</h1>
            <hr>
            <div class="column">
                <div class="row">
                    <p>
                        <br><br>
                                 这本书的魅力在于，它在不知不觉中吸引你，让你想要继续读下去。一个神奇的外婆，她拯救了所有人，一个公寓，是她的城堡。
                        那些童话故事，其实就是公寓里每一个和她的经历，有经历战争后破碎的士兵狼心，悲伤的公主玛丽，失去家庭的母亲
                        她拯救了所有人，却忘了自己的孩子。 爱莎，是她的第二次机会。 爱莎，一个离异家庭的还在，正如她父亲所担心的，
                        我也担心她会成为一个在两个家庭都是客人的孩子。她在学校也很不合群，她很另类，但是她的外婆，用一个个童话故事，
                        使她不感到孤单，使她的生活更有趣。 这本书讲述的就是这个公寓的故事，让你笑，然后再最后哭了出来。</p>

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

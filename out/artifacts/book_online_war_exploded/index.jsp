<%@ page import="java.util.List" %>
<%@ page import="com.bo.entity.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        body{
            color: #333;
        }
        header{
            height: 60px;
            background-color: rgb(179, 157, 219);
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-left: 10px;
            padding-right: 10px;
        }
        .nav{
            flex: 0 0 50%;
            list-style: none;
            display: flex;
        }
        .nav li{
            margin-left: 10px;
            margin-right: 10px;
            width: 50px;
        }
        .user-info{
            padding-right: 20px;

        }
        /*超链接样式*/
        .nav li a{
            text-decoration: none;
            color: #eee;
        }
        .nav li a:hover{
            color: #fff;
        }
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
        .container{
            width: 85%;
            margin: 0 auto;
            height: 600px;
            background-color: #eee;
            display: flex;
            padding: 5px 5px 5px 5px;
        }
        .left{
            flex: 0 0 66%;
            height: 90%;
            background-color: #fff;
            padding: 10px 10px 10px 10px;
        }
        .right{
            flex: 0 0 30%;
            height: 91.6%;
            margin-left: 15px;
            background-color: #fff;
            padding: 5px 5px 5px 5px;
        }
        .row{
            display: flex;
            /* 自动换行 */
            flex-wrap: wrap;
            padding: 5px 5px 5px 5px;
        }
        .column{
            flex: 0 0 18%;
            height: 180px;
            background-color: #fff;
            border: 1px solid #fff;
            border-radius: 10px;
            margin: 5px 5px 5px 5px;
        }



        .box{
            flex:0 0 17.6%;
            height: 240px;
            margin: 5px 5px 5px 5px;
            background-color: #ffffff;
        }
        .box img{
            width: 90%;
            height: 70%;
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
    List<Book> bookList = (List<Book>) request.getAttribute("bookList");
%>
<%--使用jsp的include动作，将top.jsp页面包含进来，这个顶部导航可以给各个页面共享--%>
<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<%--搜索区--%>
<div class="search-wrap">
    <h2>读书时刻</h2>
    <input type="text" placeholder="输入要搜索的内容"class="input-box">
    <i class="iconfont">&#xe61b;</i>
</div>

<%--主体内容区--%>
<div class="container">
    <div class="left">
        <h2>好书精选</h2>
        <hr>
            <div class="row">
                <%--遍历图书数据集合，将每个图书对象放入页面对象--%>
                <%
                    for (Book book : bookList) {
                        pageContext.setAttribute("book", book);
                %>
                <%--引用表示每行显示5本，再追加box细节样式--%>
                <div class="box">
                    <%--点击每本图书封面图，地址栏跳转为/detail/id,进入图书详情Servlet--%>
                    <a href="${pageContext.request.contextPath}/detail/${book.id}">
                        <img src="images/${book.cover}" alt="">
                    </a>
                    <p style="color: rgb(51, 119, 178)">${book.name}</p>
                    <p>${book.author}</p>
                </div>
                <%
                    }
                %>
            </div>
        </div>
            <div class="right">
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

                <br>
                <h5>作者推荐</h5>
                <hr>
                <div class="column">
                    <div class="row">
                        <div>
                            顾漫     匪我思存    唐七公子    桐华   苍月
                        </div>

                        <br><br>
                        <div>
                            晴空蓝兮    艾小图    顾西爵     木浮生
                        </div>

                        <br><br>

                        <div>
                            青衫落拓    叶迷    丁墨    辛夷坞  鲁迅
                        </div>

                        <br><br>
                        <div>
                            八月长安   余秋雨   海子   张爱玲   曹文轩
                        </div>

                    </div>
                </div>

                <br>
            </div>
</div>

    <footer>
        <ul>
            <li>@2015-2019</li>
            <li>niit.edu.cn,</li>
            <li>all rights reserved</li>
            <li>南工院计算机学院</li>
        </ul>
        <ul>
            <li>联系我们</li>
            <li>帮助中心</li>
            <li>法律声明</li>
            <li>移动合作</li>
        </ul>
    </footer>
</div>
</body>
</html>

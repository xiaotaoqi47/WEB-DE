package com.bo.listener;

import com.bo.entity.Book;
import com.bo.entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author xiaotaoqi
 * @ClassName ContextLoaderListener
 * @Description 上下文加载监听，在服务器启动的时候即刻生效，用来生成用户数据和图书数据
 * @Date 2019/9/27
 * @Version 1.0
 **/

@WebListener
public class ContextLoaderListener implements ServletContextListener {

    /**
     * @Description 容器初始化方法
     * @param sce
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("容器启动");
        //创建并生成用户数据列表
        List<User> userList = new ArrayList<>(3);
        User[] users = {
                new User(1, "xtq", "698d51a19d8a121ce581499d7b701668", "小淘气", "女", "user1.jpg", LocalDate.of(2018, 6, 11)),
                new User(2, "shinian", "bcbe3365e6ac95ea2c0343a2395834dd", "十年三月三十日", "男", "user2.jpg", LocalDate.of(2019, 2, 18)),
                new User(3, "tqb", "310dcbbf4cce62f762a2aaa148d556bd", "淘气包", "女", "user3.jpg", LocalDate.of(2019, 8, 19))
        };
        userList = Arrays.asList(users);

        //创建并生成图书数据列表
        List<Book> bookList = new ArrayList<>(10);
        Book[] books = {
                new Book(1,"《外婆的道歉信》", "1.jpg", "巴克曼位列"),
                new Book(2,"《查令十字街84号(珍藏版)》", "2.jpg", "海莲汉芙"),
                new Book(3,"《天才在左，疯子在右》", "3.jpg", "高铭"),
                new Book(4,"《岛上书店》", "4.jpg", "加布瑞埃拉泽文"),
                new Book(5,"《人类简史》", "5.jpg", "尤瓦尔赫拉利"),
                new Book(6,"《摆渡人》", "6.jpg", "克莱儿麦克福尔"),
                new Book(7,"《从你的全世界路过》", "7.jpg", "张嘉佳"),
                new Book(8,"《我们仨》", "8.jpg", "杨绛"),
                new Book(9,"《追风筝的人》", "9.jpg", "卡勒德胡塞尼"),
                new Book(10,"《解忧杂货店》", "10.jpg", "东野圭吾"),


        };
        bookList = Arrays.asList(books);

        //获得全局变量
        ServletContext servletContext = sce.getServletContext();
        //设置全局变量属性，将用户和图书列表数据记入，整个应用可以共享
        servletContext.setAttribute("userList", userList);
        servletContext.setAttribute("bookList", bookList);
    }

    /**
     * 销毁方法
     *
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁");
    }
}

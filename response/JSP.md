```java
## Jsp 入门学习
    1.概念：
    	* Java Server Pages：Java服务端页面
    		*可以理解为：一个特殊的页面，其中既可以指定html标签，又可以定义Java代码
    		*用于简化书写
    
    2.原理
     	*JSP本质上就是一个Servlet
    
    3.JSP的脚本：JSP定义Java代码的方式
    	1.<% 代码 %>:定义的Java代码，在service方法中。service方法中可以定义什么，该脚本中就可以定义什么。
    	2.<%! 代码 %>:定义的Java代码，在jsp转换后的Java类的成员变量。
    	3.<%= 代码 %>：定义的Java代码，会输出到页面上。输出语句中可以定义什么，该脚本中就可以定义什么。
            
    4.JSP的内置对象：
            *在JSP页面中不需要获取和创建，可以直接使用的对象
            *Jsp一共有9个内置对象。
            	*request
            	*response
            	*out:字符输出流对象，可以将数据输出到页面上。
                    * response.getWritter()和out.write()的区别：
                    	*在tomcat服务器真正给客户端作出响应之前，会先找response缓冲区数据，再找out缓冲区数据
                    	*在response.getWritter()数据输出永远在out.write（）之前
```


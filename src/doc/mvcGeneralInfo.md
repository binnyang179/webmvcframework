##MVC（Model-View-Controller）的概念
　　首先让我们了解下MVC（Model-View-Controller）的概念：

　　Model（模型）：数据模型，提供要展示的数据，因此包含数据和行为，
    可以认为是领域模型(domain)或JavaBean组件（包含数据和行为），
    不过现在一般都分离开来：Value Object（数据） 和 服务层（行为）。
    也就是模型提供了模型数据查询和模型数据的状态更新等功能，包括数据和业务。

　　View（视图）：负责进行模型的展示，一般就是我们见到的用户界面，客户想看到的东西。

　　Controller（控制器）：接收用户请求，委托给模型进行处理（状态改变），
    处理完毕后把返回的模型数据返回给视图，由视图负责展示。 也就是说控制器做了个调度员的工作。

　　从图2-1我们还看到，在标准的MVC中模型能主动推数据给视图进行更新
    （观察者设计模式，在模型上注册视图，当模型更新时自动更新视图），
    但在Web开发中模型是无法主动推给视图（无法主动更新用户界面），因为在Web开发是请求-响应模型。
    [normal mvc](image/mvc.png)
    
## Web MVC概述

    Web MVC中的M(模型)-V(视图)-C(控制器)概念和标准MVC概念一样，我们再看一下Web MVC标准架构，如下图(图2-3)所示：

[web mvc](image/webMvc.png)
在Web MVC模式下，模型无法主动推数据给视图，如果用户想要视图更新，需要再发送一次请求（即请求-响应模型）。

## Servlet+JSP+JavaBean开发模式介绍
   
   Servlet+JSP+JavaBean架构其实可以认为就是我们所说的Web MVC模型，只是控制器采用Servlet、模型采用JavaBean、视图采用JSP，如图
   [web mvc](image/webmvc1.png) 
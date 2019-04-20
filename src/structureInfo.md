序号	包名	描述	所属层次
1	me.gacl.domain	存放系统的JavaBean类(只包含简单的属性以及属性对应的get和set方法，不包含具体的业务处理方法)，提供给【数据访问层】、【业务处理层】、【Web层】来使用	 domain(域模型)层
2	me.gacl.dao	存放访问数据库的操作接口类	数据访问层
3	me.gacl.dao.impl	存放访问数据库的操作接口的实现类
4	me.gacl.service	存放处理系统业务接口类	业务处理层
5	me.gacl.service.impl	存放处理系统业务接口的实现类
6	me.gacl.web.controller	存放作为系统控制器的Servlet	Web层(表现层)
7	me.gacl.web.UI	存放为用户提供用户界面的servlet(UI指的是user interface)
8	me.gacl.web.filter	存放系统的用到的过滤器(Filter)
9	me.gacl.web.listener	存放系统的用到的监听器(Listener)
10	me.gacl.util	存放系统的通用工具类，提供给【数据访问层】、【业务处理层】、【Web层】来使用	 
11	junit.test	存放系统的测试类


##三、分层架构的代码编写
  　　分层架构的代码也是按照
  【域模型层(domain)】→【数据访问层(dao、dao.impl)】→【业务处理层(service、service.impl)】→
  【表现层(web.controller、web.UI、web.filter、web.listener)】→【工具类(util)】→
  【测试类(junit.test)】的顺序进行编写的。

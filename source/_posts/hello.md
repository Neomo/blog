---
title: Start
date: 2016-06-16 16:23:04
tags:
    - start
    - Git
    - Hexo
    - Markdown
categories: 走走停停
---
## First！！！

### 这是使用Hexo所写的第一篇文章

值得纪念一下！从申请github帐号，到本地搭建Hexo，再到部署到github，虽说不是千辛万苦吧但多多少少也是有点曲折的！对于我这样一个代码小白来说真是不容易啊！

现在又要来开始了解** Markdown **语法了！

任重而道远啦！

### 关于Git

目前也是刚刚接触：

克隆：
``` bash
$ git clone https://githib.com/Neomo/blog.git
```

删除：

``` bash
$ git rm -rf .
```

增加：

``` bash
$ git add .
```

提交：
``` bash
git commit -m "add nice"
git push origin gh-pages
```

### 关于Hexo

Hexo
``` bash
npm install hexo -g #安装  
npm update hexo -g #升级  
hexo init #初始化
```

简写
``` bash
hexo n "我的博客" == hexo new "我的博客" #新建文章
hexo p == hexo publish
hexo g == hexo generate#生成
hexo s == hexo server #启动服务预览
hexo d == hexo deploy#部署
```

服务器
``` bash
hexo server #Hexo 会监视文件变动并自动更新，您无须重启服务器。
hexo server -s #静态模式
hexo server -p 5000 #更改端口
hexo server -i 192.168.1.1 #自定义 IP

hexo clean #清除缓存 网页正常情况下可以忽略此条命令
hexo g #生成静态网页
```

其他常用[命令](https://segmentfault.com/a/1190000002632530)

### 关于Markdown

列表：在 Markdown 下，列表的显示只需要在文字前加上 -或 *即可变为无序列表，有序列表则直接在文字前加1. 2. 3. 符号要和文字之间加上一个字符的空格。

引用：只需要在文本前加入 >这种尖括号（大于号）即可

图片与链接：
插入链接与插入图片的语法很像，区别在一个 !号
``
图片为：![](){ImgCap}{/ImgCap}
链接为：[]()
``

粗体与斜体：
Markdown 的粗体和斜体也非常简单，用两个 **包含一段文本就是粗体的语法，用一个 *包含一段文本就是斜体的语法

代码框：
如果你是个程序猿，需要在文章里优雅的引用代码框，在 Markdown下实现也非常简单，只需要用两个 `把中间的代码包裹起来。

分割线：分割线的语法只需要三个 *号，

Markdown[详情](http://www.jianshu.com/p/1e402922ee32/)
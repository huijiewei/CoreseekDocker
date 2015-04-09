# Coreseek Dockerfile

------

Coreseek 是一款中文全文检索/搜索软件，以 GPLv2 许可协议开源发布，基于 Sphinx 研发并独立发布，专攻中文搜索和信息处理领域，适用于行业/垂直搜索、论坛/站内搜索、数据库搜索、文档/文献检索、信息检索、数据挖掘等应用场景，用户可以免费下载使用

Docker 提供了一个可以运行你的应用程序的封套(envelope)，或者说容器。它原本是 dotCloud 启动的一个业余项目，并在前些时候开源了。它吸引了大量的关注和讨论，导致 dotCloud 把它重命名到 Docker Inc。它最初是用 Go 语言编写的，它就相当于是加在 LXC（LinuX Containers，linux 容器）上的管道，允许开发者在更高层次的概念上工作。

------

coreseek_prod.sh 会开启一个绑定到 3312 端口的 coreseek 服务



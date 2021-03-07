有时候，我们想把一个项目开源出去，提交到github上面去，免不了就要切换远程仓库地址。那这时候有什么办法解决呢？
据目前自己的了解，有三种办法。

一、修改命令
git remote set-url origin url

二、先删后加
git remote rm origin
git remote add origin git@github.com:sheng/demo.git

三、修改config文件
如果你的项目有加入版本控制，那可以到项目根目录下，查看隐藏文件夹， 发现.git文件夹，找到其中的config文件，就可以修改其中的git remote origin地址了。

12人点赞
Git


作者：烟雨随风
链接：https://www.jianshu.com/p/df7c86926497
来源：简书
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

## delete

- single file 
  - 远程仓库直接删除

- More files and dirs

  ```bash
  #将目标项目克隆到本地
  $ git clone https://github.com/***
  $ cd ***
  $ git rm -cached filename #保留本立仓库的文件，若 -f，则全删
  $ git rm -r -cached  dirname #保留本地仓库的文件夹， 若 -f 则全删
  $ git commit -m "log message"
  $ git push origin master
  ```

  

 ## upload

- 直接在远程仓库upload 文件或者文件夹
- git command

## clone

```bash
# create a new repository on the command line
$ echo "# tmp" >> README.md
$ git init
$ git add README.md
$ git commit -m "first commit"
$ git remote add origin https://github.com/JuneHerren/tmp.git
$ git push -u origin master
# push an existing repository from the command line
$ git remote add origin https://github.com/JuneHerren/tmp.git
$ git push -u origin master
```
## more
https://github.com/521xueweihan/git-tips

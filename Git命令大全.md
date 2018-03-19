#Git命令
<br/>
>####创建版本库
>　mkdir learngit
><br/>
>　cd learngit
><br/>
>　pwd
>####初始化版本库
><br/>
>　git init
><br/>
>####把文件添加到仓库
><br/>
>  git add [文件名]
><br/>
>####提交
><br/>
>git  commit -m "注释"
><br/>
>####查看仓库状态
><br/>
>git status
><br/>
>####查看不同
><br/>
>git diff
><br/>
>####查看修改日志
><br/>
>git log
><br/>
>####查看修改日志显示在一行
><br/>
>git log --pretty=oneline
><br/>
>####标志参数
><br/>
>HEAD(表示当前版本)
>HEAD^(表示上一个版本 ，两个^表示上上个版本，~n表示上n个版本，n为数字)
><br/>
>####回退到之前的版本
><br/>
>git reset --hard HEAD^(回退到上一个版本)
>git reset --hard HEAD~n(回退到上n个版本)
>git reset --hard 3325455（3325455是查看git log之后的版本号，这种回退可以直接回退到你指定的那个版本，版本号不用写全）
><br/>
>####查看文件内容
><br/>
>cat [文件名]
><br/>
>####查看命令记录
><br/>
>git reflog(可查看使用命令记录，)
><br/>
>####丢弃工作区修改
><br/>
>git checkout -- [文件名](文件未add到暂存区时使用)
>git reset HEAD [文件名]（文件add进暂存区，但没有提交）
>（若文件已提交就是用版本回退）
><br/>
>####删除文件
><br/>
>git rm [文件名]（删除后记得commit，如果删除错误可以用git checkout -- [文件名]回退）
><br/>
>####远程仓库创建SSH Key
><br/>
>ssh-keygen -t rsa -C "youremail@example.com"(可以在用户主目录里找到.ssh目录，里面有id_rsa和id_rsa.pub两个文件，这两个就是SSH Key的秘钥对，id_rsa是私钥，不能泄露出去，id_rsa.pub是公钥，可以放心地告诉任何人。)
><br/>
>登录github,打开AccountSettings，SSH Keys页面，点击add SSH Key,填写任意title，在key文本框粘贴id_rsa.pub文件的内容，然后点击add key。
><br/>
>####添加远程库
><br/>
>首先，登陆GitHub，然后，在右上角找到“Create a new repo”按钮，创建一个新的仓库：
><br/>
>在Repository name填入仓库名，其他保持默认设置，点击“Create repository”按钮，就成功地创建了一个新的Git仓库
><br/>
>在本地运行git remote add origin git@github.com:[用户名]/[仓库名].git
><br/>
>添加后，远程库的名字就是origin
><br/>
>git push -u origin master(把本地库的所有内容都推送到远程库上，由于远程库是空的，我们第一次推送master分支时，加上了-u参数，Git不但会把本地的master分支内容推送的远程新的master分支，还会把本地的master分支和远程的master分支关联起来，在以后的推送或者拉取时就可以简化命令。)
><br/>
>经过之前的命令之后就可以使用  git push origin master进行推送
><br/>
>####SSH警告
><br/>
>当你第一次使用Git的clone或者push命令连接GitHub时，会得到一个警告：(The authenticity of host 'github.com (xx.xx.xx.xx)' can't be established.
RSA key fingerprint is xx.xx.xx.xx.xx.
Are you sure you want to continue connecting (yes/no)?)
><br/>
>输入yes就好
><br/>
>####从远程库克隆
><br/>
>首先，登陆GitHub，创建一个新的仓库，名字叫gitskills：我们勾选Initialize this repository with a README，这样GitHub会自动为我们创建一个README.md文件。创建完毕后，可以看到README.md文件。这样远程库就创建好了。
><br/>
>克隆一个本地库使用 git clone git@github.com:[用户名]/[库名].git。如果有多个人协作开发，那么每个人各自从远程克隆一份就可以了。
><br/>
>####分支管理(创建与合并分支)
><br/>
>git checkout -b dev(创建并切换到dev分支)
><br/>
>git branch [分支名] (创建分支)
><br/>
>git checkout [分支名] (切换分支)
><br/>
>git branch （查看分支，当前分支前面会有*号标识）
><br/>
>####分支切换
><br/>
>git checkout [分支名]
><br/>
>####合并分支
><br/>
>git merge [分支名] （这里的分支名是被合并的分支名）
><br/>
>####删除分支
><br/>
>git branch -d [分支名]
><br/>
>####查看分支合并情况
><br/>
>git log --graph --pretty=oneline --abbrev-commit
><br/>
>####bug分支
><br/>
>git stash(可以把当前工作现场“储藏”起来，等以后恢复现场后继续工作)
><br/>
>git stash pop(恢复当前分支并删除stash内容)
><br/>
>git stash list(查看所有工作现场)
><br/>
>git stash apply(恢复现场)
><br/>
>git stash drop(删除)
><br/>
>####强行删除未合并的分支（会导致未合并的分支中的修改内容也丢失）
><br/>
>git branch -D [分支名]
><br/>
>####查看远程库信息
><br/>
>git remote
><br/>
>####推送分支
><br/>
>git push origin master(推送master分支的内容到远程库)
><br/>
>git push origin dev(推送dev分支的内容到远程库)
><br/>
>####抓取分支
><br/>
>git checkout -b dev origin/dev(创建远程origin的dev分支到本地)
><br/>
>git pull(可以把别人的最新提交抓下来，然后在本地合并，解决冲突后再推送)
><br/>
>####创建标签
><br/>
>git tag v1.0(打标签)
><br/>
>git tag(查看所有标签)
><br/>
>git tag [标签名] [版本号]（为未打标签的版本打上标签）
><br/>
>注意，标签不是按时间顺序列出，而是按字母排序的。可以用git show <tagname>查看标签信息
><br/>
>####创建带有说明的标签
><br/>
>git tag -a v0.1 -m "version 0.1 released" 3628164
><br/>
>格式 git tag -a [标签号] -m "说明内容" [版本号]
><br/>
>####查看标签版本说明文字
><br/>
>git show [标签号]
><br/>
>####删除标签
><br/>
>git tag -d [标签号]
><br/>
>因为创建的标签都只存储在本地，不会自动推送到远程。所以，打错的标签可以在本地安全删除。
如果要推送某个标签到远程，使用命令  git push origin <tagname>。或者，一次性推送全部尚未推送到远程的本地标签：git push origin --tags。如果标签已经推送到远程，要删除远程标签就麻烦一点，先从本地删除：git tag -d v0.9。然后，从远程删除。删除命令也是push，但是格式如下：git push origin :refs/tags/v0.9
><br/>
>####配置别名
><br/>
>git config --global alias.st status(代表全局使用st代替status)以后就可以写成git st了
><br/>
>--global 参数是全局参数，也就是这些命令在这台电脑的所有Git仓库下都有用。
><br/>

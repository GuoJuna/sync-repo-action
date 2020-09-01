
# sync-repo-action

同步仓库代码的Action
![](https://gitee.com/guojuna/images/raw/master/blog-img/2020/09/20200901125610.png))

[更多详情](https://github.com/marketplace/actions/sync-repo-action)

## Usage

### GitHub Actions
```

name: "git repo sync"
on:
  push:
jobs:
  repo-sync:
    runs-on: ubuntu-latest
    steps:
    - name: repo-sync
      uses: guojuna/git-repo-sync@master
      with:
        source_repo_url: git@github.com:${{ github.repository }}.git
        source_branch: master
        dest_repo_url: git@gitee.com:charleszht/test001.git
        dest_branch: master
        ssh_private_key: ${{ secrets.SSH_PRIVATE_KEY }}
```

###  GitHub Actions 参数说明
```
source_repo_url 需要同步的仓库地址

source_branch: 需要同步的仓库分支
dest_repo_url: 目标仓库地址
dest_branch: 目标仓库分支
ssh_private_key: 将本地 .ssh 文件夹中的 id_rsa 添加到仓库的secret中（同时需要将对应的 id_rsa.pub 添加到目标 git 仓库的 ssh keys 中）
```



## Author
[GUO JUN](https://github.com/yehan-coding) guo_juna@qq.com



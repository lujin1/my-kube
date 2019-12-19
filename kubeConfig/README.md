1. 进入 $HOME/.kube/  
  `cd $HOME/.kube/`
2. 创建 configfile文件夹  
  `mkdir configfile`
3. copy 每个 k8s 的 config 到configfile下  
4. 执行脚本 config.sh  
  `sh $HOME/.kube/config.sh`  
5. 切换不同集群  
  `kubectx`

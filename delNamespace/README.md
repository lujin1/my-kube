# Delete Terminating namespace

1. 安装jq  
`sudo apt install jq`
2. 执行脚本  
`bash delNs.sh`

# Delete Terminating pod
`kubectl delete pods <pod> --grace-period=0 --force`


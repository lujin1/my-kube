# Delete Terminating namespace

1. 打开代理  
`kubectl proxy $` 
2. 安装jq  
`sudo apt install jq`
3. 执行脚本  
`sh delNs.sh <Terminating namespace>`
4. 关闭代理  
`ps -ef |grep kubectl proxy `
`kill -9 <kubectl proxy pid>`

#cd $HOME/.kube/
echo "=== start ==="
kc=""
for config in $(ls configfile)
do
    echo add ./configfile/$config to config
    kc=$kc:$config
done
#echo ${kc#*:}
KUBECONFIG=${kc#*:} kubectl config view --flatten > config
echo "=== done ==="

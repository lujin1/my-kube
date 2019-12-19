cd $HOME/.kube
echo "=== start ==="
kc=""
for config in $(ls configfile)
do
    echo add $HOME/.kube/configfile/$config to $HOME/.kube/config
    kc=$kc:$HOME/.kube/configfile/$config
done
#echo ${kc#*:}
KUBECONFIG=${kc#*:} kubectl config view --flatten > config
echo "=== done ==="

#! /bin/bash
kubectl proxy &
serverPID=$!
for i in $(kubectl get ns -o json | jq -r '.items[] | select(.status.phase=="Terminating") | .metadata.name'); 
do 
	echo Delete Terminating namesapce $i ;
	kubectl get namespace $i -o json > tmp.json
	cat tmp.json |jq '.spec.finalizers=[]' |jq '.metadata.finalizers=[]' >tmp2.json
	#cat tmp.json |jq '.metadata.finalizers=[]' >tmp2.json
	curl -k -H "Content-Type: application/json" -X PUT --data-binary @tmp2.json http://127.0.0.1:8001/api/v1/namespaces/$i/finalize
	echo -e "\n"
done
kill -9 $serverPID

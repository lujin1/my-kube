# kubectl proxy
kubectl get namespace $1 -o json > tmp.json
cat tmp.json |jq '.spec.finalizers=[]' |jq '.metadata.finalizers=[]' >tmp2.json
#cat tmp.json |jq '.metadata.finalizers=[]' >tmp2.json
curl -k -H "Content-Type: application/json" -X PUT --data-binary @tmp2.json http://127.0.0.1:8001/api/v1/namespaces/$1/finalize

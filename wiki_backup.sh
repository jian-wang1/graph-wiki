# login wek8s
wectl auth login
source ~/.we/we.sh
kubectl config set-context --current --namespace central-data

# back files 
POD_NAME=$(kubectl get pods -o=name -l app=graph-wiki-service-0 | cut -d/ -f2)
echo ${POD_NAME}
kubectl cp ${POD_NAME}:/graph_wiki/data data

# build docker image
docker build . -t quay.io/wework/graph-wiki:1.0.0
docker push  quay.io/wework/graph-wiki:1.0.0

# redeploy
wectl deploy

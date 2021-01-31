echo >&2 '
***************
*** Lets deleting createCluster.sh ***
***************
'
 >&2

echo "Deleting a gcloud cluster"

CLUSTERNAME=cityapi 

kubectl config delete-cluster $CLUSTERNAME

kubectl config delete-context $CLUSTERNAME

gcloud container clusters delete $CLUSTERNAME --zone us-east1-b

echo "Give permission to delete"
y


 echo >&2 '
************
*** DONE deletingCluster.sh ***
************'
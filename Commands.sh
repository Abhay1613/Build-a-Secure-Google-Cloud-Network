## Run all the commands in Google Cloud Shell 

export IAP_NETWORK_TAG=<put yours IAP_NETWORK TAG value>

export INTERNAL_NETWORK_TAG=<put yours INTERNAL_NETWORK TAG value>

export HTTP_NETWORK_TAG=<put yours HTTP_NETWORK TAG value>

export ZONE=<default zone in which instance created>


## Task 1
gcloud compute firewall-rules delete open-access



## Task 2
In this task you have to start the stopped bastion host instance manually through console.



## Task 3
gcloud compute firewall-rules create ssh-ingress --allow=tcp:22 --source-ranges 35.235.240.0/20 --target-tags $IAP_NETWORK_TAG --network acme-vpc
 
gcloud compute instances add-tags bastion --tags=$IAP_NETWORK_TAG --zone=$ZONE
 


## Task 4
gcloud compute firewall-rules create http-ingress --allow=tcp:80 --source-ranges 0.0.0.0/0 --target-tags $HTTP_NETWORK_TAG --network acme-vpc
 
gcloud compute instances add-tags juice-shop --tags=$HTTP_NETWORK_TAG --zone=$ZONE
 


## Task 5
gcloud compute firewall-rules create internal-ssh-ingress --allow=tcp:22 --source-ranges 192.168.10.0/24 --target-tags $INTERNAL_NETWORK_TAG --network acme-vpc
 
gcloud compute instances add-tags juice-shop --tags=$INTERNAL_NETWORK_TAG --zone=$ZONE
 


## Task 6
In Compute Engine -> VM Instances page, click the SSH button for the bastion host.
 
gcloud compute ssh juice-shop --internal-ip   ## this command is run in SSH console of bastion host instance.

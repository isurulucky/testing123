This script will build specified docker images, 
scp them to the Kubernetes nodes and deploy the Kubernetes artifacts.

Uses the following github repositories: 

https://github.com/wso2/puppet-modules
https://github.com/wso2/dockerfiles.git
https://github.com/wso2/kubernetes-artifacts
                                                                       
Tested with the Kubernetes setup at:                                   
https://github.com/pires/kubernetes-vagrant-coreos-cluster             
                                                                       
Usage:                                                                 
* set PUPPET_HOME, KUBERNETES_NODE_USER, KUBERNETES_NODE,             
   DOCKERFILES_HOME and KUBERNETES_HOME in environment.bash                                                                      
                                                                       
* add the products, versions and profiles that need to be tested      
   to the array 'products' as comma separated tuples.                  
   ex.: products=(wso2am,1.9.1,default wso2is,5.0.0,manager)           
                                                                       
* run the script 'test.sh'  

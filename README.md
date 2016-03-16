This script will build the default version of specified docker images, 
scp them to the Kubernetes nodes and deploy the Kubernetes artifacts.  
                                                                       
Tested with the Kubernetes setup at:                                   
https://github.com/pires/kubernetes-vagrant-coreos-cluster             
                                                                       
Usage:                                                                 
1. set PUPPET_HOME, KUBERNETES_NODE_USER, KUBERNETES_NODE,             
   DOCKERFILES_HOME and KUBERNETES_HOME in environment.bash                                                                      
                                                                       
2. add the products, versions and profiles that need to be tested      
   to the array 'products' as comma separated tuples.                  
   ex.: products=(wso2am,1.9.1,default wso2is,5.0.0,manager)           
                                                                       
3. run the script 'test.sh'  

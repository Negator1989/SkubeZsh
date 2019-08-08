#Alias skube

#Exec
skubeexecphp () { kubectl exec -ti $1 -cphp sh }
skubeexecnginx () { kubectl exec -ti $1 -cnginx sh }
skubexec () { kubectl exec -ti $1 sh }

#Watch
skubewatcharg () { kubectl get $1 -w | grep "$2" | awk '{if(NR%2 == 0){ print \"\\033[0;40m\"\$R\"\\033[0m\";}else{ print \$R;} }' }
skubewatchpod () { kubectl get pod -w | grep "$1" | awk '{if(NR%2 == 0){ print \"\\033[0;40m\"\$R\"\\033[0m\";}else{ print \$R;} }'
skubelistname () { kubectl get $1 | grep $2 | awk {'print $1'} }

#delete 
skubedelete () { kubectl delete $1  }

#get
skubepod () { kubectl get pod | grep "$1" }
skubeingress () { kubectl get ingress | grep "$1" }
skubedeployments () { kubectl get deployment | grep "$1" }

#describe
skubedescribepod () { kubectl describe pod $1 }
#log
skubelog () { kubectl logs $1 }
skubelogphp () { kubectl logs $1 php }
skubelognginx () { kubectl logs $1 nginx }
skubelogmemcached () { kubectl logs $1 memcached }
skubelogarg () { kubetail $1 }
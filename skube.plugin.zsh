#Alias skube
alias skubewatch="kubectl get pod -w | awk '{if(NR%2 == 0){ print \"\\033[0;40m\"\$R\"\\033[0m\";}else{ print \$R;} }'"
alias skubepod="kubectl get pod"
skubeexecphp () { kubectl exec -ti $1 -cphp sh }
skubexec () { kubectl exec -ti $1 sh }
skubewatchbranch () { kubectl get pod -w | grep $1}
skubelist () { kubectl get $1 | grep $2 | awk {'print $1'} }
skubedelete () { kubectl delete $1  }
skubeingress () { kubectl get ingress | grep $1 }
skubelog () { kubectl logs $1 }
skubelogphp () { kubectl logs $1 php }
skubelognginx () { kubectl logs $1 nginx }
skubelogmemcached () { kubectl logs $1 memcached }
skubelogbranch () { kubetail $1 }
#Alias skube
alias listname="awk {'print \$1'}"
#Exec
skubexecphp () { kubectl exec -ti $1 -cphp sh }
skubexecnginx () { kubectl exec -ti $1 -cnginx sh }
skubexec () { kubectl exec -ti $1 sh }

#Watch
skubewatchpod () { kubectl get pod -w | grep "$1"}
skubelistargname () { kubectl get $1 | grep "$2" | awk {'print $1'} }
skubewatcharg () { kubectl get $1 -w | grep "$2"}

#delete 
skubedelpod () { kubectl delete pod $1 }
skubedelarg () { kubectl delete pod $1 }
skubedeldeployment () { kubectl delete deployment $1 }
skubedelingress () { kubectl delete ingress $1 }
skubedeletearglist () { 
    kubectl delete $1 $(kubectl get $1 | grep $2 | awk {'print $1'} )
}
#get
skubepod () { kubectl get pod | grep "$1" }
skubeingress () { kubectl get ingress | grep "$1" }
skubedeployments () { kubectl get deployment | grep "$1" }
skubegetarg () { kubectl get $1 | grep "$2"}

#describe
skubedescribepod () { kubectl describe pod $1 }
#log
skubelog () { kubectl logs $1 }
skubelogphp () { kubectl logs $1 php }
skubelognginx () { kubectl logs $1 nginx }
skubelogmemcached () { kubectl logs $1 memcached }
skubelogarg () { kubetail $1 }
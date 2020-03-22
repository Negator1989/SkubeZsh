#Alias skube
alias listname="awk {'print \$1'}"
alias k="kubectl"

sklistargname () { kubectl get $1 | grep "$2" | awk {'print $1'} }


#Exec
skexecphp () { kubectl exec -ti $1 -cphp sh }
skexecnginx () { kubectl exec -ti $1 -cnginx sh }
skexec () { kubectl exec -ti $1 sh }

#Watch
skwreplicationcontrollers () {kubectl get replicationcontrollers -w | grep "$1" }
skwresourcequotas () {kubectl get resourcequotas -w | grep "$1" }
skwsecrets () {kubectl get secrets -w | grep "$1" }
skwserviceaccounts () {kubectl get serviceaccounts -w | grep "$1" }
skwservices () {kubectl get services -w | grep "$1" }
skwinitializerconfigurations () {kubectl get initializerconfigurations -w | grep "$1" }
skwmutatingwebhookconfigurations () {kubectl get mutatingwebhookconfigurations -w | grep "$1" }
skwvalidatingwebhookconfigurations () {kubectl get validatingwebhookconfigurations -w | grep "$1" }
skwcustomresourcedefinitions () {kubectl get customresourcedefinitions -w | grep "$1" }
skwapiservices () {kubectl get apiservices -w | grep "$1" }
skwcontrollerrevisions () {kubectl get controllerrevisions -w | grep "$1" }
skwdaemonsets () {kubectl get daemonsets -w | grep "$1" }
skwdeployments () {kubectl get deployments -w | grep "$1" }
skwreplicasets () {kubectl get replicasets -w | grep "$1" }
skwstatefulsets () {kubectl get statefulsets -w | grep "$1" }
skwbackups () {kubectl get backups -w | grep "$1" }
skwconfigs () {kubectl get configs -w | grep "$1" }
skwdeletebackuprequests () {kubectl get deletebackuprequests -w | grep "$1" }
skwdownloadrequests () {kubectl get downloadrequests -w | grep "$1" }
skwpodvolumebackups () {kubectl get podvolumebackups -w | grep "$1" }
skwpodvolumerestores () {kubectl get podvolumerestores -w | grep "$1" }
skwresticrepositories () {kubectl get resticrepositories -w | grep "$1" }
skwrestores () {kubectl get restores -w | grep "$1" }
skwschedules () {kubectl get schedules -w | grep "$1" }
skwtokenreviews () {kubectl get tokenreviews -w | grep "$1" }
skwlocalsubjectaccessreviews () {kubectl get localsubjectaccessreviews -w | grep "$1" }
skwselfsubjectaccessreviews () {kubectl get selfsubjectaccessreviews -w | grep "$1" }
skwselfsubjectrulesreviews () {kubectl get selfsubjectrulesreviews -w | grep "$1" }
skwsubjectaccessreviews () {kubectl get subjectaccessreviews -w | grep "$1" }
skwhorizontalpodautoscalers () {kubectl get horizontalpodautoscalers -w | grep "$1" }
skwcronjobs () {kubectl get cronjobs -w | grep "$1" }
skwjobs () {kubectl get jobs -w | grep "$1" }
skwcertificatesigningrequests () {kubectl get certificatesigningrequests -w | grep "$1" }
skwleases () {kubectl get leases -w | grep "$1" }
skwauthcodes () {kubectl get authcodes -w | grep "$1" }
skwauthrequests () {kubectl get authrequests -w | grep "$1" }
skwconnectors () {kubectl get connectors -w | grep "$1" }
skwoauth2clients () {kubectl get oauth2clients -w | grep "$1" }
skwofflinesessionses () {kubectl get offlinesessionses -w | grep "$1" }
skwpasswords () {kubectl get passwords -w | grep "$1" }
skwrefreshtokens () {kubectl get refreshtokens -w | grep "$1" }
skwsigningkeies () {kubectl get signingkeies -w | grep "$1" }
skwevents () {kubectl get events -w | grep "$1" }
skwdaemonsets () {kubectl get daemonsets -w | grep "$1" }
skwdeployments () {kubectl get deployments -w | grep "$1" }
skwingresses () {kubectl get ingresses -w | grep "$1" }
skwnetworkpolicies () {kubectl get networkpolicies -w | grep "$1" }
skwpodsecuritypolicies () {kubectl get podsecuritypolicies -w | grep "$1" }
skwreplicasets () {kubectl get replicasets -w | grep "$1" }
skwnodes () {kubectl get nodes -w | grep "$1" }
skwpods () {kubectl get pods -w | grep "$1" }
skwalertmanagers () {kubectl get alertmanagers -w | grep "$1" }
skwprometheuses () {kubectl get prometheuses -w | grep "$1" }
skwprometheusrules () {kubectl get prometheusrules -w | grep "$1" }
skwservicemonitors () {kubectl get servicemonitors -w | grep "$1" }
skwnetworkpolicies () {kubectl get networkpolicies -w | grep "$1" }
skwpoddisruptionbudgets () {kubectl get poddisruptionbudgets -w | grep "$1" }
skwpodsecuritypolicies () {kubectl get podsecuritypolicies -w | grep "$1" }
skwclusterrolebindings () {kubectl get clusterrolebindings -w | grep "$1" }
skwclusterroles () {kubectl get clusterroles -w | grep "$1" }
skwrolebindings () {kubectl get rolebindings -w | grep "$1" }
skwroles () {kubectl get roles -w | grep "$1" }
skwpriorityclasses () {kubectl get priorityclasses -w | grep "$1" }
skwstorageclasses () {kubectl get storageclasses -w | grep "$1" }
skwvolumeattachments () {kubectl get volumeattachments -w | grep "$1" }
skwarg () { kubectl get $1 -w | grep "$2"}

#delete 
skdelpod () { kubectl delete pod $1 }
skdel () { kubectl delete $1 }
skdeldeployment () { kubectl delete deployment $1 }
skdelingress () { kubectl delete ingress $1 }
skdellist () { 
    kubectl delete $1 $(kubectl get $1 | grep $2 | awk {'print $1'} )
}
#get
skgbindings () { kubectl get bindings | grep "$1" }
skgcomponentstatuses () { kubectl get componentstatuses | grep "$1" }
skgconfigmaps () { kubectl get configmaps | grep "$1" }
skgendpoints () { kubectl get endpoints | grep "$1" }
skgevents () { kubectl get events | grep "$1" }
skglimitranges () { kubectl get limitranges | grep "$1" }
skgnamespaces () { kubectl get namespaces | grep "$1" }
skgnodes () { kubectl get nodes | grep "$1" }
skgpersistentvolumeclaims () { kubectl get persistentvolumeclaims | grep "$1" }
skgpersistentvolumes () { kubectl get persistentvolumes | grep "$1" }
skgpods () { kubectl get pods | grep "$1" }
skgpodtemplates () { kubectl get podtemplates | grep "$1" }
skgreplicationcontrollers () { kubectl get replicationcontrollers | grep "$1" }
skgresourcequotas () { kubectl get resourcequotas | grep "$1" }
skgsecrets () { kubectl get secrets | grep "$1" }
skgserviceaccounts () { kubectl get serviceaccounts | grep "$1" }
skgservices () { kubectl get services | grep "$1" }
skginitializerconfigurations () { kubectl get initializerconfigurations | grep "$1" }
skgmutatingwebhookconfigurations () { kubectl get mutatingwebhookconfigurations | grep "$1" }
skgvalidatingwebhookconfigurations () { kubectl get validatingwebhookconfigurations | grep "$1" }
skgcustomresourcedefinitions () { kubectl get customresourcedefinitions | grep "$1" }
skgapiservices () { kubectl get apiservices | grep "$1" }
skgcontrollerrevisions () { kubectl get controllerrevisions | grep "$1" }
skgdaemonsets () { kubectl get daemonsets | grep "$1" }
skgdeployments () { kubectl get deployments | grep "$1" }
skgreplicasets () { kubectl get replicasets | grep "$1" }
skgstatefulsets () { kubectl get statefulsets | grep "$1" }
skgbackups () { kubectl get backups | grep "$1" }
skgconfigs () { kubectl get configs | grep "$1" }
skgdeletebackuprequests () { kubectl get deletebackuprequests | grep "$1" }
skgdownloadrequests () { kubectl get downloadrequests | grep "$1" }
skgpodvolumebackups () { kubectl get podvolumebackups | grep "$1" }
skgpodvolumerestores () { kubectl get podvolumerestores | grep "$1" }
skgresticrepositories () { kubectl get resticrepositories | grep "$1" }
skgrestores () { kubectl get restores | grep "$1" }
skgschedules () { kubectl get schedules | grep "$1" }
skgtokenreviews () { kubectl get tokenreviews | grep "$1" }
skglocalsubjectaccessreviews () { kubectl get localsubjectaccessreviews | grep "$1" }
skgselfsubjectaccessreviews () { kubectl get selfsubjectaccessreviews | grep "$1" }
skgselfsubjectrulesreviews () { kubectl get selfsubjectrulesreviews | grep "$1" }
skgsubjectaccessreviews () { kubectl get subjectaccessreviews | grep "$1" }
skghorizontalpodautoscalers () { kubectl get horizontalpodautoscalers | grep "$1" }
skgcronjobs () { kubectl get cronjobs | grep "$1" }
skgjobs () { kubectl get jobs | grep "$1" }
skgcertificatesigningrequests () { kubectl get certificatesigningrequests | grep "$1" }
skgleases () { kubectl get leases | grep "$1" }
skgauthcodes () { kubectl get authcodes | grep "$1" }
skgauthrequests () { kubectl get authrequests | grep "$1" }
skgconnectors () { kubectl get connectors | grep "$1" }
skgoauth2clients () { kubectl get oauth2clients | grep "$1" }
skgofflinesessionses () { kubectl get offlinesessionses | grep "$1" }
skgpasswords () { kubectl get passwords | grep "$1" }
skgrefreshtokens () { kubectl get refreshtokens | grep "$1" }
skgsigningkeies () { kubectl get signingkeies | grep "$1" }
skgevents () { kubectl get events | grep "$1" }
skgdaemonsets () { kubectl get daemonsets | grep "$1" }
skgdeployments () { kubectl get deployments | grep "$1" }
skgingresses () { kubectl get ingresses | grep "$1" }
skgnetworkpolicies () { kubectl get networkpolicies | grep "$1" }
skgpodsecuritypolicies () { kubectl get podsecuritypolicies | grep "$1" }
skgreplicasets () { kubectl get replicasets | grep "$1" }
skgnodes () { kubectl get nodes | grep "$1" }
skgpods () { kubectl get pods | grep "$1" }
skgalertmanagers () { kubectl get alertmanagers | grep "$1" }
skgprometheuses () { kubectl get prometheuses | grep "$1" }
skgprometheusrules () { kubectl get prometheusrules | grep "$1" }
skgservicemonitors () { kubectl get servicemonitors | grep "$1" }
skgnetworkpolicies () { kubectl get networkpolicies | grep "$1" }
skgpoddisruptionbudgets () { kubectl get poddisruptionbudgets | grep "$1" }
skgpodsecuritypolicies () { kubectl get podsecuritypolicies | grep "$1" }
skgclusterrolebindings () { kubectl get clusterrolebindings | grep "$1" }
skgclusterroles () { kubectl get clusterroles | grep "$1" }
skgrolebindings () { kubectl get rolebindings | grep "$1" }
skgroles () { kubectl get roles | grep "$1" }
skgpriorityclasses () { kubectl get priorityclasses | grep "$1" }
skgstorageclasses () { kubectl get storageclasses | grep "$1" }
skgvolumeattachments () { kubectl get volumeattachments | grep "$1" }



skgingress () { kubectl get ingress | grep "$1" }
skgdeployments () { kubectl get deployment | grep "$1" }
skgget () { kubectl get $1 | grep "$2"}

#describe
skdescribepod () { kubectl describe pod $1 }

#log
sklog () { kubectl logs $1 }
sklogphp () { kubectl logs $1 php }
sklognginx () { kubectl logs $1 nginx }
sklogmemcached () { kubectl logs $1 memcached }
sklogarg () { kubetail $1 }
# sys_skopeo
# 经GitHub将镜像推送到华为云

https://github.com/cby-chen/sys_skopeo/

# 背景

阿里云镜像仓库限制并发，此仓库将以下镜像，全量同步到华为云

# 目前有如下镜像仓库，后续会陆续增加

```
gcr.io/kaniko-project/executor
gcr.io/google-samples/xtrabackup

docker.io/calico/typha
docker.io/calico/cni
docker.io/calico/node
docker.io/calico/kube-controllers

docker.elastic.co/elasticsearch/elasticsearch
docker.elastic.co/kibana/kibana
docker.elastic.co/logstash/logstash
docker.elastic.co/beats/filebeat
docker.elastic.co/beats/heartbeat
docker.elastic.co/beats/packetbeat
docker.elastic.co/beats/auditbeat
docker.elastic.co/beats/journalbeat
docker.elastic.co/beats/metricbeat
docker.elastic.co/apm/apm-server
docker.elastic.co/app-search/app-search

quay.io/coreos/flannel
quay.io/ceph/ceph
quay.io/cephcsi/cephcsi
quay.io/csiaddons/k8s-sidecar
quay.io/csiaddons/volumereplication-operator
quay.io/prometheus/prometheus
quay.io/prometheus/alertmanager
quay.io/prometheus/pushgateway
quay.io/prometheus/blackbox-exporter
quay.io/prometheus/node-exporter
quay.io/prometheus-operator/prometheus-config-reloader
quay.io/prometheus-operator/prometheus-operator
quay.io/brancz/kube-rbac-proxy
quay.io/cilium/cilium
quay.io/cilium/operator-generic

k8s.gcr.io/etcd
k8s.gcr.io/pause
k8s.gcr.io/kube-proxy
k8s.gcr.io/kube-apiserver
k8s.gcr.io/kube-scheduler
k8s.gcr.io/kube-controller-manager
k8s.gcr.io/coredns/coredns
k8s.gcr.io/dns/k8s-dns-node-cache
k8s.gcr.io/metrics-server/metrics-server
k8s.gcr.io/ingress-nginx/controller
k8s.gcr.io/ingress-nginx/kube-webhook-certgen
k8s.gcr.io/kube-state-metrics/kube-state-metrics
k8s.gcr.io/prometheus-adapter/prometheus-adapter
k8s.gcr.io/sig-storage/nfs-subdir-external-provisioner
k8s.gcr.io/sig-storage/csi-node-driver-registrar
k8s.gcr.io/sig-storage/csi-provisioner
k8s.gcr.io/sig-storage/csi-resizer
k8s.gcr.io/sig-storage/csi-snapshotter
k8s.gcr.io/sig-storage/csi-attacher
k8s.gcr.io/sig-storage/nfsplugin
k8s.gcr.io/defaultbackend-amd64
```

# 使用方式

```
docker.elastic.co/kibana/{image_name}  ==>  swr.cn-north-1.myhuaweicloud.com/chenby/{image_name}
quay.io/csiaddons/{image_name}  ==>  swr.cn-north-1.myhuaweicloud.com/chenby/{image_name}
docker.elastic.co/{image_name}  ==>  swr.cn-north-1.myhuaweicloud.com/chenby/{image_name}
k8s.gcr.io/{image_name}  ==>  swr.cn-north-1.myhuaweicloud.com/chenby/{image_name}
docker.io/{image_name}  ==>  swr.cn-north-1.myhuaweicloud.com/chenby/{image_name}
....
```

# 拉去镜像
```
docker pull swr.cn-north-1.myhuaweicloud.com/chenby/kube-scheduler:[镜像版本号]
```

> **关于**
>
> https://www.oiox.cn/
>
> https://www.oiox.cn/index.php/start-page.html
>
> **CSDN、GitHub、知乎、开源中国、思否、掘金、简书、华为云、阿里云、腾讯云、哔哩哔哩、今日头条、新浪微博、个人博客**
>
> **全网可搜《小陈运维》**
>
> **文章主要发布于微信公众号**

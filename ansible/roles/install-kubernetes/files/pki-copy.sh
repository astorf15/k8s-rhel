USER=vagrant 
# Set the control_plane_ips to all other master node ips or hostnames
CONTROL_PLANE_IPS="10.4.1.32 10.4.1.33"
for host in ${CONTROL_PLANE_IPS}; do
scp /etc/kubernetes/pki/ca.crt "${USER}"@$host:
scp /etc/kubernetes/pki/ca.key "${USER}"@$host:
scp /etc/kubernetes/pki/sa.key "${USER}"@$host:
scp /etc/kubernetes/pki/sa.pub "${USER}"@$host:
scp /etc/kubernetes/pki/front-proxy-ca.crt "${USER}"@$host:
scp /etc/kubernetes/pki/front-proxy-ca.key "${USER}"@$host:
scp /etc/kubernetes/pki/etcd/ca.crt "${USER}"@$host:etcd-ca.crt
scp /etc/kubernetes/pki/etcd/ca.key "${USER}"@$host:etcd-ca.key
scp /etc/kubernetes/admin.conf "${USER}"@$host:
done

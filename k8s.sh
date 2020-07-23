microk8s status

snap refresh microk8s --classic --channel=1.16/stable

kubectl get pods --all-namespaces


snap install microk8s --classic --channel=stable
microk8s status
export PATH=$PATH:/snap/bin

sudo daemonize /usr/bin/unshare --fork --pid --mount-proc /lib/systemd/systemd --system-unit=basic.target
exec sudo nsenter -t $(pidof systemd) -a su - $LOGNAME

microk8s enable dashboard dns fluentd ingress registry storage

kubectl get pods --all-namespaces

token=$(microk8s kubectl -n kube-system get secret | grep default-token | cut -d " " -f1)
microk8s kubectl -n kube-system describe secret $token
microk8s kubectl port-forward -n kube-system service/kubernetes-dashboard 10443:443

snap refresh microk8s --classic --channel=1.16/stable
/snap/bin/microk8s.helm version
/snap/bin/microk8s enable helm

sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube

microk8s kubectl get nodes

alias kubectl='microk8s kubectl'

microk8s kubectl get services
microk8s kubectl get nodes
microk8s status --wait-ready

microk8s.inspect

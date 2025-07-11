FROM debian

RUN echo 'deb http://http.us.debian.org/debian stable main contrib non-free' > /etc/apt/sources.list

RUN apt update
RUN sudo apt -y install python3 python3-pip pipx qemu-kvm qemu-utils libvirt-clients libvirt-daemon-system virtinst dynamips software-properties-common ca-certificates curl gnupg2

RUN pipx install gns3-server

# Access at http://<GNS3_Server_IP>:8000

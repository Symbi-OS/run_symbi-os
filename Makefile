install_docker:
	sudo dnf install dnf-plugins-core -y
	sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo -y
	sudo dnf install docker-ce docker-ce-cli containerd.io -y

start_docker_service:
	sudo systemctl start docker

start_docker_service_on_boot:
	sudo systemctl enable docker

run_hw:
	sudo docker run hello-world

run_tu_fed36:
	sudo docker run -d --name tu_fed36 -it fedora:36

attach_tu_fed36:
	sudo docker attach tu_fed36

install_stuff:
	sudo dnf install git make -y

pull:
	docker pull ghcr.io/tommy-u/sym:latest

tag:
	docker tag 57 ghcr.io/tommy-u/sym:latest	

push:
	docker push  ghcr.io/tommy-u/sym:latest

bridge:
	docker network create --driver=bridge  --subnet=192.168.19.0/24  --ip-range=192.168.19.2/24  --gateway=192.168.19.1  br0

#dnf group install "C Development Tools and Libraries" "Development Tools"
# make install_prereqs
# mount /dev/sda1 local_disk/
# cp -r linux_ro/ linux
# git checkout 5.14-config
# accept KSCAN default option (we think is b/c new compiler option)
# don't watch it build (privacy)
# dnf install openssl
# sudo dnf install fedpkg fedora-packager rpmdevtools ncurses-devel pesign grubby
# affirmations



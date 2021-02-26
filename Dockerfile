FROM fedora:latest

RUN dnf install -y rpmdevtools dnf-utils tree && \
    dnf clean all && \
    rm -r -f /var/cache/*

CMD dnf module install -y nodejs:12
FROM fedora:34

RUN dnf install -y rpmdevtools dnf-utils tree && \
    dnf clean all && \
    rm -r -f /var/cache/*

RUN dnf module install -y nodejs:12

CMD [ "/bin/bash" ]
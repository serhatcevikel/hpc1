FROM serhatcevikel/ad302:stage03

COPY --chown=jovyan:jovyan ./binder ${HOME}/binder

USER root

RUN apt update && \
    apt install -y openssh-server netcat pssh ncdu rsync \
        pciutils lshw encfs fuse3 sshfs;

RUN cp ${HOME}/binder/sshd_config /etc/ssh/ && \
    chmod 600 /etc/ssh/ssh_host_*;    

RUN pip install sos sos-pbs sos-notebook sos-r sos-python sos-bash && \
	python -m sos_notebook.install;

RUN Rscript ${HOME}/binder/install3.r; 

RUN rm -r ${HOME}/binder

WORKDIR ${HOME}

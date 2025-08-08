FROM gesiscss/binder-r2d-g5b5b759-serhatcevikel-2dbeyond-5fbounds-cb7907:e31752ba4ce1dc6c98c6a308cf275e6de02a9095
#FROM registry.gesis.mybinder.org/i-serhatcevikel-2dbeyond-5fbounds-cb7907:a34104db43fea63d86f1b577e2cad1b9b00b0f70

COPY --chown=jovyan:jovyan . ${HOME}

RUN Rscript ${HOME}/binder/install4.r; 

RUN rm -r ${HOME}/binder

WORKDIR ${HOME}

FROM gesiscss/binder-r2d-g5b5b759-serhatcevikel-2dbeyond-5fbounds-cb7907:e31752ba4ce1dc6c98c6a308cf275e6de02a9095

#COPY --chown=jovyan:jovyan . ${HOME}

#RUN rm -r ${HOME}/binder

WORKDIR ${HOME}

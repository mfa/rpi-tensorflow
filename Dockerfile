FROM resin/rpi-raspbian
MAINTAINER mfandreas <andreas@madflex.de>

ENV QEMU_EXECVE 1
COPY qemu/cross-build-end qemu/cross-build-start qemu/qemu-arm-static qemu/sh-shim /usr/bin/
RUN [ "cross-build-start" ]
ENV LC_ALL=C.UTF-8
RUN apt-get update -y && apt-get install -y python3-pip python3-dev wget vim gcc g++ gfortran libatlas-base-dev cython3 \
	libfreetype6-dev libpng12-dev pkg-config python3-scipy
RUN pip3 install -U numpy
RUN wget --no-check-certificate https://github.com/samjabrahams/tensorflow-on-raspberry-pi/raw/master/bin/tensorflow-0.9.0-py3-none-any.whl && pip3 install tensorflow-0.9.0-py3-none-any.whl && rm tensorflow-0.9.0-py3-none-any.whl

RUN pip3 install scikit-learn
RUN pip3 install ipykernel
RUN pip3 install jupyter
RUN pip3 install matplotlib
RUN python3 -m ipykernel.kernelspec
RUN [ "cross-build-end" ]

COPY jupyter_notebook_config.py /root/.jupyter/
COPY notebooks /notebooks
COPY run_jupyter.sh /

# TensorBoard
EXPOSE 6006
# IPython
EXPOSE 8888

WORKDIR "/notebooks"

CMD ["/run_jupyter.sh"]

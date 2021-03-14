FROM sabotagecla6/ubuntu_ui_jp

# ***********************************************
# install packages
# ***********************************************
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        gnupg firefox

# ***********************************************
# install vscode
# ***********************************************
ADD https://az764295.vo.msecnd.net/stable/fd6f3bce6709b121a895d042d343d71f317d74e7/code_1.54.2-1615424848_amd64.deb /tmp/code_1.54.2-1615424848_amd64.deb
RUN dpkg -i /tmp/code_1.54.2-1615424848_amd64.deb
RUN rm /tmp/code_1.54.2-1615424848_amd64.deb

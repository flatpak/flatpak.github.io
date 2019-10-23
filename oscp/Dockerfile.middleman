FROM fedora:30

RUN dnf install -y \
        ruby rubygems rubygem-bundler rubygem-json \
        git gcc gcc-c++ make redhat-rpm-config patch \
        ruby-devel libffi-devel zlib-devel

RUN git clone https://github.com/flatpak/flatpak.github.io && \
    pushd flatpak.github.io && bundle install --system && popd && \
    rm -rf flatpak.github.io

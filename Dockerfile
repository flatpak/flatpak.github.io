# Example usage:
# buildah bud -t flatmiddleman .
# podman run --rm -it -v ~/.ssh:/root/.ssh -v ~/.gitconfig:/root/.gitconfig:ro -v `pwd`:/flatpak -w /flatpak flatmiddleman deploy

FROM fedora:30

RUN dnf install -y \
        ruby rubygems rubygem-bundler rubygem-json \
        gcc gcc-c++ make redhat-rpm-config patch \
        ruby-devel libffi-devel zlib-devel

COPY . /flatpak.github.io
RUN pushd /flatpak.github.io && bundle install && popd && rm -rf flatpak.github.io

ENTRYPOINT ["/usr/bin/middleman"]

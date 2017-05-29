# let's start from a not-rolling, long support image
FROM ubuntu:16.04

# in only one layer, what is needed by ...
RUN apt-get update && apt-get install -y \
    build-essential `# well, essential` \ 
    curl            `# needed to install dmd` \
    gdb             `# pretty essential, so I can avoid an apt-get in derived images` \
    xz-utils        `# needed to install dmd` && \
    update-alternatives --install "/usr/bin/ld" "ld" "/usr/bin/ld.gold" 20 && \
    update-alternatives --install "/usr/bin/ld" "ld" "/usr/bin/ld.bfd" 10

CMD ["bash"]

# let's start from a not-rolling, long support image
FROM ubuntu:16.04

# in only one layer, what is needed by ...
RUN apt-get update && apt-get install -y \
    build-essential `# well, essential` \ 
    curl            `# needed to install dmd` \
    gdb             `# pretty essential, so I can avoid an apt-get in derived images` \
    xz-utils        `# needed to install dmd` \
    unzip           `# needed to unzip gitlab artifacts`

CMD ["bash"]

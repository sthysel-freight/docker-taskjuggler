# a container for taskjuggler
FROM ubuntu:14.04
MAINTAINER https://github.com/sthysel/docker-taskjuggler
ENV REFRESHED_AT 2016-03-31

ENV DEBIAN_FRONTEND noninteractive

# get add-apt-repository
RUN apt-get update && apt-get install -y --no-install-recommends software-properties-common 

RUN add-apt-repository ppa:brightbox/ruby-ng

RUN apt-get update && apt-get install -y --no-install-recommends \
  ruby2.1 \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN env --unset=DEBIAN_FRONTEND

RUN gem install taskjuggler

# Add user planner with local user ids 
RUN groupadd group -g 1000
RUN useradd -u 1000 -g group planner

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER planner

ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]

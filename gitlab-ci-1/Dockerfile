FROM gitlab/gitlab-runner:latest
## Example
ENV GITLAB_ENDPOINT http://35.203.124.1/
ENV GITLAB_TOKEN bgMkesfdsjfkljds
##

COPY register.sh /
COPY run.sh /

ENTRYPOINT ["bash", "/run.sh"]
#ENTRYPOINT ["/usr/bin/dumb-init", "/entrypoint"]
#CMD ["run", "--user=gitlab-runner", "--working-directory=/home/gitlab-runner"]

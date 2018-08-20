FROM gitlab/gitlab-runner:latest
## Example
ENV GITLAB_ENDPOINT http://35.204.140.48/
ENV GITLAB_TOKEN hebrjDzxxGzyt4eYf456
##

COPY register.sh /
COPY run.sh /

ENTRYPOINT ["bash", "/run.sh"]
#ENTRYPOINT ["/usr/bin/dumb-init", "/entrypoint"]
#CMD ["run", "--user=gitlab-runner", "--working-directory=/home/gitlab-runner"]

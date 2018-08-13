gitlab-runner register --non-interactive \
    --url $GITLAB_ENDPOINT \
    --registration-token $GITLAB_TOKEN \
    --executor "docker" \
    --name `hostname` \
    --docker-image "alpine:latest" \
    --tag-list "docker,linux,ubuntu,xenia" \
    --run-untagged 1 \
    --locked 0

FROM alpine:3.8
ENV APP_HOME /app
ENV COMMENT_DATABASE_HOST comment_db
ENV COMMENT_DATABASE comments

RUN apk update \
    && apk --no-cache add ruby ruby-dev ruby-bundler build-base ruby-bigdecimal \
    && mkdir $APP_HOME

WORKDIR $APP_HOME
COPY . $APP_HOME
RUN bundle install

CMD ["puma"]

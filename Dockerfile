FROM ruby:2.7-alpine

RUN gem install \
      rubocop:0.88.0 \
      rubocop-minitest:0.10.0 \
      rubocop-performance:1.7.0 \
      rubocop-rails:2.6.0 \
      rubocop-rake:0.5.1 \
      rubocop-thread_safety:0.4.1 \
    && rm -r /root/.gem/

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

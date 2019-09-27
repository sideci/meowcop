FROM rubylang/ruby:latest

RUN mkdir /work
WORKDIR /work

COPY test/smoke/*.rb .
COPY lib/meowcop/version.rb .
RUN MEOWCOP_VERSION="$(grep -oE '[0-9]+\.[0-9]+\.[0-9]+' version.rb)" && \
    rm version.rb && \
    gem install "meowcop:${MEOWCOP_VERSION}" && \
    meowcop init && \
    cat .rubocop.yml

ENTRYPOINT ["rubocop"]

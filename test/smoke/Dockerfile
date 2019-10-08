FROM rubylang/ruby:latest

RUN mkdir /work
WORKDIR /work

COPY config/ ./config/
COPY examples/ ./examples/
COPY exe/ ./exe/
COPY lib/ ./lib/
COPY Rakefile ./
COPY *.gemspec ./
COPY test/smoke/ ./test/smoke/
RUN rake install && \
    meowcop init && \
    echo '' >> .rubocop.yml && \
    echo '# Override the default settings.' >> .rubocop.yml && \
    echo 'Style/ZeroLengthPredicate:' >> .rubocop.yml && \
    echo '  Enabled: true' >> .rubocop.yml && \
    cat .rubocop.yml

ENTRYPOINT test "$(rubocop test/smoke --format=simple)" = "$(cat test/smoke/expectation-output.txt)"

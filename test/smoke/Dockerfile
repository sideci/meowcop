FROM ruby:3.0

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
RUN rubocop test/smoke --format=simple --disable-pending-cops > output1.txt 2>&1 || :
RUN meowcop run test/smoke --format=simple --disable-pending-cops > output2.txt 2>&1 || :

ENTRYPOINT diff -u test/smoke/expectation-output1.txt output1.txt && \
           diff -u test/smoke/expectation-output2.txt output2.txt

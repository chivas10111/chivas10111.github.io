FROM jekyll/jekyll

COPY --chown=NTS:NTS Gemfile .
COPY --chown=NTS:NTS Gemfile.lock .

RUN bundle install --quiet --clean

CMD ["NTS", "serve"]

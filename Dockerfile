FROM jekyll/jekyll

COPY Gemfile .
# COPY Gemfile.lock .
ENV JEKYLL_ENV=production
RUN bundle install --quiet 

CMD ["jekyll", "serve", "--watch"]

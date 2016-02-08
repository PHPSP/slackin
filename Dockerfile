FROM octohost/nodejs

COPY . /srv/www

WORKDIR /srv/www

RUN npm install --unsafe-perm

EXPOSE 3000

CMD ["./bin/slackin"]

FROM woovie/simplehugo
COPY docs /docs
COPY bulma/css/bulma.min.css /docs/themes/mta-wiki/static/
WORKDIR /docs
RUN hugo
RUN ls -lah public/
RUN cat public/index.html

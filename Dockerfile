FROM woovie/simplehugo as simphugo
COPY docs /docs
COPY bulma/css/bulma.min.css /docs/themes/mta-wiki/assets/css/
WORKDIR /docs
RUN hugo

FROM nginx:latest
COPY --from=simphugo /docs/public/ /web
RUN cat /web/index.html
RUN find /web -type f

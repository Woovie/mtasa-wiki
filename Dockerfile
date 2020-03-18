FROM woovie/simplehugo
COPY docs /docs
WORKDIR /docs
RUN hugo
RUN ls -lah public/
RUN cat public/index.html

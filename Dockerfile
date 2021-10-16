FROM alpine/git

COPY clone.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/clone.sh

ENTRYPOINT [ "/usr/local/bin/clone.sh" ]
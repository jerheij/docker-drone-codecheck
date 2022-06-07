FROM plugins/base:linux-amd64

COPY rootfs /

RUN apk add shellcheck --no-cache && \
    rm -rf /var/cache/apk/* && \
    chmod +x /usr/local/bin/codecheck.sh

CMD ["/bin/ash", "-c", "/usr/local/bin/codecheck.sh"]
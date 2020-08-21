FROM sighery/archbuilder:latest AS builder

USER builder

COPY --chown=builder ./spotify/* package/
WORKDIR package
# Sources are signed by these keys
RUN curl -sS https://download.spotify.com/debian/pubkey.gpg | gpg --import -

RUN makepkg -s --needed --noconfirm --noprogressbar

CMD ["/bin/bash"]

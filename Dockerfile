FROM archlinux:latest

# INSTALL DEPS
RUN pacman --needed --noconfirm -Sy base-devel jq

# USER (non-root)
RUN useradd --create-home --no-log-init user

# ENTRYPOINT
COPY entrypoint /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint

# ENTRY
ENTRYPOINT [ "/usr/local/bin/entrypoint" ]

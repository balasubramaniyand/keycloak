# Use the official Keycloak image from Docker Hub
FROM jboss/keycloak:latest

# Set environment variables for Keycloak admin user and password
ENV KEYCLOAK_USER=admin
ENV KEYCLOAK_PASSWORD=admin

# Optionally, copy your custom themes, realms, or configuration files
# COPY custom-theme /opt/jboss/keycloak/themes/custom-theme
# COPY custom-realm.json /tmp/custom-realm.json
# RUN /opt/jboss/keycloak/bin/standalone.sh \
#     -Djboss.socket.binding.port-offset=100 \
#     -Dkeycloak.migration.action=import \
#     -Dkeycloak.migration.provider=singleFile \
#     -Dkeycloak.migration.file=/tmp/custom-realm.json \
#     -Dkeycloak.migration.strategy=OVERWRITE_EXISTING

# Expose ports for HTTP and HTTPS (if configured)
EXPOSE 8080
# EXPOSE 8443

# Start Keycloak standalone mode
CMD ["-b", "0.0.0.0"]
ENTRYPOINT ["/opt/jboss/keycloak/bin/standalone.sh"]

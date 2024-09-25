# Use the official Keycloak image as the base
FROM quay.io/keycloak/keycloak:latest

# Copy your custom theme
COPY themes/my-custom-theme /opt/keycloak/themes/my-custom-theme

# Set the default theme (optional)
ENV KC_THEME=my-custom-theme

# start keycloak
CMD ["/opt/keycloak/bin/kc.sh", "start-dev"]
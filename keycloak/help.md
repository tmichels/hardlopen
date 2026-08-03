Draai dit om een lokale Keycloak op te starten:
`podman run \
   --name keycloak \
   --replace \
   -p 9000:8080 \
   -v /home/thomas/projecten/hardlopen/keycloak/hardlopen-realm.json:/opt/keycloak/data/import/hardlopen-realm.json:ro,Z \
   -v /home/thomas/projecten/hardlopen/keycloak/hardlopen-users-0.json:/opt/keycloak/data/import/hardlopen-users-0.json:ro,Z \
   -e KC_DB=dev-mem \
   -e KC_HTTP_ENABLED=true \
   -e KC_HOSTNAME=localhost \
   -e KC_HOSTNAME_PORT=9000 \
   -e KC_HOSTNAME_STRICT=false \
   -e KC_HEALTH_ENABLED=true \
   -e KC_BOOTSTRAP_ADMIN_USERNAME=admin \
   -e KC_BOOTSTRAP_ADMIN_PASSWORD=admin \
   docker.io/keycloak/keycloak:26.4 \
   start-dev --import-realm`
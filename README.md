# Kafka broker cluster

## Running the app
```bash
docker-compose up
```

## Configuration
- `KEYCLOAK_CREATE_ADMIN_USER`: Create administrator user on boot. Default: **true**.
- `SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_AUTH0_CLIENTID` : Keycloak client id
- `SPRING_SECURITY_OAUTH2_CLIENT_REGISTRATION_AUTH0_CLIENTSECRET` : Keycloak client secret
- `SPRING_SECURITY_OAUTH2_CLIENT_PROVIDER_AUTH0_ISSUER_URI` : Keycloak issuer url

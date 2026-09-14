# esyfo-token-tjeneste

- This token service is for internal dev use over NaisDevice. Keep it off
  public ingress and production. `sjekkIngenPublicNais` enforces one
  `nais/nais-dev.yaml` file and rejects external dev ingress.
- Use `./gradlew build`, `./gradlew test` and `./gradlew ktlintCheck`.
  `mise build` explicitly skips tests.
- Gradle resolves `maskinporten-client` from GitHub Packages and requires the
  `githubPassword` project property, usually supplied through
  `ORG_GRADLE_PROJECT_githubPassword` with package-read access.
- System-user token routes include an organisation-specific claim; routes
  without that claim and the Altinn-exchanged Dialogporten token are distinct
  flows. Preserve the route-specific scope and claim handling.

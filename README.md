# JBoss Tools Extension for Newer Eclipse Versions

The original JBoss Tools plugin was discontinued, so the extension was updated to support newer Eclipse versions, including **Eclipse 2025-09**.

## Adding Missing Dependencies

The following command was used to publish the missing dependencies into the extension's `.zip` repository:

```bash
eclipse.exe -nosplash -application org.eclipse.equinox.p2.publisher.FeaturesAndBundlesPublisher -metadataRepository file:/C:/jbosstools_extension -artifactRepository file:/C:/jbosstools_extension -source C:/new_dependencies -publishArtifacts -append -configs ANY -consoleLog

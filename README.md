
# JBoss Tools Extension for Newer Eclipse Versions

Originally developed and maintained by **Red Hat**, JBoss Tools is a collection of Eclipse plugins that provides tools for developing applications with JBoss and related technologies.

Since the original plugin was discontinued, this extension was adapted to support newer Eclipse versions, including **Eclipse 2025-09**.

This project builds upon the original work of Red Hat and aims to extend compatibility with newer Eclipse releases.

## Installation

1. Download or locate the `jbosstools_extension.zip` file.
2. Open Eclipse IDE.
3. Navigate to **Help → Install New Software...**.
4. Click **Add...** to add a new software repository.
5. Click **Archive...** and select the `jbosstools_extension.zip` file.
6. Enter a repository name, such as `JBoss Tools Extension`.
7. Click **Add**.
8. Select the desired JBoss Tools components from the available list.
9. Click **Next** and review the components to be installed.
10. Accept the license agreements, if prompted.
11. Click **Finish** to start the installation.
12. If Eclipse displays a security warning, review it and proceed if you trust the source.
13. Restart Eclipse when prompted to complete the installation.

## Adding Missing Dependencies

The following command was used to publish the missing dependencies into the extension's `.zip` repository:

```bash
eclipse.exe -nosplash -application org.eclipse.equinox.p2.publisher.FeaturesAndBundlesPublisher -metadataRepository file:/C:/jbosstools_extension -artifactRepository file:/C:/jbosstools_extension -source C:/new_dependencies -publishArtifacts -append -configs ANY -consoleLog
```

## Credits

- **Original developer:** Red Hat
- **Original project:** JBoss Tools
- **Adaptation:** Compatibility updates and dependency fixes for newer Eclipse versions.

This extension is an independent adaptation and is not an official Red Hat product.

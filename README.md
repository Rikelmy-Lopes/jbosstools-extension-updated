Jboss Tools extension updated to newer versions of Eclipse "2025-09", since the original plugin was descontinued


Command Used to add the missing dependencies to the .zip File.

eclipse.exe -nosplash -application org.eclipse.equinox.p2.publisher.FeaturesAndBundlesPublisher -metadataRepository file:/C:/jbosstools_extension -artifactRepository file:/C:/jbosstools_extension -source C:/new_dependencies -publishArtifacts -append -configs ANY -consoleLog

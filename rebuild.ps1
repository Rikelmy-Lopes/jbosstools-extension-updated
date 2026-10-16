# Configuration paths
$EclipsePath = "eclipse.exe"         # Path to the Eclipse executable
$RepoPath = "jbosstools_extension"   # Target local p2 repository directory (extracted)
$SourcePath = "dependencies"         # Source folder containing new features and dependencies
$ZipFile = "jbosstools.zip"          # Output ZIP archive name

Start-Process -FilePath $EclipsePath -ArgumentList "-nosplash", "-application", "org.eclipse.equinox.p2.publisher.FeaturesAndBundlesPublisher", "-metadataRepository", "file:$RepoPath", "-artifactRepository", "file:$RepoPath", "-source", $SourcePath, "-publishArtifacts", "-append", "-configs", "ANY", "-consoleLog" -Wait -NoNewWindow

# Remove the existing archive if present to avoid conflicts
Remove-Item -Path $ZipFile -ErrorAction SilentlyContinue

# Create a new compressed archive of the updated repository
7z a $ZipFile "$RepoPath\*"

Read-Host -Prompt "Pressione Enter para continuar"

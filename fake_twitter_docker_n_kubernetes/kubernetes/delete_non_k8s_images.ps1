# Get a list of all Docker images
$images = docker images --format "{{.Repository}}:{{.Tag}}"

# Filter out Kubernetes default images
$filtered_images = $images | Where-Object { $_ -notmatch "k8s.gcr.io|gcr.io/google-containers" }

# Delete the remaining images
$filtered_images | ForEach-Object { docker rmi -f $_ }

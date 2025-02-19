# List of new unique image URLs
$imageUrls = @(
    "https://images.unsplash.com/photo-1497366811353-6870744d04b2",
    "https://images.unsplash.com/photo-1497366811353-6870744d04b2",
    "https://images.unsplash.com/photo-1497366811353-6870744d04b2",
    "https://images.unsplash.com/photo-1497366811353-6870744d04b2",
    "https://images.unsplash.com/photo-1497366811353-6870744d04b2"
)

# Create images directory if it doesn't exist
if (-Not (Test-Path "images")) {
    New-Item -ItemType Directory -Path "images"
}

# Download unique images
for ($i = 1; $i -le 5; $i++) {
    try {
        $url = $imageUrls[$i-1] + "?w=1600&h=900&auto=format&fit=crop"
        Invoke-WebRequest -Uri $url -OutFile "images/unique$i.jpg"
        Write-Host "Downloaded unique image $i"
    }
    catch {
        Write-Host "Failed to download unique image $i"
    }
}

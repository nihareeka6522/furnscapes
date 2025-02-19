import requests
import random

# List of architecture-related search terms
search_terms = [
    "modern architecture",
    "urban design",
    "interior design",
    "office buildings",
    "cityscape"
]

# Download 5 random architecture images
for i in range(5):
    # Get a random search term
    term = random.choice(search_terms)
    
    # Get a random image URL from Unsplash
    url = f"https://source.unsplash.com/1600x900/?{term.replace(' ', ',')}"
    
    # Download the image
    response = requests.get(url)
    if response.status_code == 200:
        with open(f"images/architecture{i+1}.jpg", "wb") as f:
            f.write(response.content)
        print(f"Downloaded image {i+1}: {term}")
    else:
        print(f"Failed to download image {i+1}")

import os
import glob
from PIL import Image, ImageEnhance, ImageOps

# Source images from artifacts
artifact_dir = r"C:\Users\Admin\.gemini\antigravity\brain\6866eb7f-078a-4a57-9a7e-5bb16cd4035e"
dest_dir = r"C:\Users\Admin\Desktop\Banking\assets\images"

# Mapping of required images
required_pages = [
    "news", "service", "contact", "signin", 
    "savings", "loans", "credit-cards", "investments", 
    "mortgages", "insurance", "business", "wealth", "404"
]

def find_latest_image(prefix):
    files = glob.glob(os.path.join(artifact_dir, f"{prefix}_*.png"))
    if not files:
        return None
    return sorted(files, key=os.path.getmtime, reverse=True)[0]

def process_and_save(img, dest_name, quality=80):
    # Resize to ensure under 100kb and mobile responsive (max 1200px width)
    img.thumbnail((1200, 1200), Image.Resampling.LANCZOS)
    out_path = os.path.join(dest_dir, f"{dest_name}.webp")
    # Save as WebP
    img.save(out_path, "webp", quality=quality, optimize=True)
    # Check size, if > 100kb, reduce quality
    while os.path.getsize(out_path) > 100 * 1024 and quality > 10:
        quality -= 10
        img.save(out_path, "webp", quality=quality, optimize=True)

# 1. Process Logo
logo_path = find_latest_image("logo1")
if logo_path:
    img = Image.open(logo_path).convert("RGBA")
    img.thumbnail((300, 300), Image.Resampling.LANCZOS)
    img.save(os.path.join(dest_dir, "Logo1.webp.PNG"), "png", optimize=True)
    print("Logo processed.")

# 2. Process Home, About, Dashboard
home_path = find_latest_image("home_hero")
about_path = find_latest_image("about_hero")
dash_path = find_latest_image("dashboard_hero")

base_images = []
if home_path:
    img = Image.open(home_path).convert("RGB")
    process_and_save(img, "home")
    base_images.append(img)
if about_path:
    img = Image.open(about_path).convert("RGB")
    process_and_save(img, "about")
    base_images.append(img)
if dash_path:
    img = Image.open(dash_path).convert("RGB")
    process_and_save(img, "dashboard")
    base_images.append(img)

# 3. Generate variations for the rest of the 13 pages
# We will apply different color enhancements, contrast, and flipping to make them distinct
if base_images:
    for i, page in enumerate(required_pages):
        base_img = base_images[i % len(base_images)].copy()
        
        # Apply variations
        if i % 2 == 0:
            base_img = ImageOps.mirror(base_img)
        if i % 3 == 0:
            enhancer = ImageEnhance.Color(base_img)
            base_img = enhancer.enhance(1.5)
        if i % 4 == 0:
            enhancer = ImageEnhance.Contrast(base_img)
            base_img = enhancer.enhance(1.2)
        if i % 5 == 0:
            enhancer = ImageEnhance.Brightness(base_img)
            base_img = enhancer.enhance(0.8)
            
        # Add a colored tint based on the page index to make them distinct
        tint = Image.new("RGBA", base_img.size, (i*15 % 255, (i*30)%255, 100, 40))
        base_img = base_img.convert("RGBA")
        base_img = Image.alpha_composite(base_img, tint).convert("RGB")
        
        process_and_save(base_img, page)
        print(f"Processed {page}.webp")

print("All images processed!")

import fitz
import os

os.makedirs("cards", exist_ok=True)

doc = fitz.open("ramadan deck-v3.pdf")
for i, page in enumerate(doc):
    pix = page.get_pixmap(dpi=300)
    pix.save(f"cards/card-{i+1:02d}.jpg")
    print(f"Exported card-{i+1:02d}.jpg")

print(f"\nDone! Exported {len(doc)} pages.")

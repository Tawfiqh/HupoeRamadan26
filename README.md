# Hupoe — Ramadan Conversation Deck

**The conversational deck for meaningful nights this Ramadan.**

A free, interactive card deck of 52 questions to deepen conversations at your iftar table, with family, and throughout Ramadan. By [Hupoe](https://hupoeclub.com/ramadan).

---

## What’s in the deck

This hand-crafted deck covers:

- **Goals & intentions** for the month  
- **Your relationship with Allah**  
- **Views on the Muslim community**  
- **Gratitude, growth & forgiveness**

Perfect for iftar gatherings, family nights, post-Taraweeh hangouts, mosque youth circles, suhoor reflections, or quiet personal reflection.

---

## Try it

- **Live site:** [hupoeramadan26.pages.dev](https://hupoeramadan26.pages.dev) *(if deployed via Cloudflare Pages)*  
- **Hupoe:** [hupoeclub.com/ramadan](https://hupoeclub.com/ramadan)

Browse the cards on the web or download the PDF from the site.

---

## Run locally

No build step. Open the project in a browser:

```bash
# From the project root, serve the current directory (e.g. with Python)
python3 -m http.server 8000
# Then open http://localhost:8000
```

Or open `index.html` directly in your browser.

---

## Deploy

Static HTML/CSS/JS. Deploy to [Cloudflare Pages](https://pages.cloudflare.com/) (free) by connecting this repo — see **[DEPLOY.md](./DEPLOY.md)** for steps.

---

## Project structure

| Path           | Description                    |
|----------------|--------------------------------|
| `index.html`   | Single-page app and card deck  |
| `cards/`       | Card assets                    |
| `export_cards.py` | Script used to export card data |
| `DEPLOY.md`    | Cloudflare Pages deploy guide  |

---

*At Hupoe, our mission is to help Muslims better connect with God and one another.*

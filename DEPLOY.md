# Deploy Hupoe Ramadan Deck to Cloudflare Pages (free)

This site is static (HTML/CSS/JS), so you can host it for free on **Cloudflare Pages** with Git-based deploys.

## Steps

1. **Open Cloudflare Pages**
   - Go to: **https://dash.cloudflare.com** → **Workers & Pages** → **Create** → **Pages** → **Connect to Git**.

2. **Connect GitHub**
   - Sign in with GitHub if asked and authorize Cloudflare.
   - Choose the **HupoeRamadan26** repository and click **Begin setup**.

3. **Build settings** (static site, no build)
   - **Production branch:** `main`
   - **Build command:** paste exactly: `exit 0` (required—Cloudflare needs a command; this does nothing and succeeds)
   - **Build output directory:** leave **empty** (repo root is used)

4. **Deploy**
   - Click **Save and Deploy**. The first build may take a minute.

5. **Your live URL**
   - After the build finishes, your site will be at:
   - **https://hupoeramadan26.pages.dev** (or the URL shown in the dashboard).

Later, every push to `main` will trigger a new deploy automatically.

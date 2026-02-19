# Deploy Hupoe Ramadan Deck to Cloudflare Pages (free)

This site is static (HTML/CSS/JS), so you can host it for free on **Cloudflare Pages** with Git-based deploys.

## Steps

1. **Open Cloudflare Pages**
   - Go to: **https://dash.cloudflare.com** → **Workers & Pages** → **Create** → **Pages** → **Connect to Git**.

2. **Connect GitHub**
   - Sign in with GitHub if asked and authorize Cloudflare.
   - Choose the **HupoeRamadan26** repository and click **Begin setup**.

3. **Build settings** (static site, no build)
   - **Production branch:** `prod`
   - **Build command:** `exit 0`
   - **Build output directory:** `.` (repo root — so Cloudflare knows what to deploy)
   - **Deploy command:** leave **empty**. Cloudflare deploys the build output using its own auth. If you run `npx wrangler pages deploy` here it fails (no API token in the build environment).

4. **Deploy**
   - Click **Save and Deploy**. The first build may take a minute.

5. **Your live URL**
   - After the build finishes, your site will be at:
   - **https://hupoeramadan26.pages.dev** (or the URL shown in the dashboard).

Later, every push to **`prod`** will trigger a production deploy. Use `main` for development; merge or push to `prod` when you want to go live.

---

### If Git deploy still doesn’t work: deploy from your machine

We got the site live by running Wrangler **locally** (after `wrangler login` in the browser). You can keep using that:

```bash
git checkout prod && git merge main && npx wrangler pages deploy . --project-name=hupoeramadan26 && git push origin prod && git checkout main
```

That merges `main` into `prod`, deploys the current folder to Pages, then pushes and switches back to `main`.

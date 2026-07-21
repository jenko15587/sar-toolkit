# SAR Field Toolkit

A self-hosted single-page application for Search & Rescue data processing.
All file processing is client-side — no data ever leaves the browser.

## Tools included

- **CSV to KML** — import lat/long or UTM coordinates, export KML placemarks with optional polygon
- **DJI to Polygon** — convert DJI drone flight logs to KML coverage polygon or track
- **GPX Cleaner** — remove erroneous straight-line segments caused by GPS signal loss

---

## Deployment on dockhand (LXC 200)

### 1. Copy files to dockhand

```bash
scp -r sar-toolkit/ root@192.168.1.244:/opt/sar-toolkit/
```

### 2. Build and start

```bash
cd /opt/sar-toolkit
docker compose up -d --build
```

App will be available at: http://192.168.1.244:3080

### 3. Expose via Cloudflare Zero Trust (optional)

Add a tunnel entry in your Cloudflare Zero Trust dashboard:
- Subdomain: `sar` (→ sar.chabyhome.net)
- Service: `http://localhost:3080`

---

## Adding new tools

Each tool is a self-contained section in `index.html`:

1. Add a nav item in the sidebar
2. Add a `<div class="panel" id="panel-TOOLNAME">` section
3. Add the JS logic at the bottom of the script block
4. Rebuild: `docker compose up -d --build`

---

## Port

Default port is **3080**. Change in `docker-compose.yml`:

```yaml
ports:
  - "3080:80"   # host:container
```

## Update workflow

```bash
cd /opt/sar-toolkit
# edit index.html
docker compose up -d --build
```

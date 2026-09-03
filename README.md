SAR Field Toolkit

A self-hosted, browser-based toolset for Search and Rescue data processing. All computation runs client-side — no data is ever uploaded to any server.

Tools

- CSV to KML	Import lat/long or UTM coordinates from CSV and export as KML placemarks with optional track line
- GPX Cleaner	Remove erroneous straight-line segments caused by GPS signal loss from track files
- KML Reducer	Strip thousands of point markers from a KML (e.g. search jet logs) and replace with a single clean track line
- Search Patterns	Generate creeping line (parallel track) or expanding square search patterns as KML
- Search Boxes	Generate a grid or radial set of labelled search box polygons as KML for assigning sectors to teams


## Quick start

This is a static, client-side app — no server, no build step, no dependencies.

**Live version:** hosted at [sar.chabyhome.net](https://sar.chabyhome.net) via Cloudflare Pages, redeployed automatically on every push to `main`.

**Run it yourself:**
- Just open `index.html` in a browser, or
- Serve the folder with any static file server (`python -m http.server`, `npx serve`, etc.)
- Or fork/clone and connect your own Cloudflare Pages / GitHub Pages project — no build command needed, output directory is the repo root.

### Updating

Push to `main` (or merge a PR) and the live site redeploys automatically. No image to rebuild, nothing to pull.

SAR Field Toolkit

A self-hosted, browser-based toolset for Search and Rescue data processing. All computation runs client-side — no data is ever uploaded to any server.

Tools
Tool	Description
CSV to KML	Import lat/long or UTM coordinates from CSV and export as KML placemarks with optional track line
GPX Cleaner	Remove erroneous straight-line segments caused by GPS signal loss from track files
KML Reducer	Strip thousands of point markers from a KML (e.g. search jet logs) and replace with a single clean track line
Search Patterns	Generate creeping line (parallel track) or expanding square search patterns as KML
Search Boxes	Generate a grid or radial set of labelled search box polygons as KML for assigning sectors to teams
Quick start

Requires Docker and Docker Compose — nothing else.

bash
curl -O https://raw.githubusercontent.com/jenko15587/sar-toolkit/main/docker-compose.yml
docker compose up -d

Access at http://localhost:3080.

To change the port, edit the ports: line in docker-compose.yml before running.

Updating
bash
docker compose pull
docker compose up -d

The image is rebuilt and published automatically on every push to main via GitHub Actions.

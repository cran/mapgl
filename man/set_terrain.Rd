% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/terrain.R
\name{set_terrain}
\alias{set_terrain}
\title{Set terrain properties on a map}
\usage{
set_terrain(map, source, exaggeration = 1)
}
\arguments{
\item{map}{A map object created by the \code{mapboxgl} or \code{maplibre} functions.}

\item{source}{The ID of the raster DEM source.}

\item{exaggeration}{The terrain exaggeration factor.}
}
\value{
The modified map object with the terrain settings applied.
}
\description{
Set terrain properties on a map
}
\examples{
\dontrun{
library(mapgl)

mapboxgl(
  style = mapbox_style("standard-satellite"),
  center = c(-114.26608, 32.7213),
  zoom = 14,
  pitch = 80,
  bearing = 41
) |>
  add_raster_dem_source(
    id = "mapbox-dem",
    url = "mapbox://mapbox.mapbox-terrain-dem-v1",
    tileSize = 512,
    maxzoom = 14
  ) |>
  set_terrain(
    source = "mapbox-dem",
    exaggeration = 1.5
  )
}
}

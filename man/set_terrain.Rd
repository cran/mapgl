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
map <- mapboxgl(style = "mapbox://styles/mapbox/satellite-streets-v12",
                center = c(-114.26608, 32.7213), zoom = 14, pitch = 80, bearing = 41,
                access_token = "your_token_here")
map <- add_source(map, id = "mapbox-dem", type = "raster-dem",
                  url = "mapbox://mapbox.mapbox-terrain-dem-v1",
                  tileSize = 512, maxzoom = 14)
map <- set_terrain(map, source = "mapbox-dem", exaggeration = 1.5)
}
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/controls.R
\name{add_layers_control}
\alias{add_layers_control}
\title{Add a layers control to the map}
\usage{
add_layers_control(
  map,
  position = "top-left",
  layers = NULL,
  collapsible = TRUE,
  use_icon = TRUE,
  background_color = NULL,
  active_color = NULL,
  hover_color = NULL,
  active_text_color = NULL,
  inactive_text_color = NULL
)
}
\arguments{
\item{map}{A map object.}

\item{position}{The position of the control on the map (one of "top-left", "top-right", "bottom-left", "bottom-right").}

\item{layers}{A vector of layer IDs to be included in the control. If NULL, all layers will be included.}

\item{collapsible}{Whether the control should be collapsible.}

\item{use_icon}{Whether to use a stacked layers icon instead of the "Layers" text when collapsed. Only applies when collapsible = TRUE.}

\item{background_color}{The background color for the layers control; this will be the
color used for inactive layer items.}

\item{active_color}{The background color for active layer items.}

\item{hover_color}{The background color for layer items when hovered.}

\item{active_text_color}{The text color for active layer items.}

\item{inactive_text_color}{The text color for inactive layer items.}
}
\value{
The modified map object with the layers control added.
}
\description{
Add a layers control to the map
}
\examples{
\dontrun{
library(tigris)
options(tigris_use_cache = TRUE)

rds <- roads("TX", "Tarrant")
tr <- tracts("TX", "Tarrant", cb = TRUE)

maplibre() |>
    fit_bounds(rds) |>
    add_fill_layer(
        id = "Census tracts",
        source = tr,
        fill_color = "purple",
        fill_opacity = 0.6
    ) |>
    add_line_layer(
        "Local roads",
        source = rds,
        line_color = "pink"
    ) |>
    add_layers_control(
        position = "top-left",
        background_color = "#ffffff",
        active_color = "#4a90e2"
    )
}
}

#' Enable hover events for Shiny applications
#'
#' This function enables hover functionality for maplibre and mapboxgl widgets
#' in Shiny applications, providing `_hover` and `_feature_hover` input values.
#' 
#' @param map A maplibre or mapboxgl widget object.
#' @param coordinates Logical. If TRUE, provides general mouse coordinates via `_hover` input. Defaults to TRUE.
#' @param features Logical. If TRUE, provides feature information via `_feature_hover` input when hovering over map features. Defaults to TRUE.
#'
#' @return The modified map object with hover events enabled.
#' @export
#'
#' @examples
#' \dontrun{
#' library(shiny)
#' library(mapgl)
#' 
#' ui <- fluidPage(
#'   maplibreOutput("map"),
#'   verbatimTextOutput("hover_info")
#' )
#' 
#' server <- function(input, output) {
#'   output$map <- renderMaplibre({
#'     maplibre() |>
#'       enable_shiny_hover()
#'   })
#'   
#'   output$hover_info <- renderText({
#'     paste("Mouse at:", input$map_hover$lng, input$map_hover$lat)
#'   })
#' }
#' 
#' shinyApp(ui, server)
#' }
enable_shiny_hover <- function(map, coordinates = TRUE, features = TRUE) {
  
  # Check if map is valid
  if (!inherits(map, c("maplibregl", "mapboxgl"))) {
    stop("Map must be a maplibre or mapboxgl widget object", call. = FALSE)
  }
  
  # Add hover configuration to the widget
  if (is.null(map$x$hover_events)) {
    map$x$hover_events <- list()
  }
  
  map$x$hover_events$enabled <- TRUE
  map$x$hover_events$coordinates <- coordinates
  map$x$hover_events$features <- features
  
  return(map)
}
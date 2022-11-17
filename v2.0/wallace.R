library(wallace)
app_path <- system.file("shiny", package = "wallace")
shiny::runApp(app_path, launch.browser=FALSE, port=8080, host="0.0.0.0")

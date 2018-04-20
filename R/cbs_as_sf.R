#' Create a sf dataframe
#' 
#' Create a sf data.frame
#' @param x \code{data.frame} downloaded with \code{\link{cbs_get_data}}.
#' @param ... reserved for future use.
#' @export
cbs_as_sf <- function(x, ...){
  if(!requireNamespace("sf", quietly = TRUE)){
    stop( "Package 'sf' is needed for this function. Please install it using 'install.packages(\"sf\"'"
        , .call = FALSE
        )
  }
  
}
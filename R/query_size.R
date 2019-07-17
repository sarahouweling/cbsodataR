query_size <- function(x, ...){
  meta <- cbs_get_meta(x)
  x_d <- grepl("Dimension$", meta$DataProperties$Type)
  x_t <- grepl("Topic$", meta$DataProperties$Type)
  x_dims <- sapply(meta[meta$DataProperties$Key[x_d]], nrow)
  q <- list(...)
  nms <- intersect(names(q), names(x_dims))
  x_dims[nms] <- sapply(q[nms], length)
  prod(as.integer(x_dims))
}

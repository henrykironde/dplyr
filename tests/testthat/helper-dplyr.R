
# Silence soft-deprecation warnings until next tibble() release

tibble <- function(...) {
  scoped_options(lifecycle_disable_verbose_retirement = TRUE)
  tibble::tibble(...)
}
data_frame <- tibble

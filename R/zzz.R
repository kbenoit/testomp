.onAttach <- function(...) {
  Sys.setenv(OMP_THREAD_LIMIT = 2)
}

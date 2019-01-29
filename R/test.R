#' Dummy function to cause OMP warning
#'
#' Dummy function whose sole purpose is to reproduce the OMP warning
#' from data.table.
#' @export
#' @import data.table
cause_warning <- function() {
  samp <- grp <- NULL
  dt <- data.table(i = seq_len(6),
                   grp = c(1, 1, 1, 2, 2, 2),
                   letters = LETTERS[1:6])
  dt[, samp := sample(letters, replace = TRUE), by = grp]
  setDF(dt)
}

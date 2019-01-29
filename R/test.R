#' Dummy function that does NOT cause a warning
#'
#' Dummy function whose sole purpose is to reproduce the OMP warning.  This
#' one is ok.
#' from data.table.
#' @export
#' @import data.table
nowarning <- function() {
  samp <- grp <- NULL
  dt <- data.table(i = seq_len(6),
                   grp = c(1, 1, 1, 2, 2, 2),
                   letters = LETTERS[1:6])
  setDF(dt)
}

#' Dummy function that DOES cause a warning
#'
#' Dummy function whose sole purpose is to reproduce the OMP warning.
#' This one DOES cause a warning.
#' from data.table.
#' @export
#' @import data.table
yeswarning <- function() {
  samp <- grp <- NULL
  dt <- data.table(i = seq_len(6),
                   grp = c(1, 1, 1, 2, 2, 2),
                   letters = LETTERS[1:6])
  dt[, samp := sample(letters, replace = TRUE), by = grp]
  setDF(dt)
}

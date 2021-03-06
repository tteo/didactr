#' Flag Code Chunks
#'
#' @param x A string of text with code chunks
#'
#' @return A \code{data.frame} with the original text and the flagged code
#' and the code removed
#' @export
flag_code_chunks = function(x) {
  original_df = data_frame(text = x)
  code = grep("^```", original_df$text)
  if (length(code) > 0) {
    # has to have start/stop
    if (length(code) %% 2 != 0) {
      stop("Code blocks are not balanced (one open for one ending), stopping!")
    }
    code_start = code[seq(1, length(code) - 1, by = 2)]
    code_end = code[seq(2, length(code), by = 2)]
    code_indices = mapply(function(start, stop) {
      seq(start, stop)
    }, code_start, code_end, SIMPLIFY = FALSE)
    code_indices = c(unlist(code_indices))
    original_df$is_code = FALSE
    original_df$is_code[code_indices] = TRUE
    original_df$original_text = original_df$text
    original_df$text[ original_df$is_code ] = ""
  } else {
    original_df$is_code = FALSE
    original_df$original_text = original_df$text
  }
  return(original_df)
}

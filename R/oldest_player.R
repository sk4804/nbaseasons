#' A Oldest Player Function
#'
#' This function allows you find out the oldest player of the input year.
#' @param year Year of interest
#' @keywords player
#' @export
#' @examples
#' oldest_player()

oldest_player <- function(year){
  dplyr::filter(seasonstats, Year == year) %>%
    summarise(Player[Age == max(Age)])
}



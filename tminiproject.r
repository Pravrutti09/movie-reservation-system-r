# create a list of available movies
movies <- c("Avengers: Endgame", "The Lion King", "Joker", "Toy Story 4", "Frozen 2")

# create a matrix to represent the seats in the theater
seats <- matrix(rep("O", 50), nrow = 10)

# function to display the seating arrangement
display_seats <- function() {
  cat("\n   1 2 3 4 5 6 7 8 9 10\n")
  for (i in 1:nrow(seats)) {
    cat(paste0(i, "  "))
    for (j in 1:ncol(seats)) {
      cat(seats[i, j], " ")
    }
    cat("\n")
  }
}

# function to reserve a seat
reserve_seat <- function(movie_name, row_number, seat_number) {
  if (seats[row_number, seat_number] == "X") {
    cat("\nSeat already reserved, please choose another seat.\n")
  } else {
    seats[row_number, seat_number] <- "X"
    cat("\nSeat reserved for ", movie_name, " at row ", row_number, ", seat ", seat_number, "\n")
    display_seats()
  }
}

# main program
cat("Welcome to Movie Reservation System\n")
cat("----------------------------------\n")
cat("Available Movies:\n")
cat(paste(movies, collapse = ", "))
cat("\n\n")

while (TRUE) {
  # display menu
  cat("1. View Seating Arrangement\n")
  cat("2. Reserve a Seat\n")
  cat("3. Exit\n")
  
  choice <- readline(prompt = "\nEnter your choice: ")
  
  if (choice == "1") {
    # display seating arrangement
    display_seats()
  } else if (choice == "2") {
    # reserve a seat
    movie_name <- readline(prompt = "\nEnter movie name: ")
    row_number <- as.integer(readline(prompt = "Enter row number: "))
    seat_number <- as.integer(readline(prompt = "Enter seat number: "))
    reserve_seat(movie_name, row_number, seat_number)
  } else if (choice == "3") {
    # exit program
    cat("\nThank you for using Movie Reservation System.\n")
    break}
   else {
    cat("\nInvalid choice, please choose again.\n")
  }
}

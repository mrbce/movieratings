movies = {
  "Spiderman 1" => 5,
  "Spiderman 2" => 5,
  "Spiderman 3" => 5,
  "Batman: The Dark Knight" => 4
}
puts "What would you like to do? "
choice = gets.chomp

case choice
  when "add"
    puts "What would you like to add? "
    title = gets.chomp
   if movies[title.to_sym].nil?
    puts "What would you rate it out of 5? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  else
    puts "Movie already exists!"
  end
 
  when "update"
    puts "What movie would you like to update? "
    title = gets.chomp
   if movies[title].nil?
    puts "Movie cannot be updated as doesn't exist."
   else
    puts "What is the new rating? "
     rating = gets.chomp
     movies[rating.to_sym]
   end
    
   when "display"
     movies.each do |movie, rating| puts "#{movie}: #{rating}"
   end
   
   when "delete"
     puts "What movie would you like to delete? "
     title = gets.chomp
   if movies[title].nil?
     puts "This movie cannot be deleted as it's not in the list."
   else
     movies.delete(title.to_sym)
     puts "Movie has been successfully deleted"
   end
  end

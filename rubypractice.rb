@list = ["Song1", "Song2"]

def menu()
    puts "****Song List****"
    puts "1) View all music"
    puts "2) Add Song"
    puts "3) Remove Song"
    
    user_choice = gets.to_i
    puts user_choice
end



menu

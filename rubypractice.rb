@list = ["Song1", "Song2"]

def menu()
    puts "****Song List Menu****"
    puts "1) View all music"
    puts "2) Add Song"
    puts "3) Remove Song"
    puts "4) Exit"
    
    @user_choice = gets.to_i
    puts @user_choice
    choice
end

def choice()
    case @user_choice
    when 1
        puts "Here are your Songs!"
        puts @list
    when 2
        puts "Please add song"
        @list << gets.to_s
        menu
    when 3
        puts "What song do you want to remove?"
    when 4
        puts "Good Bye!"
        exit
    end

def add_music()
    puts"****Please Add A Song****"
    @list << gets.to_i 
end

    menu
end



menu

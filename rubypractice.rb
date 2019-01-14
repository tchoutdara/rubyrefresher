@list = ["Song1", "Song2"]

def menu()
    puts "****Song List Menu****"
    puts "1) View all music"
    puts "2) Add Song"
    puts "3) Remove Song"
    
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
    when 3
        puts "What song do you want to remove?"
    end
    menu
end



menu
